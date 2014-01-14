## 'Installing' dotvim

```bash
curl -L https://raw.github.com/clifferson/dotvim/master/install.sh | sh
```
This will clone the git repo to ~/.vim and symlink the vimrc and gvimrc files to ~
## Adding new plugins as submodules

In  ~/.vim 
```bash
git submodule add http://github.com/user/foo.git bundle/foo
git commit -m "add foo plugin as submodule"
```

## Updating a plugin bundle

```bash
cd ~/.vim/bundle/fugitive
git pull origin master
```

## Updating all bundled plugins

`git submodule foreach git pull origin master`  
`git add . && git commit -m "update submodules"`

## Ignore changes in git submodules

For things like generated helptags etc. Add ignore=dirty to .gitmodules

```
[submodule "bundle/fugitive"]
  path = bundle/fugitive
  url = git://github.com/tpope/vim-fugitive.git
  ignore = dirty
```

## More infos

* [Plugins as submodules](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)
* [Ignore submodule changes](http://www.nils-haldenwang.de/frameworks-and-tools/git/how-to-ignore-changes-in-git-submodules)
