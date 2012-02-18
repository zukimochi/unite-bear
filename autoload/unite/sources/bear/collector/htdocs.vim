"
" gather candidates
"
function! unite#sources#bear#collector#htdocs#candidates(source)
  let target = a:source.source__bear_root. 'htdocs'
  let dirs = ['\<__bear\/.*', '\<__panda\/.*', '<__edit\/.*', '\<images\/.*']
  return unite#sources#bear#helper#gather_candidates_file_ignore_dir(target, dirs)
endfunction

