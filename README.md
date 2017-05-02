# Dot.minatrix
**The Bad Monkey Dev does the naughty dotfile thing**

This is my dotfile project based largely on [Zach Holman](https://github.com/holman)'s
now-famous [dotfiles](https://github.com/holman/dotfiles) project rebuilt to cover
my needs on an Ubuntu/Bash/Vim based environment.

I agree with his philosophy on this topic, if you're interested in that kind
of thing you should check out his [article on the topic](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## Topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## What's Inside

> A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser
> above and see what components may mesh up with you.
> [Fork it](https://github.com/holman/dotfiles/fork), remove what you don't
> use, and build on what you do use.

To be more specific, my environment is the Debian-based Ubuntu Linux distribution
using bash, tmux, and vim for primarily Ruby on Rails web development.  A lot the
system packages that I use like PostgresQL, Redis, Elasticsearch, etc. are not setup
to be installed by this project yet (_mostly because I haven't needed to setup a
new environment yet_).

## Components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **packages.bash**: This is a list of packages to install to install: things like Chrome and
  1Password and PostgresQL and stuff. Might want to edit this file before running any initial
  setup.
- **topic/\*.bash**: Any files ending in `.bash` get loaded into your
  environment.
- **topic/install**: Any file named `install` that is executable is executed when you run
  `script/install`. To avoid being loaded automatically.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## Install

Clone the repository to your home directory (_currently you must clone the project to
`~/dot.minatrix`.  This will be configurable in the future_) and run the install script:

```sh
git clone https://github.com/holman/dotfiles.git ~/dot.minatrix
cd ~/dot.minatrix
script/install
```

This will symlink the appropriate files in `dot.minatrix` to your home directory.
Everything is configured and tweaked within `~/dot.minatrix`.

The main file you'll want to change right off the bat is check out `bash/bashrc.symlink`
to tweak it to your specific needs.

`udot` is a simple script that installs some dependencies. Tweak this script, and
occasionally run `udot` from time to time to keep your environment fresh and up-to-date.
You can find this script in `bin/`.

## Bugs

> I want this to work for everyone; that means when you clone it down it should
> work for you even though you may not have `rbenv` installed, for example. That
> said, I do use this as *my* dotfiles, so there's a good chance I may break
> something if I forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please
[open an issue](https://github.com/thebadmonkeydev/dot.minatrix/issues) on this repository
and I'd love to get it fixed for you!

## Thanks

I originally forked [Zach Holman](https://github.com/holman)'s impressive
[dotfiles](https://github.com/holman/dotfiles) project and began working on
migrating it to my needs in Bash and Linux. However, it became clear that the
amount of changes necessary really warranted a new repository. However, I did
start with his project and there's still some of his scripting in there. Thanks!
