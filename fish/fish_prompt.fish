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
		echo (set_color cyan)(basename "$PWD")(set_color brred)' ''~# '(set_color normal)
	else
		echo (set_color cyan)(basename "$PWD")(set_color bryellow)' ''~> '(set_color normal)
	end
end
