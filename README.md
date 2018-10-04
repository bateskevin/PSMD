# PSMD
write Markdown documents in Powershell

### Appveyor
| Name        | Status           |
|---------------|-------------| 
| Status      | [![Master](https://ci.appveyor.com/api/projects/status/bpaj88j9pqjxia0a/branch/master?svg=true&passingText=Overall%20-%20OK)](https://ci.appveyor.com/project/bateskevin/psmd/branch/master)  | 
| Master Branch      | [![Build status](https://ci.appveyor.com/api/projects/status/bpaj88j9pqjxia0a/branch/Master?svg=true)](https://ci.appveyor.com/project/bateskevin/psmd/branch/master)      |
| Dev Branch      | [![Build status](https://ci.appveyor.com/api/projects/status/bpaj88j9pqjxia0a/branch/Dev?svg=true)](https://ci.appveyor.com/project/bateskevin/psmd/branch/Dev)      |
| Current Build      | [![Build status](https://ci.appveyor.com/api/projects/status/bpaj88j9pqjxia0a?svg=true)](https://ci.appveyor.com/project/bateskevin/psd)      |
| Test Status      | ![AppVeyor tests branch](https://img.shields.io/appveyor/tests/bateskevin/PSMD/master.svg)      |
| Code Coverage      | ![Test Coverage](https://img.shields.io/badge/coverage-100%25-brightgreen.svg?maxAge=60)      |

### Wanna learn how it's done?
Check out [this document](Docs/Sample.md) to learn how to use PSMD.

#### Try it out yourself!

Install the Module from the Powershell Gallery

```
Install-Module PSMD
```
And don't forget to use the following Code to import the module. (The Module contains Classes.)
```
Import-Module PSMD
```

## Class design

This module is class based. Find here under the current Class Diagram.

![ClassDiagram](/Images/ClassDiagram.png)

To see how the Class Diagramm is created be sure to checkout [PSClassUtils](https://github.com/Stephanevg/PSClassUtils) by Stephanevg

### To do Base Functionality:

- [X] BulletPoint
- [X] CheckListItem
- [X] CodeBlock
- [X] Image
- [X] Link
- [X] OrderedListItem
- [X] Paragraph
- [X] Title
- [X] BlockQuote
- [X] Tables

### Roadmap

The current plan for this project is, that it will support all markdown base functionality. 

The next steps are:

- [X] Write remaning functions for base functionality.
- [X] Add option to add styles to sections. 
- [X] Upload to the PS Gallery \o/

This will maybe come in the future:

* Support for multiple flavors of Markdown.


### Contribute

Wanna contribute? please take a look at these files before you start:

* [Code of Conduct](Docs/CODE_OF_CONDUCT.md)
* [Contribution Guide](Docs/CONTRIBUTING.md)

### Licencing

This Project is licenced under the [MIT Licence](Docs/LICENSE)
