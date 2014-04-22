# clone-all(1)

Clones every repository or gist from a Github user, optionally to a specified directory.

clone-all(1) is perfect to help you set up a new computer, back up your Github account, or if you just want to grab all of a users public repositories.  It also goes great with an [OS X setup script][osxdefaults] or [dotfiles setup][dotfiles].

## Requirements

* [Git][git] and [Github account][github]
* [Homebrew][homebrew] (for package installation of the following)
* [jq][jq] (for JSON to bash manipulation)
* [roundup][roundup] (for testing)

## How to install

clone-all(1) is a [shell script][bin], so installation is simple.  [Download][download], extract and copy the script in the `bin` directory over to the `/usr/local/bin` directory and make sure it's in your `$PATH`.  The man page, `man clone-all`, can be installed by copying over the `clone-all.1` file to `/usr/share/man/man1`.

## One-line installation

```bash
$ bash -c "$(curl -fsSL raw.github.com/chrisopedia/clone-all/go/install)"
```

N.B. - using the one-line installation will download and install all of the dependencies, including the man page.

## Usage

```bash
$ clone-all [options] <github_username> [<path>]
```

### Options

| Flag                 | Meaning                                                        |
| :--------------------| :------------------------------------------------------------- |
| `-h, --help`         | Print out help text                                            |
| `-f, --feed <value>` | `<value>` can be either `gists` or `repos`, default is `repos` |
| `-v, --version`      | Print out version                                              |

N.B. - Default `<path>` is `$HOME/Downloads`.

## Acknowledgements

Inspiration and code was taken from many sources, but mostly from StackOverflow:

* [Handling positional parameters](http://wiki.bash-hackers.org/scripting/posparams)
* [How to get the latest tag name in current branch in Git?](http://stackoverflow.com/questions/1404796/how-to-get-the-latest-tag-name-in-current-branch-in-git)
* [How to add a progress bar to a shell script?](http://stackoverflow.com/a/16348366)
* [How to increment a variable in bash?](http://askubuntu.com/a/385531)
* [Other Comparison Operators](http://www.tldp.org/LDP/abs/html/comparison-ops.html)
* [The Basics of Using the Sed Stream Editor to Manipulate Text in Linux](https://www.digitalocean.com/community/articles/the-basics-of-using-the-sed-stream-editor-to-manipulate-text-in-linux)
* [sed, a stream editor](http://www.gnu.org/software/sed/manual/sed.html)
* [bash: replace an entire line in a text file](http://stackoverflow.com/questions/11145270/bash-replace-an-entire-line-in-a-text-file)
* [In bash, how do I convert a space-delimited string into an array?](http://stackoverflow.com/questions/9293887/in-bash-how-do-i-convert-a-space-delimited-string-into-an-array)
* [Returning Values from Bash Functions](http://www.linuxjournal.com/content/return-values-bash-functions)
* [Github API pagination via curl](https://gist.github.com/michfield/4525251)
* [How to check if a program exists from a bash script?](http://stackoverflow.com/a/677212)

[bin]: https://github.com/chrisopedia/clone-all/blob/master/clone-all
[dotfiles]: https://github.com/chrisopedia/dotfiles
[download]: https://github.com/chrisopedia/clone-all/archive/master.zip
[github]: https://github.com/join
[git]: http://git-scm.com
[homebrew]: http://brew.sh
[jq]: https://stedolan.github.io/jq/
[osxdefaults]: https://github.com/chrisopedia/osxdefaults
[roundup]: https://github.com/bmizerany/roundup
