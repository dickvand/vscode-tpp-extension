
# Fanuc TP-Plus Language Syntax Highlighter

This is a syntax highlighter for the [TP+ abstraction language](https://github.com/onerobotics/tp_plus) for Fanuc robot controllers written by onerobotics.

## Features

### color theme

A special color theme was created for viewing TP+ files called **tpp-vs-dark**.

<p float="left">
  <img src="img/theme01.png" width="36%" />
  <img src="img/theme02.png" width="41%" /> 
</p>

### extension commands

------

* Interpret TPP
  * invokes "tpp file.tpp -o file.ls" in intregrated terminal
* Interpret TPP with environment
  * same as 'Interpret TPP' but requires an environment variable file (i.e. "tpp file.tpp -o file.ls -e env.tpp"). This varible file is declared in a *package.json* file in the **same** directory as the .tpp file being interpreted.
* Send LS files to robot
  * sends all *.ls* files in the subdirectory **./ls** to the robots ftp address defined in *package.json*.

------

In order to use the extension commands a *package.json* file should be created in the same directory as the *.tpp* files you are translating into *.ls* files. The *package.json* file should be formatted like the following:

```json
{
    "project" : "Test-project",
    "description" : "Test project for vscode extension",
    "version" : "0.0.1",
    "license" : "MIT",
    "author" : "kobbled",
    "environment" : "./vars.tpp",
    "ftp"    : "127.0.0.1"
}
```

The extension relies on the keys *"environment"*, and *"ftp"* to be properly set in order to use all of the commands.

The file structure of the tpp files, the package.json file, variable files, and their translated *.ls* files should be as follows:
```
P1_data/
├── package.json
├── vars.tpp
├── file1.tpp
├── file2.tpp
└──  ls/
    ├── file1.ls
    └── file2.ls
    └── ftpcmds.txt
```

## Requirements

- This package depends on on The TP+ abstraction language which can be downloaded at:
https://github.com/onerobotics/tp_plus

- Make sure that the gem installs correctly, the ruby bin is in your PATH variables, and 'tpp' can be invoked from the terminal. Extension commands will use the integrated terminal in vscode and use the 'tpp' command.

- vscode > 1.33.0

- TP+ and this extension were only test on a windows machine. While it is possible to run TP+ on linux or mac, it is not recommended as Fanuc software is only available for windows. 

## known issues

- issues can be found on the [vscode-tpp-extension](https://github.com/kobbled/vscode-tpp-extension/issues) github repo.