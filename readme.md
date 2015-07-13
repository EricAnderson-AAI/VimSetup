## Installing plugins

On windows clone this repo in your %USERPROFILE% and rename the directory to **vimfiles**
then **cd** to the **bundle** directory and clone the following repos:

[NerdTree](https://github.com/scrooloose/nerdtree.git)

[Python Mode](https://github.com/klen/python-mode.git)

[Syntastic](https://github.com/scrooloose/syntastic.git)

[Vim Fugitive](https://github.com/tpope/vim-fugitive.git)

[Vim Powerline](https://github.com/Lokaltog/vim-powerline.git)

[Ag vim](https://github.com/rking/ag.vim)

[Vim Airline](https://github.com/bling/vim-airline)

[Surround vim](https://github.com/tpope/vim-surround)

## Powerline fonts

Clone the following repo and put the fonts in the proper directory:

[Powerline Fonts](https://github.com/powerline/fonts.git)

## Cmder setup

Add the following to the {cmd} task:

cmd /k "%ConEmuDir%\..\init.bat"  -new_console:d:%USERPROFILE%

-cur_console:d:%USERPROFILE% cmd /k "%ConEmuDir%\..\init.bat" -cur_console:n:sT25V

-cur_console:d:%USERPROFILE% cmd /k "%ConEmuDir%\..\init.bat" -cur_console:n:sT50H

// Comment out the following line

-cur_console:d:%USERPROFILE% cmd /k "%ConEmuDir%\..\init.bat" -cur_console:n:sT50H
