if !exists(':JUnitCreate')
  command! JUnitCreate call <SID>CreateJUnit()
endif

fun! <SID>CreateJUnit()

	let testFile=substitute(expand('%:p'),'\/src\/main','\/src\/test','')
	let testFile=substitute(testFile,'\.java','Test.java','')
	silent! exec ":!mkdir -p ". fnamemodify(testFile,':p:h:')
	exec ":e ".testFile
endf
