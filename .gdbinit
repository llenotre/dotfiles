set auto-load safe-path ~

set confirm off
set debuginfod enabled on

set style enabled on
set prompt \033[97;45m(gdb)\033[0m 

set disassembly-flavor intel
set output-radix 0x10
set print pretty on
set $USECOLOR = 1

set history filename ~/.gdb_history
set history save
