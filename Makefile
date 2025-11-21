.PHONY: helix tmux

helix:
	@bash ./local/archive.sh ~/.config/helix
	@ln -sf "$(shell pwd)/helix" ~/.config/helix
	@echo "Helix config deployed"

tmux:
	@bash ./local/archive.sh ~/.config/tmux
	@ln -sf "$(shell pwd)/tmux" ~/.config/tmux
	@echo "Tmux config deployed"
