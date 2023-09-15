---@diagnostic disable: undefined-global

config.addonManager.enable        =
"Se l'addon manager è abilitato o meno."
config.runtime.version            =
"Versione del runtime di Lua."
config.runtime.path               =
[[
When using `require`, how to find the file based on the input name.
Setting this config to `?/init.lua` means that when you enter `require 'myfile'`, `${workspace}/myfile/init.lua` will be searched from the loaded files.
if `runtime.pathStrict` is `false`, `${workspace}/**/myfile/init.lua` will also be searched.
If you want to load files outside the workspace, you need to set `Lua.workspace.library` first.
]]
config.runtime.pathStrict         =
'When enabled, `runtime.path` will only search the first level of directories, see the description of `runtime.path`.'
config.runtime.special            =
[[The custom global variables are regarded as some special built-in variables, and the language server will provide special support
The following example shows that 'include' is treated as' require '.
```json
"Lua.runtime.special" : {
    "include" : "require"
}
```
]]
config.runtime.unicodeName        =
"Permetti caratteri Unicode nei nomi."
config.runtime.nonstandardSymbol  =
"Supporta simboli non-standard. Assicurati che il tuo ambiente di runtime supporti questi simboli." 
config.runtime.plugin             =
"Path del plugin. Leggi la [wiki](https://luals.github.io/wiki/plugins) per saperne di più."
config.runtime.pluginArgs         =
"Argomenti aggiuntivi per il plugin."
config.runtime.fileEncoding       =
"Encoding del File. L'opzione `ansi` è disponibile soltanto su piattaforma `Windows`."
config.runtime.builtin            =
[[
Adjust the enabled state of the built-in library. You can disable (or redefine) the non-existent library according to the actual runtime environment.

* `default`: Indicates that the library will be enabled or disabled according to the runtime version
* `enable`: always enable
* `disable`: always disable
]]
config.runtime.meta               =
'Formato del nome della cartella dei file di metadati.'
config.diagnostics.enable         =
"Abilita diagnostica."
config.diagnostics.disable        =
"Disabilita diagnostica (Use code in hover brackets)."
config.diagnostics.globals        =
"Variabili globali definite."
config.diagnostics.severity       =
[[
Modifica il livello di diagnostica.

Se termina con `!` sovrascrive l'impostazione del gruppo `diagnostics.groupSeverity`.
]]
config.diagnostics.neededFileStatus =
[[
* Aperto:  diagnostica solo i file aperti
* Tutti:   diagnostica tutti i file
* Nessuno:    disabilita la diagnostica

Se termina con `!` sovrascrive l'impostazione del gruppo `diagnostics.groupFileStatus`.
]]
config.diagnostics.groupSeverity  =
[[
Modifica il livello della diagnostica in un gruppo.
`Fallback` means that diagnostics in this group are controlled by `diagnostics.severity` separately.
Other settings will override individual settings without end of `!`.
]]
config.diagnostics.groupFileStatus =
[[
Modify the diagnostic needed file status in a group.

* Aperto:  diagnostica solo i file aperti
* Tutti:   diagnostica tutti i file
* Nessuno:    disabilita la diagnostica

`Fallback` means that diagnostics in this group are controlled by `diagnostics.neededFileStatus` separately.
Other settings will override individual settings without end of `!`.
]]
config.diagnostics.workspaceEvent =
"Imposta il tempo per attivare le diagnostiche sulla workspace."
config.diagnostics.workspaceEvent.OnChange =
"Attiva la diagnostica sulla workspace quando il contenuto del file cambia."
config.diagnostics.workspaceEvent.OnSave =
"Attiva la diagnostica sulla workspace quando il file viene salvato."
config.diagnostics.workspaceEvent.None =
"Disabilita la diagnostica sulla workspace."
config.diagnostics.workspaceDelay =
"Latenza (in millisecondi) per la diagnostica sulla workspace."
config.diagnostics.workspaceRate  =
"Workspace diagnostics run rate (%). Decreasing this value reduces CPU usage, but also reduces the speed of workspace diagnostics. The diagnosis of the file you are currently editing is always done at full speed and is not affected by this setting."
config.diagnostics.libraryFiles   =
"Come diagnosticare i file caricati via `Lua.workspace.library`."
config.diagnostics.libraryFiles.Enable   =
"Diagnostica sempre questi files."
config.diagnostics.libraryFiles.Opened   =
"Diagnostica solamente quando questi file sono aperti."
config.diagnostics.libraryFiles.Disable  =
"Questi file non sono diagnosticati."
config.diagnostics.ignoredFiles   =
"Come diagnosticare i file ignorati."
config.diagnostics.ignoredFiles.Enable   =
"Diagnostica sempre questi files."
config.diagnostics.ignoredFiles.Opened   =
"Diagnostica solamente quando questi file sono aperti."
config.diagnostics.ignoredFiles.Disable  =
"Questi file non sono diagnosticati."
config.diagnostics.disableScheme  =
'Non diagnosticare questi files Lua che usano lo schema seguente.'
config.diagnostics.unusedLocalExclude =
'Do not diagnose `unused-local` when the variable name matches the following pattern.'
config.workspace.ignoreDir        =
"Cartelle e file ignorati (usa la grammatica di `.gitignore`)."-- .. example.ignoreDir,
config.workspace.ignoreSubmodules =
"Ignora i sotto-moduli."
config.workspace.useGitIgnore     =
"Ignora i file listati in `.gitignore` ."
config.workspace.maxPreload       =
"Numero massimo di files precaricati."
config.workspace.preloadFileSize  =
"Ignora i file di dimensione più larga di tot. KB quando precaricati."
config.workspace.library          =
"In addition to the current workspace, which directories will load files from. The files in these directories will be treated as externally provided code libraries, and some features (such as renaming fields) will not modify these files."
config.workspace.checkThirdParty  =
[[
Rilevamento automatico ed adattamento di librerie di terze parti. Le librerie attulamente supportate sono:

* OpenResty
* Cocos4.0
* LÖVE
* LÖVR
* skynet
* Jass
]]
config.workspace.userThirdParty          =
'Add private third-party library configuration file paths here, please refer to the built-in [configuration file path](https://github.com/LuaLS/lua-language-server/tree/master/meta/3rd)'
config.workspace.supportScheme           =
'Fornisci un language server per i files Lua del seguente schema.' 
config.completion.enable                 =
'Abilita completamento.'
config.completion.callSnippet            =
'Shows function call snippets.'
config.completion.callSnippet.Disable    =
"Mostra solamente `function name`."
config.completion.callSnippet.Both       =
"Mostra `function name` e `call snippet`."
config.completion.callSnippet.Replace    =
"Mostra solamente `call snippet.`"
config.completion.keywordSnippet         =
'Shows keyword syntax snippets.'
config.completion.keywordSnippet.Disable =
"Mostra solamente `keyword`."
config.completion.keywordSnippet.Both    =
"Mostra `keyword` e `syntax snippet`."
config.completion.keywordSnippet.Replace =
"Mostra solamente `syntax snippet`."
config.completion.displayContext         =
"Previewing the relevant code snippet of the suggestion may help you understand the usage of the suggestion. The number set indicates the number of intercepted lines in the code fragment. If it is set to `0`, this feature can be disabled."
config.completion.workspaceWord          =
"Whether the displayed context word contains the content of other files in the workspace."
config.completion.showWord               =
"Show contextual words in suggestions."
config.completion.showWord.Enable        =
"Always show context words in suggestions."
config.completion.showWord.Fallback      =
"Contextual words are only displayed when suggestions based on semantics cannot be provided."
config.completion.showWord.Disable       =
"Do not display context words."
config.completion.autoRequire            =
"Quando l'input sembra un nome di un file, inserisci automaticamente lo statement `require` di questo file."
config.completion.showParams             =
"Display parameters in completion list. When the function has multiple definitions, they will be displayed separately."
config.completion.requireSeparator       =
"Il separatore usato quando si scrive `require`."
config.completion.postfix                =
"Il simbolo usato per attivare il suggerimento postfisso."
config.color.mode                        =
"Modalità colori."
config.color.mode.Semantic               =
"Semantic color. You may need to set `editor.semanticHighlighting.enabled` to `true` to take effect."
config.color.mode.SemanticEnhanced       =
"Enhanced semantic color. Like `Semantic`, but with additional analysis which might be more computationally expensive."
config.color.mode.Grammar                =
"Colore grammatica."
config.semantic.enable                   =
"Enable semantic color. You may need to set `editor.semanticHighlighting.enabled` to `true` to take effect."
config.semantic.variable                 =
"Semantic coloring of variables/fields/parameters."
config.semantic.annotation               =
"Semantic coloring of type annotations."
config.semantic.keyword                  =
"Semantic coloring of keywords/literals/operators. You only need to enable this feature if your editor cannot do syntax coloring."
config.signatureHelp.enable              =
"Enable signature help."
config.hover.enable                      =
"Abilita l'hover."
config.hover.viewString                  =
"Hover to view the contents of a string (only if the literal contains an escape character)."
config.hover.viewStringMax               =
"The maximum length of a hover to view the contents of a string."
config.hover.viewNumber                  =
"Sposta il cursore per visualizzare il contenuto numerico (solo se il letterale non è decimale)."
config.hover.fieldInfer                  =
"When hovering to view a table, type infer will be performed for each field. When the accumulated time of type infer reaches the set value (MS), the type infer of subsequent fields will be skipped."
config.hover.previewFields               =
"When hovering to view a table, limits the maximum number of previews for fields."
config.hover.enumsLimit                  =
"Quando il valore corrisponde a molteplici tipo, limita il numero di tipi mostrati."
config.hover.expandAlias                 =
[[
Whether to expand the alias. For example, expands `---@alias myType boolean|number` appears as `boolean|number`, otherwise it appears as `myType'.
]]
config.develop.enable                    =
'Modalità sviluppatore. Non abilitare, le performance saranno affette.'
config.develop.debuggerPort              =
'Porta di ascolto del debugger.'
config.develop.debuggerWait              =
'Sospendi prima che il debugger si connetta.'
config.intelliSense.searchDepth          =
'Set the search depth for IntelliSense. Increasing this value increases accuracy, but decreases performance. Different workspace have different tolerance for this setting. Please adjust it to the appropriate value.'
config.intelliSense.fastGlobal           =
'In the global variable completion, and view `_G` suspension prompt. This will slightly reduce the accuracy of type speculation, but it will have a significant performance improvement for projects that use a lot of global variables.'
config.window.statusBar                  =
'Mostra lo stato della estensione nella barra di stato.'
config.window.progressBar                =
'Mostra la barra di progresso nella barra di stato.'
config.hint.enable                       =
'Enable inlay hint.'
config.hint.paramType                    =
'Show type hints at the parameter of the function.'
config.hint.setType                      =
'Show hints of type at assignment operation.'
config.hint.paramName                    =
'Show hints of parameter name at the function call.'
config.hint.paramName.All                =
'All types of parameters are shown.'
config.hint.paramName.Literal            =
'Only literal type parameters are shown.'
config.hint.paramName.Disable            =
'Disabilita suggerimenti sui parametri.'
config.hint.arrayIndex                   =
'Show hints of array index when constructing a table.'
config.hint.arrayIndex.Enable            =
'Mostra suggerimenti in tutte le tabelle.'
config.hint.arrayIndex.Auto              =
'Show hints only when the table is greater than 3 items, or the table is a mixed table.'
config.hint.arrayIndex.Disable           =
'Disabilita suggerimenti per gli indici di array.'
config.hint.await                        =
'If the called function is marked `---@async`, prompt `await` at the call.'
config.hint.semicolon                    =
'Se non c\'è un punto e virgola alla fine dello statment, mostrane uno virtuale.'
config.hint.semicolon.All                =
'Tutti gli statements mostrano "punti e virgola" virtuali.'
config.hint.semicolon.SameLine            =
'Quando due statements sono sulla stessa linea, mostra un "punto e virgola" virtuale.'
config.hint.semicolon.Disable            =
'Disabilita "punto e virgola" virtuali.'
config.codeLens.enable                   =
'Abilita lenti sul codice.'
config.format.enable                     =
'Abilita il formattatore del codice.'
config.format.defaultConfig              =
[[
The default format configuration. Has a lower priority than `.editorconfig` file in the workspace.
Read [formatter docs](https://github.com/CppCXY/EmmyLuaCodeStyle/tree/master/docs) to learn usage.
]]
config.spell.dict                        =
'Parole personalizzate per il controllo ortografico.'
config.nameStyle.config                  =
'Imposta un nome per lo stile di configurazione'
config.telemetry.enable                  =
[[
Abilita telemetria per mandare informazioni ed errori dell'editor via rete. Leggi la nostra policy sulla privacy [qui](https://luals.github.io/privacy/#language-server).
]]
config.misc.parameters                   =
'[Command line parameters](https://github.com/LuaLS/lua-telemetry-server/tree/master/method) when starting the language server in VSCode.'
config.misc.executablePath               =
'Specifica il percorso dell\' eseguibile in VSCode.'
config.type.castNumberToInteger          =
'Permetti di assegnare il tipo `number` al tipo `integer`.'
config.type.weakUnionCheck               =
[[
Once one subtype of a union type meets the condition, the union type also meets the condition.

When this setting is `false`, the `number|boolean` type cannot be assigned to the `number` type. It can be with `true`.
]]
config.type.weakNilCheck                 =
[[
When checking the type of union type, ignore the `nil` in it.

When this setting is `false`, the `number|nil` type cannot be assigned to the `number` type. It can be with `true`.
]]
config.doc.privateName                   =
'Treat specific field names as private, e.g. `m_*` means `XXX.m_id` and `XXX.m_type` are private, witch can only be accessed in the class where the definition is located.'
config.doc.protectedName                 =
'Treat specific field names as protected, e.g. `m_*` means `XXX.m_id` and `XXX.m_type` are protected, witch can only be accessed in the class where the definition is located and its subclasses.'
config.doc.packageName                   =
'Treat specific field names as package, e.g. `m_*` means `XXX.m_id` and `XXX.m_type` are package, witch can only be accessed in the file where the definition is located.'
config.diagnostics['unused-local']          =
'Abilita la diagnostica su variabili locali non utilizzate.'
config.diagnostics['unused-function']       =
'Abilita la diagnostica su funzioni non utilizzate.'
config.diagnostics['undefined-global']      =
'Abilita la diagnostica su variabili globali non definite.'
config.diagnostics['global-in-nil-env']     =
'Enable cannot use global variables （ `_ENV` is set to `nil`） diagnostics.'
config.diagnostics['unused-label']          =
'Abilita la diagnostica su etichette non utilizzate.'
config.diagnostics['unused-vararg']         =
'Abilita la diagnostica su vararg non utilizzate.'
config.diagnostics['trailing-space']        =
'Enable trailing space diagnostics.'
config.diagnostics['redefined-local']       =
'Abilita la diagnostica su variabili locali re-definite.'
config.diagnostics['newline-call']          =
'Enable newline call diagnostics. Is\'s raised when a line starting with `(` is encountered, which is syntactically parsed as a function call on the previous line.'
config.diagnostics['newfield-call']         =
'Enable newfield call diagnostics. It is raised when the parenthesis of a function call appear on the following line when defining a field in a table.'
config.diagnostics['redundant-parameter']   =
'Enable redundant function parameter diagnostics.'
config.diagnostics['ambiguity-1']           =
'Enable ambiguous operator precedence diagnostics. For example, the `num or 0 + 1` expression will be suggested `(num or 0) + 1` instead.'
config.diagnostics['lowercase-global']      =
'Enable lowercase global variable definition diagnostics.'
config.diagnostics['undefined-env-child']   =
'Enable undefined environment variable diagnostics. It\'s raised when `_ENV` table is set to a new literal table, but the used global variable is no longer present in the global environment.'
config.diagnostics['duplicate-index']       =
'Enable duplicate table index diagnostics.'
config.diagnostics['empty-block']           =
'Enable empty code block diagnostics.'
config.diagnostics['redundant-value']       =
'Enable the redundant values assigned diagnostics. It\'s raised during assignment operation, when the number of values is higher than the number of objects being assigned.'
config.diagnostics['assign-type-mismatch']  =
'Enable diagnostics for assignments in which the value\'s type does not match the type of the assigned variable.'
config.diagnostics['await-in-sync']         =
'Enable diagnostics for calls of asynchronous functions within a synchronous function.'
config.diagnostics['cast-local-type']    =
'Enable diagnostics for casts of local variables where the target type does not match the defined type.'
config.diagnostics['cast-type-mismatch']    =
'Enable diagnostics for casts where the target type does not match the initial type.'
config.diagnostics['circular-doc-class']    =
'Enable diagnostics for two classes inheriting from each other introducing a circular relation.'
config.diagnostics['close-non-object']      =
'Enable diagnostics for attempts to close a variable with a non-object.'
config.diagnostics['code-after-break']      =
'Enable diagnostics for code placed after a break statement in a loop.'
config.diagnostics['codestyle-check']       =
'Enable diagnostics for incorrectly styled lines.'
config.diagnostics['count-down-loop']       =
'Enable diagnostics for `for` loops which will never reach their max/limit because the loop is incrementing instead of decrementing.'
config.diagnostics['deprecated']            =
'Enable diagnostics to highlight deprecated API.'
config.diagnostics['different-requires']    =
'Enable diagnostics for files which are required by two different paths.'
config.diagnostics['discard-returns']       =
'Enable diagnostics for calls of functions annotated with `---@nodiscard` where the return values are ignored.'
config.diagnostics['doc-field-no-class']    =
'Enable diagnostics to highlight a field annotation without a defining class annotation.'
config.diagnostics['duplicate-doc-alias']   =
'Enable diagnostics for a duplicated alias annotation name.'
config.diagnostics['duplicate-doc-field']   =
'Enable diagnostics for a duplicated field annotation name.'
config.diagnostics['duplicate-doc-param']   =
'Enable diagnostics for a duplicated param annotation name.'
config.diagnostics['duplicate-set-field']   =
'Enable diagnostics for setting the same field in a class more than once.'
config.diagnostics['incomplete-signature-doc']    =
'Incomplete @param or @return annotations for functions.'
config.diagnostics['invisible']             =
'Enable diagnostics for accesses to fields which are invisible.'
config.diagnostics['missing-global-doc']    =
'Missing annotations for globals! Global functions must have a comment and annotations for all parameters and return values.'
config.diagnostics['missing-local-export-doc'] =
'Missing annotations for exported locals! Exported local functions must have a comment and annotations for all parameters and return values.'
config.diagnostics['missing-parameter']     =
'Enable diagnostics for function calls where the number of arguments is less than the number of annotated function parameters.'
config.diagnostics['missing-return']        =
'Enable diagnostics for functions with return annotations which have no return statement.'
config.diagnostics['missing-return-value']  =
'Enable diagnostics for return statements without values although the containing function declares returns.'
config.diagnostics['need-check-nil']        =
'Enable diagnostics for variable usages if `nil` or an optional (potentially `nil`) value was assigned to the variable before.'
config.diagnostics['no-unknown']            =
'Enable diagnostics for cases in which the type cannot be inferred.'
config.diagnostics['not-yieldable']         =
'Enable diagnostics for calls to `coroutine.yield()` when it is not permitted.'
config.diagnostics['param-type-mismatch']   =
'Enable diagnostics for function calls where the type of a provided parameter does not match the type of the annotated function definition.'
config.diagnostics['redundant-return']      =
'Enable diagnostics for return statements which are not needed because the function would exit on its own.'
config.diagnostics['redundant-return-value']=
'Enable diagnostics for return statements which return an extra value which is not specified by a return annotation.'
config.diagnostics['return-type-mismatch']  =
'Enable diagnostics for return values whose type does not match the type declared in the corresponding return annotation.'
config.diagnostics['spell-check']           =
'Abilita la diagnostica per errori grammaticali nelle stringhe.'
config.diagnostics['name-style-check']      =
'Abilita la diagnostica per lo stile dei nomi.'
config.diagnostics['unbalanced-assignments']=
'Abilita la diagnostica su assegnamenti multipli se non tutte le variabili assumono un valore (e.g., `local x,y = 1`).'
config.diagnostics['undefined-doc-class']   =
'Abilita la diagnostica per le annotazioni sulle classi nelle quali una classe non definita è menzionata.'
config.diagnostics['undefined-doc-name']    =
'Abilita la diagnostica per le annotazioni sui tipo quando menzionano un tipo od un alias non definito.'
config.diagnostics['undefined-doc-param']   =
'Enable diagnostics for cases in which a parameter annotation is given without declaring the parameter in the function definition.'
config.diagnostics['undefined-field']       =
'Abilita la diagnostica nei casi in cui un field o una variabile non definita viene letta.'
config.diagnostics['unknown-cast-variable'] =
'Abilita la diagnostica per casting di variabili non definite.'
config.diagnostics['unknown-diag-code']     =
'Abilita la diagnostica nei casi in cui viene inserito un codice di diagnostica sconosciuto.'
config.diagnostics['unknown-operator']      =
'Abilita la diagnostica per operatori sconosciuti.'
config.diagnostics['unreachable-code']      =
'Abilita la diagnostica per codice non raggiungibile.'
config.diagnostics['global-element']       =
'Abilita la diagnostica per avvertire sugli elementi globali.'
config.typeFormat.config                    =
'Confgiura il comportamento della formattazione mentre scrivi codice Lua.'
config.typeFormat.config.auto_complete_end  =
'Controlla se la keyword `end` viene completata automaticamente nelle posizioni adeguate.'
config.typeFormat.config.auto_complete_table_sep =
'Controlla se un separatore è aggiunto automaticamente alla fine della dichiarazione di una tabella.'
config.typeFormat.config.format_line        =
'Controlla sempre se una riga è formattata.'

command.exportDocument =
'Lua: Esporta Documento ...'
command.addon_manager.open =
'Lua: Apri Addon Manager ...'
command.reloadFFIMeta =
'Lua: Ricarica luajit ffi meta'
