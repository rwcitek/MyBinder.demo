# MyBinder.demo
A demo for using MyBinder

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/rwcitek/MyBinder.demo/HEAD)
Launch this project in MyBinder.

This project runs a default Binder instance with Bash and a few other features, using [Zero-to-Binder](https://the-turing-way.netlify.app/communication/binder/zero-to-binder.html) as a guide.

For details on the files, see [Configuration Files](https://mybinder.readthedocs.io/en/latest/using/config_files.html)

### Docker
Underneath, the build process uses Docker to set up the environment, which runs Ubuntu 18.04. It uses a few files.
- apt.txt - extra APT packages to install
- start
- postBuild

### Julia
Julia uses two files.
- hello.jl - a sample script
- Project.toml

### Python
Python uses one file to install extra Python packages
- environment.yml

### R
R uses two files
- hello.R - a sample script
- runtime.txt

Note: This works if the Julia files are not included.  I have not been able to get all three enviornments installed at the same time.

