# java-8-oracle-installer

A installer for java 8 oracle

### Let's go

Disclaimer: for legal purpose you have to log in into oracle website and then download by yourself the file.
[click here](https://www.oracle.com/webapps/redirect/signon?nexturl=https://download.oracle.com/otn/java/jdk/8u251-b08/3d5a2bb8f8d4428bbe94aed7ec7ae784/jdk-8u251-linux-x64.tar.gz) to go to oracle website and download it.

Then download the installer.sh

```bash
  wget https://raw.githubusercontent.com/hfabio/java-8-oracle-installer/master/installer.sh
```

And give permission to install

```bash
  sudo chmod +x installer.sh
```

solusj
Pay attention to have the oracle java 8 .tag.gz file downloaded `AT THE SAME DIRECTORY`of this script
Run the install.sh as root:

```bash
  sudo ./installer.sh
```

wait for installation and test after with:

```bash
  java -version
  javac -version
```
