local util      = require 'utility'
local cap       = require 'proto.capability'
local pub       = require 'pub'
local task      = require 'task'
local files     = require 'files'
local proto     = require 'proto.proto'
local inte      = require 'proto.interface'
local workspace = require 'workspace'

proto.on('initialize', function (params)
    --log.debug(util.dump(params))
    if params.workspaceFolders then
        local name = params.workspaceFolders[1].name
        local uri  = params.workspaceFolders[1].uri
        workspace.init(name, uri)
        task.create(function ()
            workspace.preload()
        end)
    end
    return {
        capabilities = cap.initer,
    }
end)

proto.on('initialized', function (params)
    return true
end)

proto.on('exit', function ()
    log.info('Server exited.')
    os.exit(true)
end)

proto.on('shutdown', function ()
    log.info('Server shutdown.')
    return true
end)

proto.on('textDocument/didOpen', function (params)
    local doc   = params.textDocument
    local uri   = doc.uri
    local text  = doc.text
    files.open(uri)
    files.setText(uri, text)
end)

proto.on('textDocument/didClose', function (params)
    local doc   = params.textDocument
    local uri   = doc.uri
    files.close(uri)
end)

proto.on('textDocument/didChange', function (params)
    local doc    = params.textDocument
    local change = params.contentChanges
    local uri    = doc.uri
    local text   = change[1].text
    files.setText(uri, text)
end)

proto.on('textDocument/hover', function ()
    return {
        contents = {
            value = 'Hello loli!',
            kind  = 'markdown',
        }
    }
end)

proto.on('textDocument/definition', function (params)
    local core   = require 'core.definition'
    local uri    = params.textDocument.uri
    local ast    = files.getAst(uri)
    if not ast then
        return nil
    end
    local text   = files.getText(uri)
    local offset = inte.offset(ast.lines, text, params.position)
    local result = core(ast, text, offset)
    if not result then
        return nil
    end
    local response = {}
    for i, info in ipairs(result) do
        response[i] = inte.locationLink(info.uri
            , inte.range(ast.lines, text, info.target.start - 1, info.target.finish)
            , inte.range(ast.lines, text, info.target.start - 1, info.target.finish)
            , inte.range(ast.lines, text, info.source.start - 1, info.source.finish)
        )
    end
    return response
end)
