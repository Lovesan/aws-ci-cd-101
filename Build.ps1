$env:PATH="C:/Program Files (x86)/MSBuild/14.0/Bin;C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\MSBuild\Current\Bin;${env:PATH}"
choco install vswhere
echo "MSBuild is:"
vswhere -latest -requires Microsoft.Component.MSBuild -find MSBuild\**\Bin\MSBuild.exe
echo '^^^'
