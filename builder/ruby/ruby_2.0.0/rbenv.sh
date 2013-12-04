# enable go language support
export GOROOT=/usr/lib/go
export GOPATH=/home/ubuntu
export PATH=$PATH:$GOROOT/bin

[ -d $GOPATH/src ] || mkdir -p $GOPATH/src
[ -d $GOPATH/pkg ] || mkdir -p $GOPATH/pkg
[ -d $GOPATH/bin ] || mkdir -p $GOPATH/bin

# enable ruby support via rbenv

# enable python support via virtualenv

# enable nodejs support via nvm

# enable java support via JAVA_HOME, MAVEN_HOME, etc


# add rbenv to path
export PATH="/home/ubuntu/.rbenv/bin:$PATH"

# set default env vars
export RBENV_VERSION=2.0.0-p353
export RAILS_ENV=test

# initialize and set ruby version
eval "$(rbenv init -)"
rbenv global 2.0.0-p353