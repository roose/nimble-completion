$nimbleCmds = @(
    "install",
    "develop",
    "check",
    "init",
    "publish",
    "uninstall",
    "build",
    "run",
    "test",
    "doc",
    "refresh",
    "search"
    "list"
    "tasks"
    "path"
    "dump"
)

Register-ArgumentCompleter -Native -CommandName nimble -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)
    $nimbleCmds |
        Where-Object { $_ -like "$wordToComplete*" } |
        Sort-Object |
        ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
}