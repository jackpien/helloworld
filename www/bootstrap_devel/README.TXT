To compile bootstrap with custom variables
---

1) Download the source (ie v4.1.1) and unzip (ie bootstrap-4.1.1), move here.
.
├── README.TXT
├── bootstrap-4.1.1
└── jackpien_custom.json

2) Set up Node environment
- $ mkvirtualenv node_env_2
- $ pip install nodeenv
- $ nodeenv -p
- $ npm ...

3) Set up Ruby
- $ brew install rbenv
- $ rbenv init # will tell you what to do to "activate" rbenv
- open new terminal
- $ rbenv install -l # list all the ruby versions to install
- $ rbenv install 2.5.1
- $ rbenv global 2.5.1 # Use this version as "the" ruby to use
- $ which ruby # Double check

4) Summary of Bootstrap instructions - https://getbootstrap.com/docs/4.1/getting-started/build-tools/ - to set up:
# Node packages needed to compile Boostrap
- $ cd bootstrap-4.1.1
- $ npm install
# GEM bundles needed to compile Bootstrap
- $ cd bootstrap-4.1.1
- $ gem install bundler
- $ bundle install
# Test compile
- $ cd bootstrap-4.1.1
- $ npm run dist # compiles the source

5) Add our customizations
- $ cd bootstrap-4.1.1
- $ ln -s ../jackpien_custom.json jackpien_custom.json
- $ emacs package.json
- Search for "scss/bootstrap.scss" and replace all instances with "jackpien_custom.json"
- $ npm run dist to confirm
