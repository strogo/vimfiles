call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set ls=2
set statusline=[%{&ff}]\ %y
set statusline+=\ %10((%l/%L)%)
set statusline+=\ %{fugitive#statusline()}
set statusline+=\ %{rvm#statusline()}
