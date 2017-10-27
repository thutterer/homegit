# homegit

Make yourself at home with the power of Git alone ... and this alias:

```bash
alias homegit="GIT_DIR=~/.homegit/.git GIT_WORK_TREE=~ git"
```

## Setup

You probably want to start a new repository for your own dotfiles:

```bash
mkdir ~/.homegit
homegit init
echo "*\n\!.gitignore" > ~/.gitignore
homegit add .gitignore
homegit commit -m "ignorance is bliss"
```

Use `homegit` to `add -f` and `commit` your files.

Create a [new repository](https://github.com/new) on GitHub and `homegit push` to it.

Whenever you want to make yourself at home at a new place, set up the alias and do:

```bash
# replace the repository URL with yours
git clone https://github.com/thutterer/homegit.git ~/.homegit
```
