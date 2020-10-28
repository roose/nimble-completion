# nimble-completion

<p>
  <img alt="Version" src="https://img.shields.io/badge/version-1.0.0-blue.svg?cacheSeconds=2592000" />
  <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
</p>


> Provides tab completion for nimble commands

## Prerequisites

* [scoop](https://github.com/lukesampson/scoop)
* [PowerShell 5](https://aka.ms/wmf5download) (or later, include [PowerShell Core](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-windows?view=powershell-6))

## Install

First add custom bucket and install completion:

```powershell
# add auto-update bucket
scoop bucket add scoop-tools https://github.com/roose/scoop-tools

# install
scoop install nimble-completion
```

then, add to profile:

```powershell
# add to you powershell profile
Import-Module "$($(Get-Item $(Get-Command scoop).Path).Directory.Parent.FullName)\modules\nimble-completion"
```

## Usage

Type `nimble [something]` and press <kbd>Tab</kbd> key will cycle completion items, <kbd>Ctrl</kbd>+<kbd>Space</kbd> will trigger menu-completion.

Example:

```powershell
nimble s[Press Tab]
nimble d[Press Ctrl+Space]
```

