BIN = /usr/bin

all:
		@echo Run \'make install\' to install
install:
		@go build -o nxm	
		@sudo mv nxm $(BIN)
uninstall:
		@sudo rm -rf $(BIN)/nxm