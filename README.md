# TCE Windows 7 Hacking

The Windows labs make use of modified Microsoft modern.ie virtual machines hosted in Vagrant Cloud.

## Getting Started

You will require a few packages to be installed before we kick off, they are listed below.

### Prerequisites

The following packages will need to be installed:

```

Oracle Virtual Box - https://download.virtualbox.org/virtualbox/6.1.22/VirtualBox-6.1.22-144080-Win.exe
Vagrant

```

This can be acheived by running the following on an elevated Windows **command line**: 

```

C:\ @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
C:\ choco install virtualbox vagrant -y

```

### Running

Once the repo .zip has been download, extract the contents to something like C:\git\TCEWin7Hack-master\ then navigate to the directory in elevated **command line** and run the following:

```

C:\git\TCEWin7Hack> set LabIndex=0 && vagrant up

```

The 'LabIndex' maps to the corresponding Lab file within the labs folder. There are powershell scripts that make various changes to the operating system within the the virtual machine. For your own benefit it is best not to read any echoes in the command line as this might give away what you are trying to achieve. It's an honesty system.

The initial 'vagrant up' will pull down the 50Gb image off vagrant cloud, so go make a cup of coffee or get some fried chicken.

Once you have verified that everything is work, you can change the lab index and proceed to the next one. 

```

C:\git\TCEWin7Hack> vagrant destroy -f
C:\git\TCEWin7Hack> set LabIndex=1 && vagrant up

```
