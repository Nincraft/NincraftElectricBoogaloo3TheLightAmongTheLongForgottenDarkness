for /f "delims=" %%i IN ('dir *.jar /b') DO set modpackdownloader=%%i
java -jar "%modpackdownloader%" all/forge.json all/loaders
java -jar "%modpackdownloader%" all/mods.json all/mods
java -jar "%modpackdownloader%" client/mods.json client/mods