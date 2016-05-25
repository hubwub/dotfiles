export GOVERSION=$(go version | awk '{ print $3; }' | sed 's/go//')
export GOPATH=$PROJECTS/go
export GOROOT=$(brew --prefix)/Cellar/go/$GOVERSION/libexec
export PATH=$GOPATH/bin:$PATH
export GO15VENDOREXPERIMENT=1
