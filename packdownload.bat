del /s /q "common\base\loaders\*.jar"
del /s /q "common\base\mods\*.jar"
del /s /q "client\base\mods\*.jar"
del /s /q "server\base\mods\*.jar"
for /f "delims=" %%i IN ('dir *.jar /b') DO set modpackdownloader=%%i
java -jar "%modpackdownloader%" -manifest common/base/mods.json -folder common/base/mods
java -jar "%modpackdownloader%" -manifest client/base/mods.json -folder client/base/mods
java -jar "%modpackdownloader%" -manifest server/base/mods.json -folder server/base/mods