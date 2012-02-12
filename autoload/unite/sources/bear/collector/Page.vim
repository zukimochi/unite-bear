"
" gather candidates
"
function! unite#sources#bear#collector#Page#candidates(source)
  let target = a:source.source__bear_root. 'App/Page'
  return unite#sources#bear#helper#gather_candidates_file(target)
endfunction
