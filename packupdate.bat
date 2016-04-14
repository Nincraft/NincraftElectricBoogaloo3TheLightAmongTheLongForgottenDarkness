for /f "delims=" %%i IN ('dir *.jar /b') DO set modpackdownloader=%%i
java -jar "%modpackdownloader%" -updateApp
for /f "skip=1 eol=: delims=" %%F in ('dir /b /o-d ModPackDownloader*.jar') do @del "%%F"
for /f "delims=" %%i IN ('dir *.jar /b') DO set modpackdownloader=%%i
java -jar "%modpackdownloader%" common/base/mods.json common/base/mods -updateMods -releaseType=release
java -jar "%modpackdownloader%" client/base/mods.json client/base/mods -updateMods -releaseType=release