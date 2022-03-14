# Defined in /tmp/fish.NmOVgi/fish_greeting.fish @ line 2
function fish_greeting
	echo \n(set_color bryellow)Welcome!\n(set_color normal)
	echo (set_color white)Running WSL with (set_color brmagenta)"$WSL_DISTRO_NAME" (cat /etc/debian_version)(set_color normal)
	echo (set_color white)Starting (set_color brmagenta)(basename "$SHELL") "$FISH_VERSION"(set_color white) in (set_color brcyan)"$PWD"\n
end
