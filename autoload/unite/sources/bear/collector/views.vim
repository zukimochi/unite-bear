"
" gather candidates
"
function! unite#sources#bear#collector#views#candidates(source)
  let target = a:source.source__bear_root. 'App/views'
  return unite#sources#bear#helper#gather_candidates_file(target)
endfunction
