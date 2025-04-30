uninstall-raise-terminal:
	@echo "Uninstalling raise-terminal..."
	rm -rf ~/.config/raise-terminal
	@echo "Removing .desktop file from ~/.local/share/applications"
	rm -f ~/.local/share/applications/raise-terminal.desktop

install-raise-terminal: uninstall-raise-terminal
	@echo "Installing raise-terminal..."
	ln -sf $(shell pwd)/raise-terminal ~/.config/raise-terminal
	@echo "Symlink .desktop file to ~/.local/share/applications"
	ln -sf $(shell pwd)/raise-terminal/raise-terminal.desktop ~/.local/share/applications/raise-terminal.desktop

