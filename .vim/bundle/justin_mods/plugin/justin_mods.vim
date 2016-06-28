
if exists("g:loaded_justin_mods") || &cp || v:version < 700
  finish
endif
let g:loaded_justin_mods = 1

function! s:get_os_name()
    if has("unix")
        return system("echo -n \"$(uname)\"")
    endif
    return "Windows"
endfunction

function! IsMac()
    return s:get_os_name() == "Darwin"
endfunction

function! IsLinux()
    return s:get_os_name() == "Linux"
endfunction

function! IsWindows()
    return s:get_os_name() == "Windows"
endfunction
