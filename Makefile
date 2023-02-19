BIN = /usr/bin
GOPATH = /usr/bin/go

all:
		@echo Run \'make install\' to install
install:
ifneq ("$(wildcard $(GOPATH))", "")
		@go build -o nxm	
		@sudo mv nxm $(BIN)
else
		@echo "go is not installed, installing go"
		@sudo apt install go
		@echo "go installed, please rerun script"
endif
uninstall:
		@sudo rm -rf $(BIN)/nxm