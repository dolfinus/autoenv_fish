# autoenv_fish

[Autoenv](https://github.com/kennethreitz/autoenv) magic for [fish shell](https://fishshell.com)!

## Installation

To install it, just copy autoenv.fish somewhere to your computer and source it by typing the following in terminal:

```bash
source <path/to/script>/autoenv.fish
```

If you want to have autoenv always enabled, add the previous line to your fish config file (~/.config/fish/config.fish).

## Usage
When you `cd` to some directory where `.env.fish` file is stored, it'll be executed automatically.

If env variable `AUTOENV_ENABLE_LEAVE=1` is set, `.env.leave.fish` script is being executed then leaving the directory.

## But why?
For example, this can be used for automatic activating and deactivating Python's virtualenv:

* If there is a `venv` directory in a folder you're entering, `activate` binary will be executed automatically which leads to entering into virtual environment.
* When you are moving within the same folder or child folders, nothing happens.
* When you go outside of this folder, for example one level up or to totally different dir, `deactivate` function is called to exit from virtual environment.
* If there is no `venv` dir, nothing is happenned.
