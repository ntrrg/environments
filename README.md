<p align="center">
  <img alt="NtEnvsjs"
    src="https://farm5.staticflickr.com/4766/25403022337_ec5c7117f0_m_d.jpg"/>
</p>

<p align="center">
  <strong>N</strong>oob
  <strong>t</strong>ools for
  development <strong>Env</strong>ironment<strong>s</strong>
</p>

[![Version](https://img.shields.io/badge/version-0.1.0-blue.svg)](https://github.com/ntrrg/ntenvs/releases/tag/0.1.0)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/ntrrg/ntenvs/raw/master/LICENSE)
[![Build Status](https://travis-ci.org/ntrrg/ntenvs.svg?branch=master)](https://travis-ci.org/ntrrg/ntenvs)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/0c4d0af32a7f4ebcb13c066a606b4d22)](https://www.codacy.com/app/ntrrg/ntenvs?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=ntrrg/ntenvs&amp;utm_campaign=Badge_Grade)
[![BCH compliance](https://bettercodehub.com/edge/badge/ntrrg/ntenvs?branch=master)](https://bettercodehub.com/results/ntrrg/ntenvs)
[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/1644/badge)](https://bestpractices.coreinfrastructure.org/projects/1644)

---

**WARNING:** This project was created for personal usage and learning purpose, use this [other tools](#use-instead) instead, which were written by better developers than me. 😂

---

Sometimes, I think that using the existing tools for managing programming languages, projects structures, containers, VMs and others things like that are more complicated than a 10x10x10 Rubik Cube, just kidding 😅😂 but really, sometimes:

* I want to use the latest version of my favorite programming language, but the packages manager doesn't help and I shouldn't install it by myself. 😡

* I want to understand at least the 15% of my application source code, but the scaffolding tool from the framework is a better developer than me and I should do what it say, remember, don't reinvent the wheel. 😡

* I try to create my own controlled and isolated environment, but I should use super complex softwares like [cluster managers](https://en.wikipedia.org/wiki/List_of_cluster_management_software) and [virtual machines managers](https://libvirt.org/apps.html), no matter if I have no idea what happens behind scenes, again, I should not reinvent the wheel. 😡

I am not trying to say that all this things are bad, actually it is great to know that out there are so many smart people who already solved the problems that I am facing, and even better, they shared the solution; but it doesn't mean that I shouldn't known how they did it. At work or production environments, it is good, saving time and using well tested software is a must do, but if I just want to learn some fundamentals for being a better developer, I think that it is a must don't.

P.S. I know that I can't say all this things using high level tools, but in a near future (hopefully), I will try to go at the lowest level that I can.

## Features

* Containers images management.
  * RootFS containers

<!--
* Programming languages version management.
* Projects scaffolding.
* Set of useful templates.
-->

## Install

Dependencies:

* `wget`

### Binary

```sh
wget -c 'https://goo.gl/bRwqGN' -O /tmp/ntenvs
sudo cp /tmp/ntenvs /usr/bin/ntenvs
sudo chmod +x /usr/bin/ntenvs
```

Actually, `/usr/bin/` is not mandatory, you can put **NtEnvs** anywhere you want (remember, if it isn't in `PATH` you can't use `ntenvs` without specifying the path).

### From the source

Build dependencies:

* `git`
* `make`

```sh
git clone https://github.com/ntrrg/ntenvs.git
cd ntenvs
make
sudo make install
make clean
```

## Usage

## Use instead

### Containers

* [buildah](https://github.com/projectatomic/buildah)
* [umoci](https://umo.ci)

### Programming languages

#### Node.js

* [nave](https://github.com/isaacs/nave)
* [nvm](https://github.com/creationix/nvm)

#### Python

* [virtualenv](https://pypi.python.org/pypi/virtualenv)

## Uninstall

```sh
sudo rm "$(which ntenvs)"
rm -r "${HOME}/.cache/ntenvs"
```

## Contributing

See the [contribution guide](CONTRIBUTING.md) for more information.

## Acknowledgment

Working on this project I use/used:

* [Debian](https://www.debian.org/)

* [XFCE](https://xfce.org/)

* [Sublime Text 3](https://www.sublimetext.com/3)

* [Chrome](https://www.google.com/chrome/browser/desktop/index.html)

* [Terminator](https://gnometerminator.blogspot.com/p/introduction.html)

* [Zsh](http://www.zsh.org/)

* [Git](https://git-scm.com/)

* [EditorConfig](http://editorconfig.org/)

* [GNU make](https://www.gnu.org/software/make/)

* [ShellCheck](https://www.shellcheck.net/)

* [Urchin](https://github.com/tlevine/urchin)

* [Github](https://github.com)

* [Travis CI](https://travis-ci.org)

* [Codacy](https://www.codacy.com/)

* [Better Code Hub](https://bettercodehub.com)

* [CII Best Practices](https://bestpractices.coreinfrastructure.org)

* [Inkscape](https://inkscape.org/en/)

* [GIMP](https://www.gimp.org/)

* [Flickr](https://www.flickr.com)

**Bash Hackers Wiki.** http://wiki.bash-hackers.org

**Stack Overflow.** *How do I parse command line arguments in Bash?.* https://stackoverflow.com/questions/192249/how-do-i-parse-command-line-arguments-in-bash

Thanks to [Robert Siemer](https://stackoverflow.com/users/825924/robert-siemer) for posting [a great answer](https://stackoverflow.com/a/29754866/6922685) about `getopt`.

**[isaacs](https://github.com/isaacs).** *Makefile.* https://gist.github.com/isaacs/62a2d1825d04437c6f08

**GNU.** *GNU make.* http://www.gnu.org/software/make/manual/make.html

**Stack Overflow.** *Passing arguments to "make run"* https://stackoverflow.com/questions/2214575/passing-arguments-to-make-run

Thanks to [Jakob Borg](https://stackoverflow.com/users/247563/jakob-borg) for posting [a great answer](https://stackoverflow.com/a/2214593) about ~something like~ passing arguments to a Makefile.

**StackPointer.** *Shell Script: Echo to Stderr* https://stackpointer.io/script/shell-script-echo-to-stderr/355/
