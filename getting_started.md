Learn 2 Code Exercises
======================

This repository contains exercises to be completed in a classroom setting with
an experienced facilitator or mentor.

This repository alone will not provide the best teaching tool, it instead
aims to provide:

- Supplementary demo material (for lecturers, not self-explanatory)
- Exercises for students to put learned concepts into practice


Facilitating a Course
---------------------

The goal of this course is to teach students the _fundamentals_ of programming
only!

At the end of this course you should have a grasp of the basic building blocks
of making a program. You won't learn all the skills required to make a website
or a mobile app, instead we will be focusing on command line tools only.

Upon completing this course, these basic building blocks should give students a
good starting point to pursuit coding in a technology that interests them.


Installing a Ruby dev environment on Windows
--------------------------------------------

Installing ruby on Windows can be confusing and then using the default `cmd` in
Windows is painful. Using ConEmu allows you to do amazing things like resize the
window and copy-and-paste. Following these steps should result in a decent
terminal with unix-y commands, ruby and git available on the command line.

Install the following:

- https://rubyinstaller.org/
- https://git-scm.com/download/win
- https://conemu.github.io/

Then configure ConEmu to open Bash::Git bash by default


Installing a Ruby dev environment on OSX
----------------------------------------

As a developer, you'll likely be using the terminal a lot. Your Mac comes with a
terminal that we are going to use for now (later we'll replace the built in
terminal with a better one).

To get started, press `⌘`+`space`, type `terminal` and press `enter`.

The following commands will need to be entered in the terminal.


### Homebrew

[Homebrew](https://brew.sh) is like the Apps Store but for your terminal, lets
start by installing that:

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

This provides a new command: `brew`


### Using `brew` to get some tools

```
brew install ruby-install chruby git cask
```

The line above installs the following tools:

`ruby-install` - a tool that lets you choose which version of ruby to install

`chruby` - a tool that lets you switch between installed versions of ruby

`git` - a tool that lets you save multiple versions of your code (... and much more)

`cask` - an addon for `brew` that lets you install Mac apps too


### Using `brew cask` to get some apps

```
brew cask install iterm2 visual-studio-code
```

The line above installs the following apps:

`iTerm2` - a better terminal app `visual-studio-code` - a powerful text editor
for writing code


### Using `ruby-install` to download and install the latest version of `ruby`

```
ruby-install ruby --no-reinstall
```

Once this is done, we need to configure your computer to use this new version of
ruby. Note, at the time of writing, the latest version is `2.5.1`. If a newer
ruby is available it will be installed above but you'll need to change the
version number below to make it your default version.

```
echo "source /usr/local/opt/chruby/share/chruby/chruby.sh" >> .bash_profile
echo "source /usr/local/opt/chruby/share/chruby/auto.sh" >> .bash_profile
echo "chruby 2.5.1" >> .bash_profile
```


### Switch to iTerm2

At this point, you can close the Terminal app and launch the iTerm2 app.

Press `⌘`+`space`, type `iTerm2` and press `enter`.

The following command should print out the latest version number of ruby:

```
ruby -v
```


### Using `gem` to get some gems

Ruby comes with a tool called `gem` which allows you to download packages.

Lets install a couple now to ensure everything it working:

```
gem install bundle pry nokogiri
```

The line above installs the following gems:

`bundler` - used by most applications to manage which gems your project uses

`pry` - a nicer placement for `irb`

`nokogiri` - a XML and HTML parser, we dont really need this but installing it
is a good test of `gem`
