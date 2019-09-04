$env:PATH="C:/Program Files (x86)/MSBuild/14.0/Bin;C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\MSBuild\Current\Bin;${env:PATH}"
choco install vswhere
msbuild /p:Configuration=Release
