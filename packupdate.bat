for /f "delims=" %%i IN ('dir *.jar /b') DO set modpackdownloader=%%i
java -jar "%modpackdownloader%" common/base/mods.json common/base/mods -updateMods -mcVersion=1.8.9 -releaseType=release
java -jar "%modpackdownloader%" client/base/mods.json client/base/mods -updateMods -mcVersion=1.8.9 -releaseType=release