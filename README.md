## Installing new plugins as submodules

Inside the .vim dir 'git submodule add http://github.com/user/foo.git bundle/foo'

## Installing dotvim on another machine

'''bash
cd ~
git clone http://github.com/username/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
cd ~/.vim
git submodule update --init
'''
## Updating a plugin bundle

'''bash
cd ~/.vim/bundle/fugitive
git pull origin master
'''

## Updating all bundled plugins

'git submodule foreach git pull origin master'

## Ignore changes in git submodules

For things like generated helptags etc. Add ignore=dirty to .gitmodules

'''
[submodule "bundle/fugitive"]
  path = bundle/fugitive
  url = git://github.com/tpope/vim-fugitive.git
  ignore = dirty
'''

[Source](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)
[Submodule Changes](http://www.nils-haldenwang.de/frameworks-and-tools/git/how-to-ignore-changes-in-git-submodules)