Write-Host "Starting Dev Tool Install";
Write-Host "Installing Chocolatey";
Set-ExecutionPolicy Bypass -Scope Process -Force; 
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));
Set-Variable "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin";
Write-Host "Installing 7zip, AWS CLI, Git, Node.js, Notepad++, N++ Plugin Manager, Python 2.7 & 3.6, Redis Desktop Manager, Git Fork, Firefox, Chrome, Docker Desktop, Postman, and Visual Studio Code";
choco install 7zip awscli git nodejs notepadplusplus npppluginmanager python2 python3 vscode redis-desktop-manager git-fork firefox googlechrome docker-desktop postman -y;
refreshenv
Write-Host "Installing Visual Studio Extensions"
code --install-extension dariofuzinato.vue-peek --force
code --install-extension dbaeumer.vscode-eslint --force
code --install-extension eamodio.gitlens --force
code --install-extension eg2.tslint --force
code --install-extension esbenp.prettier-vscode --force
code --install-extension octref.vetur --force
code --install-extension prograhammer.tslint-vue --force
code --install-extension sainoba.px-to-rem --force
code --install-extension shekhardtu.vuejspack --force
code --install-extension volynetsserhii.get-color-name --force
Write-Host "Installing Visual Studio 2019 Professional";
choco install visualstudio2019professional --force --package-parameters:"--allWorkloads --includeRecommended --includeOptional --passive" -y;
Write-Host "Dev tool installation is complete";