if exists('g:nnn_ftplugin')
    finish
endif
let b:nnn_ftplugin = 1

for key in keys(g:nnn#action)
    execute 'tnoremap <nowait><buffer><silent>' key '<c-\><c-n>:<c-u>call nnn#select_action("'.substitute(key, '<', '<lt>', 'g').'")<cr>'
endfor

setlocal nospell bufhidden=wipe nobuflisted nonumber
" vim: set sts=4 sw=4 ts=4 et :
