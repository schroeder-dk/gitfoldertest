@echo Introduce end-of-line normalization via .gitattributes

echo Introduce end-of-line normalization via .gitattributes>.gitattributes
echo *	-text>>.gitattributes
::echo Makefile	text eol=lf>>.gitattributes
echo *.sh	text eol=lf>>.gitattributes
echo *.env	text eol=lf>>.gitattributes

pause

@echo execute:	git add --renormalize .
@echo execute:	git ls-files --eol
@echo execute:	git status        # Show files that will be normalized
@echo execute:	git commit -m "Introduce end-of-line normalization"

pause
