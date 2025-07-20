augroup dotxt_cmd
  autocmd!
  autocmd FileType dotxt call s:dotxt_commands()
augroup END

function! s:dotxt_commands() abort
  " Sort tasks
  " command! DotxtSort         echo "TODO: sort tasks (implement DotxtSort)"
  command! DotxtSortProjects echo "TODO: sort tasks by +projects"
  command! DotxtSortContexts echo "TODO: sort tasks by @contexts"
  command! DotxtSortDates    echo "TODO: sort tasks by date"
  command! DotxtSortDue      echo "TODO: sort tasks by due date"
  " Priority commands
  command! DotxtPriorityUp   echo "TODO: increase task priority"
  command! DotxtPriorityDown echo "TODO: decrease task priority"
  command! -nargs=1 DotxtAddPriority call DotxtAddPriority(<f-args>)
  " Mark done/archive
  command! DotxtDone         echo "TODO: mark current task as done"
  command! DotxtDoneAll      echo "TODO: mark all tasks as done"
  command! DotxtArchive      echo "TODO: archive completed tasks"
endfunction

function! DotxtAddPriority(prio) abort
  echo "TODO: add priority (" . a:prio . ") to current task"
endfunction

if exists("b:did_dotxt_plugin")
	finish
endif

let b:did_dotxt_plugin = 1

let s:dotxt_prefix = '/home/francis/.config/dotxt/todos'
let s:dotxt_bin = '/home/francis/Studio/Projects/dotxt/dotxt'

function! s:DotxtSort()
	let l:full = expand('%:p')
	if l:full[:len(s:dotxt_prefix)-1] ==# s:dotxt_prefix
		let l:sub = l:full[len(s:dotxt_prefix):]
	else
		let l:sub = l:full
	endif
	let l:cmd = printf('%s %s', s:dotxt_bin, shellescape(l:sub))
	call system(l:cmd)
	silent! edit!
	echo 'Sorted: ' . l:sub
endfunction
