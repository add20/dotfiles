# add20’s dotfiles

## Installation

### Using Git and the bootstrap script

```bash
git clone https://github.com/add20/dotfiles.git && cd dotfiles && ./bootstrap.sh
```

To setup, `cd` into your local `dotfiles` repository and then:

```bash
./setup.rb
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
./bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
./bootstrap.sh -f
```

### Git-free install

To install these dotfiles without Git:

```bash
cd; curl -#L https://github.com/mathiasbynens/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh}
```

To update later on, just run that command again.

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

## Feedback

Suggestions/improvements
[welcome](https://github.com/add20/dotfiles/issues)!

## Else

I referred to `bootstraph.sh` and `README.md` in [Mathias’s dotfiles](https://github.com/mathiasbynens/dotfiles)
