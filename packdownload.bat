del /s /q "both\common\loaders\*.jar"
del /s /q "both\common\mods\*.jar"
del /s /q "client\mods\*.jar"
for /f "delims=" %%i IN ('dir *.jar /b') DO set modpackdownloader=%%i
java -jar "%modpackdownloader%" both/common/forge.json both/common/loaders
java -jar "%modpackdownloader%" both/common/mods.json both/common/mods
java -jar "%modpackdownloader%" client/common/mods.json client/common/mods