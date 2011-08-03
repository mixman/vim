" virtualenv:https://gist.github.com/805665 

function! Workon(name)
    " Get virtualenv's site-packages directory.
    let b:virtualenv_sitepackages_dir = system('workon ' . a:name . '; cdsitepackages; echo -n $PWD')
    python << EOM
import vim
import sys

virtualenv_sitepackages_dir = vim.eval('b:virtualenv_sitepackages_dir')

if virtualenv_sitepackages_dir not in sys.path:
    # Because a python plug-in might have custom version module,
    # we put the path on tail.
    sys.path.append(virtualenv_sitepackages_dir)
EOM
endfunction

function! Deactivate()
    if exists('b:virtualenv_sitepackages_dir')
        python << EOM
import vim
import sys

virtualenv_sitepackages_dir = vim.eval('b:virtualenv_sitepackages_dir')

if virtualenv_sitepackages_dir in sys.path:
    sys.path.remove(virtualenv_sitepackages_dir)
EOM
        unlet b:virtualenv_sitepackages_dir
    else
        echoerr "You aren't in a virtualenv"
    endif
endfunction
