augroup dotxt_cmd
  autocmd!
  autocmd FileType dotxt call s:dotxt_commands()
augroup END

function! s:dotxt_commands() abort
  " Sort tasks
  command! DotxtSort         echo "TODO: sort tasks (implement DotxtSort)"
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
