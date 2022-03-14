# Defined in /tmp/fish.2Xvxvj/fish_prompt.fish @ line 2
function fish_prompt
	set -x VIRTUAL_ENV_DISABLE_PROMPT 1

	if test "$_prompt_last_directory_" != "$PWD"
		echo (set_color green)$USER(set_color white)'@'(set_color brblue)(prompt_hostname)(set_color white)" in "(set_color cyan)(prompt_pwd)(set_color normal)
		set -g _prompt_last_directory_ "$PWD"
	end

	if set -q VIRTUAL_ENV
		echo -n (set_color brblue)'('(basename /"$VIRTUAL_ENV"/)') '(set_color normal)
	end
		
	if test "$USER" = 'root'
		set_color cyan
		printf '%s' (basename "$PWD")
		set_color brblue
		fish_git_prompt
		set_color brred
		printf ' ~# '
		set_color normal
	else
		set_color cyan
		printf '%s' (basename "$PWD")
		set_color brblue
		fish_git_prompt
		set_color bryellow
		printf ' ~> '
		set_color normal
	end
end
