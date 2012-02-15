call unite#util#set_default('g:gather_bear_execute_cmd', 'VimShellExecute')

let s:source = {}
function! unite#sources#bear#define()
  let rel_path = 'autoload/unite/sources/bear/collector/*.vim'
  let names = map(split(globpath(&runtimepath, rel_path), "\<NL>"), 'fnamemodify(v:val , ":t:r")')

  let list = []
  for val in names
    let source = copy(s:source)
    let source.description = "candidates from " . val . " list"
    let source.name = "bear/" . val
    call add(list, source)
  endfor
  return list
endfunction

"
" gather candidates
"
function! s:source.gather_candidates(args, countext)
  return s:gather_candidates(self)
endfunction

function! s:gather_candidates(source)
  let root = unite#sources#bear#helper#bear_root()
  if root == ""
    redraw
    echohl ErrorMsg | echo 'BEAR Root is not exist.' | echohl None | return []
  end

  let a:source.source__bear_root = root
  let func_name = "unite#sources#bear#collector#".
    \ substitute(a:source.name, 'bear/', '', '') . "#candidates"
  return {func_name}(a:source)
endfunction
