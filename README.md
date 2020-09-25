# Sudoku-Game

## Table of contents
* [Installation](#installation)
* [Sudoku](#sudoku)
    * [Introduction](#introduction)
    * [Usage](#usage)
    * [Demo](#demo)
    
## Installation
- It's required to install [ruby 2.7.0](https://www.ruby-lang.org/en/documentation/installation/)

    - If already installed try to get version Using *Comamnd* 
    ```bash 
    ruby -v
    ```
- It's prefered to install [pry on Ruby](https://www.sitepoint.com/pry-a-simple-start/#:~:text=To%20start%20pry%2C%20simply%20type,the%20Rails%20console%20with%20Pry.)
    - If already installed try to get version Using *Comamnd* 
    ```bash 
    pry -v
    ```
- You also may need to install this [Colorize package](https://github.com/fazibear/colorize) for advanced UI colors

    ```bash
    gem install colorize
    ```
    
# Sudoku

## Introduction
This is a Ruby version of **Sudoku** Game :D

<img alt="Todo-Board" src="https://image.shutterstock.com/image-vector/sudoku-puzzle-game-vector-numbers-260nw-411301252.jpg" width="500">

## Usage 

> **_NOTE:_** Make sure you are in the same directory of project files

open `CMD` or `Terminal`, and `cd` to the project directory

In trermial write 

```bash
pry
```
then in pry write

```ruby
load 'Sudoku_Game.rb'
g = SudokuGame.new
g.play
```
It works!! :smiley:

## Demo 

```ruby
       3 |    2    | 6       |
 9       | 3     5 |       1 |
       1 | 8     6 | 4       |
------------------------------
       8 | 1     2 | 9       |
 7       |         |       8 |
       6 | 7     8 | 2       |
------------------------------
       2 | 6     9 | 5       |
 8       | 2     3 |       9 |
       5 |    1    | 3       |
------------------------------
Enter a position of tile Ex.`0 2`: 0 1
Enter a new value for the tile Ex.`5`: 4

    4  3 |    2    | 6       |
 9       | 3     5 |       1 |
       1 | 8     6 | 4       |
------------------------------
       8 | 1     2 | 9       |
 7       |         |       8 |
       6 | 7     8 | 2       |
------------------------------
       2 | 6     9 | 5       |
 8       | 2     3 |       9 |
       5 |    1    | 3       |
------------------------------
Enter a position of tile Ex.`0 2`: 
```
