# STOW My DotFiles
Using Stow to synchronize MyDotfiles across the machines.

## Table of Contents
  - [How Stow Works](#how-stow-works)
  - [Using this file with stow](#using-this-file-with-stow)
  - [Adding More or Creating Stows](#adding-more-or-creating-stows)


---
## How Stow Works

1. Install stow
2. Naming Convention

    | Source Directory (dotfile)        | Stowed Director (gnustow)             |
    |--------------------------|-------------------------------|
    | `~/.config/nvim/`       | `nvim/.config/nvim`          |
    | `~/.config/kitty/`      | `kitty/.config/kitty`        |
    | `~/.zshrc`              | `zsh/.zshrc`                 |

3. Move default configs to gnu stow directory
   
    `mv ~/.config/nvim ~/MyDotfiles/nvim/.config`

4. Now select the packages you want to stow in current machine
5. And stow
    
    stow "name of the package"
    
    `stow nvim`

---

> 💡 Your Home (~) folder is equivalent to your MyDotFiles, and folders in MyDotFiles will be packages

>💡 Example: in .zshrc, zsh is your package name and since it is stored in ~ , its directly stored inside package

## Using this file with stow
1. Clone this repo

2. cd to this directory (Make sure you are inside this directory)
  
    `cd MyDotFiles`

3. stow each package you need
  
    `stow zsh`
    
    `stow kitty`

## Adding More or Creating Stows

1. Create a new directory
2. Create new folders inside directory, these folders are the package names
3. Move config files to each of these packages.
  example: 

    `mv ~/.zshrc ~/MyDotfiles/zsh/`
    
    `mv ~/.config/nvim ~/MyDotfiles/nvim/.config`

> 💡 Creating <mark>.config</mark> inside packages will make it easy to symlink by simply writing "stow $PackageName"

> ⛔ Before you Publish or Share your configs make sure all your <mark>Secrets</mark> are safe. 
---
