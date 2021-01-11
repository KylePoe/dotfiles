# dotfiles
My personal configuration files, I take no responsibility for how bad/poorly maintained/etc they may be.

## Windows Issues
Some of the JetBrains config files don't play nicely with NTFS, so I worked around this by using a `git sparse-checkout` approach.
* Clone repo without checkout `git clone _ --no-checkout`
* Set `git config core.protectNTFS false`
* Initialize sparse checkout `git sparse-checkout init`
* Remove whatever the offending files are by appending them to `.git/info/sparse-checkout`, prepended by an `!`
* Run `git checkout -f HEAD` or `git checkout --`
[This](https://stackoverflow.com/questions/9572407/git-sparse-checkout-with-exclusion) stack issue helped with this.
