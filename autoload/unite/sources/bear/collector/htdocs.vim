"
" gather candidates
"
function! unite#sources#bear#collector#htdocs#candidates(source)
  let target = a:source.source__bear_root. 'htdocs'
  return unite#sources#bear#helper#gather_candidates_file(target)
endfunction

