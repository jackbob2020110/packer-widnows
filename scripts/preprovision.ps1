# Runs before Packer provisioners during first boot

# We explicitly install nuget because install-module prompts for confirmation even with -Force
# and Install-PackageProvider is not available on Win10 by default
#Install-Package Nuget -Force
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Install-PackageProvider -Name NuGet -RequiredVersion 2.8.5.201 -Force

# Install and execute Windows updates and start WinRM when complete
Install-Module WindowsBox.Network -Force
Install-Module WindowsBox.WindowsUpdates -Force

Set-NetworkToPrivate
Install-WindowsUpdates
