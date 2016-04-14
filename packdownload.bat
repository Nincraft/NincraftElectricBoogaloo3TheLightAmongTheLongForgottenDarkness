del /s /q "common\base\loaders\*.jar"
del /s /q "common\base\mods\*.jar"
del /s /q "client\base\mods\*.jar"
del /s /q "server\base\mods\*.jar"
for /f "delims=" %%i IN ('dir *.jar /b') DO set modpackdownloader=%%i
java -jar "%modpackdownloader%" common/base/mods.json common/base/mods
java -jar "%modpackdownloader%" client/base/mods.json client/base/mods
java -jar "%modpackdownloader%" server/base/mods.json server/base/mods