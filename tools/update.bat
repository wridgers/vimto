@echo off

:: file extensions
set EXT_LIST=(asc bib c cfg coffee conf cpp css ejs frag fp glsl gpg go h hpp hs ini jade js json less pgp php php4 php5 phps pl py rb scss sh vert vp xml lua log markdown md nfo tex text txt yaml yml)
ftype txtfile="C:\Program Files (x86)\Vim\vim73\gvim.exe" --remote-silent "%%1"

for %%e in %EXT_LIST% do ( 
    assoc .%%e=txtfile
    REG ADD "HKEY_CLASSES_ROOT\.%%e" /f /ve /d "txtfile"
    REG ADD "HKEY_CLASSES_ROOT\.%%e" /f /v "Content Type" /d "text/plain"
    REG ADD "HKEY_CLASSES_ROOT\.%%e" /f /v "PerceivedType" /d "text"
)

