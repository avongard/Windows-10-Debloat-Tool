# Windows Debloat Tool
function choice() {
    # Clear the screen
    cls

    # List all options
    Write-Host "======================================================="
    Write-Host "=               Windows 10 Debloat Tool               ="
    Write-Host "======================================================="
    Write-Host ""
    Write-Host "           [1] - Remove Windows Default Apps"
    Write-Host ""
    Write-Host "           [2] - Install Applications"
    Write-Host ""
    Write-Host "           [3] - Change System Settings"
    Write-Host ""
    Write-Host "           [4] - Stop & Delete Default Tasks"
    Write-Host ""
    Write-Host "======================================================="
 

    # Prompt the user to filter by status
    $readChoice = Read-Host -Prompt "Please enter an option from above or press 'q' to quit"

    # Call the next function
    choice_check -userChoice $readChoice
}
function choice_check() {
    # Convert to string
    Param([String]$userChoice)

    # Check for 1
    if ($userChoice -Match "1") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to menu..."
        Start-Sleep -Milliseconds 250
        choice_remove

        # Go back to options
        choice
    }

    # Check for 2
    if ($userChoice -Match "2") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to menu..."
        Start-Sleep -Milliseconds 250
        choice_install

        # Go back to options
        choice
    }

    # Check for 3
    if ($userChoice -Match "3") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to menu..."
        Start-Sleep -Milliseconds 250
        choice_settings

        # Go back to options
        choice
    }

        # Check for 4
    if ($userChoice -Match "4") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to menu..."
        Start-Sleep -Milliseconds 250
        choice_tasks

        # Go back to options
        choice
    }

    # Check for quit
    if ($readStatus -Match "^[qQ]$") {
        Write-Host -BackgroundColor Red -ForegroundColor White "Exitting."
        Start-Sleep 2

        # Stop executing and quit the script
        cls
        break
    }

    # Check for other value
    if ($readStatus -NotMatch "^[qQ]$|1|2|3|4") {
        Write-Host -BackgroundColor Red -ForegroundColor White "The specified option doesn't exist."
        Start-Sleep 2
        choice
    }
}






# Remove
function choice_remove() {
    # Clear the screen
    cls

    # List all options
    Write-Host "What would you like to remove?

     [1] - Cortana

     [2] - Xbox

     [3] - OneDrive

     [4] - Paint

     [5] - Edge

     [6] - Media Player

     [7] - Photos

   ← [B]ack
    "

    # Prompt the user to filter by status
    $readChoiceRemove = Read-Host -Prompt "Please enter an option from the list above or press 'q' to quit the program"

    # Call the next function
    choice_check_remove -readChoiceRemove $readChoiceRemove
}
function choice_check_remove() {
    # Convert to string
    Param([String]$readChoiceRemove)

        # Check for 1
    if ($readChoiceRemove -Match "1") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Cortana..."
        Start-Sleep -Milliseconds 250

        # Call Cortana Function
        cortana
    }

        # Check for 2
    if ($readChoiceRemove -Match "2") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Xbox..."
        Start-Sleep -Milliseconds 250

        # Call Xbox Function
        xbox
    }

        # Check for 3
    if ($readChoiceRemove -Match "3") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing OneDrive..."
        Start-Sleep -Milliseconds 250

        # Call OneDrive Function
        onedrive
    }

        # Check for 4
    if ($readChoiceRemove -Match "4") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Photos..."
        Start-Sleep -Milliseconds 250

        # Call Photos Function
        photos
    }

        # Check for 5
    if ($readChoiceRemove -Match "5") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Microsoft Edge..."
        Start-Sleep -Milliseconds 250

        # Call Edge Function
        edge
    }

        # Check for 6
    if ($readChoiceRemove -Match "6") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Windows Media Player..."
        Start-Sleep -Milliseconds 250

        # Call Media Function
        media
    }

        # Check for 7
    if ($readChoiceRemove -Match "7") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Photos..."
        Start-Sleep -Milliseconds 250

        # Call Photos Function
        photos
    }

        # Check for 8
    if ($readChoiceRemove -Match "^[bB]$") {
        Write-Host -BackgroundColor Green -ForegroundColor White "Navigating to Menu..."
        Start-Sleep -Milliseconds 250

        # Clears the screen
        cls

        # Brings up options menu
        choice
    }

        # Check for Q
    if ($readChoiceRemove -Match "^[qQ]$") {
        Write-Host -BackgroundColor Red -ForegroundColor White "Exiting..."
        Start-Sleep -Milliseconds 250

        # Clears the screen
        cls

        # Exit the program
        break
    }

        # Check for other value
    if ($readStatus -NotMatch "^[qQ]$|1|2|3|4|5|6|7|^[bB]$") {
        Write-Host -BackgroundColor Red -ForegroundColor White "The specified status doesn't exist."
        Start-Sleep 2
        choice_remove
    }
}
# Functions
function cortana() {
Get-AppxPackage -AllUsers Microsoft.549981C3F5F10 | Remove-AppxPackage -AllUsers # Uninstall the software
Get-AppxProvisionedPackage -Online | Remove-AppxProvisionedPackage -Online | Out-Null # Prevent reinstallation of software

Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "ContentDeliveryAllowed" 0
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "FeatureManagementEnabled" 0
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "OemPreInstalledAppsEnabled" 0
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEnabled" 0
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEverEnabled" 0
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SilentInstalledAppsEnabled" 0
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEverEnabled" 0
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-314559Enabled" 0
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338387Enabled" 0
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338388Enabled" 0
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338389Enabled" 0
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338393Enabled" 0
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContentEnabled" 0
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SystemPaneSuggestionsEnabled" 0

$test1 = Test-Path -Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore" # Check if Windows Store exists in registry
if(-not($test1)){
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore" # Create the registry entry
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore" -Name "AutoDownload" -Value 2 -PropertyType "Dword" # Assign a named entry a value to deny 
}
$test2 = Test-Path -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" # Check if Cloud Content exists in registry
if(-not($test2)){
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" # Create the registry entry
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableWindowsConsumerFeatures" -Value 1  # Assign a named entry a value to deny 
}
}
function xbox() {
}
function onedrive() {
}
function paint() {
}
function edge() {
}
function media() {
}
function photos() {
}






# Install
function choice_install() {
    # Clear the screen
    cls

    # List all options
    Write-Host "What would you like to install?

     [1] - Firefox

     [2] - Paint.net

     [3] - VLC

     [4] - CCleaner

     [5] - Winrar

   ← [B]ack
    "

    # Prompt the user to filter by status
    $readChoiceInstall = Read-Host -Prompt "Please enter an option from the list above or press 'q' to quit the program"

    # Call the next function
    choice_check_install -readChoiceInstall $readChoiceInstall
}
function choice_check_install() {
    # Convert to string
    Param([String]$readChoiceInstall)

    # Check for 1
    if ($readChoiceInstall -Match "1") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Installing Firefox..."
        Start-Sleep -Milliseconds 250

        # Call Firefox Function
        firefox
    }

        # Check for 2
    if ($readChoiceInstall -Match "2") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Installing Paint.net..."
        Start-Sleep -Milliseconds 250

        # Call paint.net Function
        paintdotnet
    }

        # Check for 3
    if ($readChoiceInstall -Match "3") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Installing VLC..."
        Start-Sleep -Milliseconds 250

        # Call VLC Function
        vlc
    }

        # Check for 4
    if ($readChoiceInstall -Match "4") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Installing CCleaner..."
        Start-Sleep -Milliseconds 250

        # Call CCleaner Function
        ccleaner
    }

        # Check for 5
    if ($readChoiceInstall -Match "5") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Installing Winrar..."
        Start-Sleep -Milliseconds 250

        # Call Winrar Function
        winrar
    }

        # Check for B
    if ($readChoiceInstall -Match "^[bB]$") {
        Write-Host -BackgroundColor Green -ForegroundColor White "Navigating to Menu..."
        Start-Sleep -Milliseconds 250

        # Clears the screen
        cls

        # Brings up options menu
        choice
    }

        # Check for Q
    if ($readChoiceInstall -Match "^[qQ]$") {
        Write-Host -BackgroundColor Red -ForegroundColor White "Exiting..."
        Start-Sleep -Milliseconds 250

        # Clears the screen
        cls

        # Exit the program
        break
    }

        # Check for other value
    if ($readChoiceInstall -NotMatch "^[qQ]$|^[bB]$|1|2|3|4|5") {
        Write-Host -BackgroundColor Red -ForegroundColor White "The specified option doesn't exist."
        Start-Sleep 2
        choice_remove
    }
}
# Functions # Consider adding Discord, Slack, Google Chrome, Sublime, Steam, Spotify, OBS # Wget
function firefox() {
$workdir = "C:\installer\" # Where to install
$test = Test-Path -Path "C:\installer\" # Check if destination exists
if(-not($test)){
    New-Item -Path $workdir -ItemType Directory # Create install location
}


$source = "https://download.mozilla.org/?product=firefox-latest&os=win64&lang=en-US" # Where to download from
$destination = "$workdir\firefox.exe" # Where to download to
Invoke-WebRequest $source -OutFile $destination # Download from source to destination

Start-Process -FilePath "$workdir\firefox.exe" -ArgumentList "/S" # Start the install

Start-Sleep -s 35 # Wait for script to finish
Write-Host -BackgroundColor Green -ForegroundColor White "Complete." # Complete prompt
Start-Sleep 2

rm -Force $workdir\f* # Remove the installer
}
function paintdotnet() {
}
function vlc() {
}
function ccleaner() {
}
function winrar() {
$workdir = "C:\installer\" # Where to install
$test = Test-Path -Path "C:\installer\" # Check if destination exists
if(-not($test)){
    New-Item -Path $workdir -ItemType Directory # Create install location
}


$source = "rarlab.com/rar/winrar-x64-620.exe" # Where to download from
$destination = "$workdir\winrar.exe" # Where to download to
Invoke-WebRequest $source -OutFile $destination # Download from source to destination

Start-Process -FilePath "$workdir\winrar.exe" -ArgumentList "/S" # Start the install

Start-Sleep -s 35 # Wait for script to finish
Write-Host -BackgroundColor Green -ForegroundColor White "Complete." # Complete prompt
Start-Sleep 2
rm -Force $workdir\w* # Remove the installer
}





# Settings
function choice_settings() {
    # Clear the screen
    cls

    # List all options
    Write-Host "What settings would you like to change?

     [1] - Light Mode

     [2] - Dark Mode

     [3] - Privacy Options

     [ ] -

     [ ] - 

   ← [B]ack
    "

    # Prompt the user to filter by status
    $readChoiceSettings = Read-Host -Prompt "Please enter an option from the list above or press 'q' to quit the program"

    # Call the next function
    choice_check_settings -readChoiceSettings $readChoiceSettings
}
function choice_check_settings() {
    # Convert to string
    Param([String]$readChoiceSettings)

    # Check for 1
    if ($readChoiceSettings -Match "1") {
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
        Start-Sleep 2

        # Call Light Function
        light
    }

        # Check for 2
    if ($readChoiceSettings -Match "2") {
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
        Start-Sleep 2

        # Call Dark Function
        dark
    }

        # Check for 3
    if ($readChoiceSettings -Match "3") {
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
        Start-Sleep 2

        # Call Privacy Function
        privacy
    }

            # Check for B
    if ($readChoiceSettings -Match "^[bB]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to Menu..."
        Start-Sleep -Milliseconds 250

        # Clears the screen
        cls

        # Brings up options menu
        choice
    }

        # Check for Q
    if ($readChoiceSettings -Match "^[qQ]$") {
        Write-Host -BackgroundColor Red -ForegroundColor White "Exiting..."
        Start-Sleep -Milliseconds 250

        # Clears the screen
        cls

        # Exit the program
        break
    }

        # Check for other value
    if ($readChoiceSettings -NotMatch "^[qQ]$|^[bB]$|1|2|3") {
        Write-Host -BackgroundColor Red -ForegroundColor White "The specified option doesn't exist."
        Start-Sleep 2
        choice_settings
    }
}
# Functions
function light() {
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 1
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 1
}
function dark() {
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 0
}
function privacy() {
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation -Name Value -Value Allow # No Permission
#HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location
#HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam
#HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone
#HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener
#HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\activity
#HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks
#HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync
#HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search
#HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics
#HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess

#HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\LooselyCoupled
#HKEY_CURRENT_USER\SOFTWARE\Microsoft\Input\TIPC
}






# Tasks # In the works needs more research
function choice_tasks() {
    # Clear the screen
    cls

    # List all options
    Write-Host "What settings would you like to change?

     - []

     - []

     - []

     - []

     - []

     ← [B]ack
    "

    # Prompt the user to filter by status
    $readChoiceSettings = Read-Host -Prompt "Please enter an option from the list above or press 'q' to quit the program"

    # Call the next function
    choice_check_settings -readChoiceSettings $readChoiceSettings
}
function choice_check_tasks() {
}
# Functions
function 1() {
}
function 2() {
}
function 3() {
}

choice
