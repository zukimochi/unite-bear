"
" gather candidates
"
"function! unite#sources#bear#collector#App#candidates(source)
"  let target = a:source.source__bear_root. 'App'
"  return unite#sources#bear#helper#gather_candidates_file(target)
"endfunction
function! unite#sources#bear#collector#App#candidates(source)
  let target = a:source.source__bear_root. 'App'
  let dirs = ['\<Ro\/.*', '\<views\/.*', '\<Form\/.*', '\<Page\/.*']
  return unite#sources#bear#helper#gather_candidates_file_ignore_dir(target, dirs)
endfunction
