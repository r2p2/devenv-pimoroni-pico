# How to use this development environment

1. Download the boilerplate either via git or raw download
   `https://github.com/pimoroni/pico-boilerplate`
2. Well, do what that readme tells you and come back once
   you want to compile your project
3. To compile your code,
3.1. start the docker container your project by running from the project root
   `docker run --rm -ti --name pimoroni -v $(pwd):/opt/prj/ devenv-pimoroni:1`
3.2. change directory to `/opt/prj`
3.3. if you have no build directory, create one by running `mkdir build`, then `cd build`
    and run `cmake ..`.
3.4. run `make` to build your project
