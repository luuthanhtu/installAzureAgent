mkdir agent ; cd agent
curl -O https://vstsagentpackage.azureedge.net/agent/2.184.2/vsts-agent-win-x64-2.184.2.zip
Add-Type -AssemblyName System.IO.Compression.FileSystem ; [System.IO.Compression.ZipFile]::ExtractToDirectory("$HOME\Downloads\vsts-agent-win-x64-2.184.2.zip", "$PWD"
del -f vsts-agent-win-x64-2.184.2.zip
.\config.cmd
.\run.cmd
