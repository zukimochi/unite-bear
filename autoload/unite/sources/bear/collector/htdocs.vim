"
" gather candidates
"
function! unite#sources#bear#collector#htdocs#candidates(source)
  let target = a:source.source__bear_root. 'htdocs'
  let dirs = ['\<__bear\/.*', '\<_panda\/.*', '\<images\/.*']
  return unite#sources#bear#helper#gather_candidates_file_ignore_dir(target, dirs)
endfunction

