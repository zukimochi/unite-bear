"
" gather candidates
"
function! unite#sources#bear#collector#Ro#candidates(source)
  let target = a:source.source__bear_root. 'App/Ro'
  return unite#sources#bear#helper#gather_candidates_file(target)
endfunction
