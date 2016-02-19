for /f "delims=" %%i IN ('dir *.jar /b') DO set modpackdownloader=%%i
java -jar "%modpackdownloader%" all/mods.json all/mods -updateMods -mcVersion=1.8.9 -releaseType=release
java -jar "%modpackdownloader%" client/mods.json client/mods -updateMods -mcVersion=1.8.9 -releaseType=release
pause