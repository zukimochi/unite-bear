"
" gather candidates
"
function! unite#sources#bear#collector#Form#candidates(source)
  let target = a:source.source__bear_root. 'App/Form'
  return unite#sources#bear#helper#gather_candidates_file(target)
endfunction
