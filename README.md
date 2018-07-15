# Development Environment Docker Container

This is container is purposed to simplify the setup of my development on any machine  non invasively via docker .

### Included Batteries
- Rust && Cargo
- GOlang
- Node
- Python 2 & 3
- Ruby ( for some reason )
- ZSH
- Neovim
- Corvi Dotfiles [My Dotfiles](http://github.com/amcorvi/dotfiles)

Note: dotfiles can be replaced with any dotfiles setup by replacing the github repo address on line 46 of the dockerfile

### Installation
 Note: THis is a docker container, therefore docker is a somewhat obviously a requirement.

 ```
 $ docker build -t dev_env .
 $ docker run -it --name dev_env dev_env
 ```

