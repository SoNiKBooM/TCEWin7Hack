# Lab 1 - Information Leakage
# If you scroll down from here there will be spoilers. Is it worth it? Up to you.































































# Enable the Administrator user.
net user Administrator YouShouldReallyReadT4381873 /active:yes


# Add some data to be found.
reg add HKLM\Software\VNCServer
reg add HKLM\Software\VNCServer /v VNCPassword /d "YouShouldReallyReadT4381873"
reg add HKLM\Software\VNCServer /v Version /d "v 1.0"
reg add HKLM\Software\VNCServer /v Host /d "localhost"
reg add HKLM\Software\VNCServer /v Username /d "Administrator"
reg add HKLM\Software\VNCServer /v Author /d "TCE ITS"