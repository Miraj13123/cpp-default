# unfinished project !!
## Folder Structure
The workspace contains two folders by default, where:
- `src`: the folder to maintain sources
- `lib`: the folder to maintain dependencies

## How to run in you [linux:bash] / [windows:cmd/pwsh]
### You must have clang compiler in your system and the bin folder of the compiler must be added to the environment PATH variable

run these bat[windows] or bash[linux] script in this order
- clear [ clears the previous compiled objects(if exists) and binary files ]
- compile [ compiles the "\*.cpp" files --> "app" file ][or maybe not]
- run  [ starting with this will work; cause the compiled binary is given ]

## you can also run dev.sh to run all 3 at once !!

after compiling it is recommended to run the console app by :
```bash
./app
```
instead of ./run.sh
```
cause, this way you can pass arguments to the app
like --> ./app apple
here             ^   "apple" is passed to the app when running
```
 
---
# Clang Setup - most beginer friendly compiler
---
## [Windows - Setup](PAGE.md)
## [Linux(ubuntu) - Setup](PAGE2.md)
---