for /f "delims=" %%i IN ('dir *.jar /b') DO set modpackdownloader=%%i
java -jar "%modpackdownloader%" both/common/mods.json both/common/mods -updateMods -mcVersion=1.8.9 -releaseType=release
java -jar "%modpackdownloader%" client/common/mods.json client/common/mods -updateMods -mcVersion=1.8.9 -releaseType=release