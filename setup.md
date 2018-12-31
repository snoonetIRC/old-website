# Basic setup
1. Create `deployer` user on webserver:
    - home: `/home/deployer`
2. Set up rbenv for deployer user
    1. `sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev libpq-dev`
    2. `git clone https://github.com/rbenv/rbenv.git ~/.rbenv`
    3. `echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc`
    4. `echo 'eval "$(rbenv init -)"' >> ~/.bashrc`
    5. `source ~/.bashrc`
    6. `rbenv rehash`
    7. `mkdir -p "$(rbenv root)/plugins"`
    8. `git clone https://github.com/rbenv/ruby-build.git $(rbenv root)/plugins/ruby-build`
    9. `git clone https://github.com/rbenv/rbenv-vars.git $(rbenv root)/plugins/rbenv-vars`
    10. `git clone https://github.com/tpope/rbenv-aliases.git "$(rbenv root)/plugins/rbenv-aliases"`
    11. `rbenv alias --auto`
    12. `rbenv install 1.9.3-p551`
3. Configure `/home/deployer/website/shared/config/database.yml` and `/home/deployer/website/shared/.rbenv-vars` as needed
4. Set up your local copy of the website
    1. `git clone https://github.com/snoonetIRC/website.git`
    2. Follow all steps for setting up rbenv
    3. `cd website`
    4. `rbenv local 1.9.3`
    5. `gem install bundler`
    6. `rbenv exec bundler install --with=development`
5. `rbenv exec cap production deploy`
6. Configure nginx as needed

# Updating
Assuming you already have a local dev environment configured, just `cd <dev env>`, `git pull`, `rbenv exec cap production deploy`

Might have to `rbenv exec bundler install` first in case dependencies updated
