"
" gather candidates
"
function! unite#sources#bear#collector#libs#candidates(source)
  let target = a:source.source__bear_root. 'libs'
  return unite#sources#bear#helper#gather_candidates_file(target)
endfunction
