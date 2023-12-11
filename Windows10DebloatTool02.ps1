######################
# Windows Debloat Tool
# avon
######################


# Main Menu
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
    Write-Host "           [4] - Work in Progress"
    Write-Host ""
    Write-Host "           [5] - Backup Operating System"
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
        choice_temp

        # Go back to options
        choice
    }

        # Check for 5
    if ($userChoice -Match "5") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to menu..."
        Start-Sleep -Milliseconds 250
        choice_backup

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
    if ($readStatus -NotMatch "1|2|3|4|5|^[qQ]$") {
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

     [5] - 3D Builder

     [6] - Calendar & Mail

     [7] - Photos

     [8] - More...

   ← [B]ack
    "

    # Prompt the user to filter by status
    $readChoiceRemove = Read-Host -Prompt "Please enter an option from the list above or press 'b' to go back."

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
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 2
    if ($readChoiceRemove -Match "2") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Xbox..."
        Start-Sleep -Milliseconds 250

        # Call Xbox Function
        xbox
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 3
    if ($readChoiceRemove -Match "3") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing OneDrive..."
        Start-Sleep -Milliseconds 250

        # Call OneDrive Function
        onedrive
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 4
    if ($readChoiceRemove -Match "4") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Paint..."
        Start-Sleep -Milliseconds 250

        # Call Photos Function
        paint
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 5
    if ($readChoiceRemove -Match "5") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing 3D Builder..."
        Start-Sleep -Milliseconds 250

        # Call 3D Builder Function
        builder
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 6
    if ($readChoiceRemove -Match "6") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Calendar & Mail..."
        Start-Sleep -Milliseconds 250

        # Call Calendar & Mail Function
        calendar_mail
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 7
    if ($readChoiceRemove -Match "7") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Photos..."
        Start-Sleep -Milliseconds 250

        # Call Photos Function
        photos
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 8
    if ($readChoiceRemove -Match "8") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to menu..."
        Start-Sleep -Milliseconds 250

        # Clears the screen
        cls

        # Call next menu
        choice_remove_more
    }

        # Check for B
    if ($readChoiceRemove -Match "^[bB]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to Menu..."
        Start-Sleep -Milliseconds 250

        # Clears the screen
        cls

        # Brings up options menu
        choice
    }

        # Check for other value
    if ($readChoiceRemove -NotMatch "1|2|3|4|5|6|7|8|^[bB]$") {
        Write-Host -BackgroundColor Red -ForegroundColor White "The specified status doesn't exist."
        Start-Sleep 2
        choice_remove
    }
}


# Remove More
function choice_remove_more() {
    # Clear the screen
    cls

    # List all options
    Write-Host "What would you like to remove?

     [1] - News

     [2] - Sports

     [3] - People

     [4] - OneNote

     [5] - Phone

     [6] - Weather

     [7] - Groove Music

     [8] - More...

   ← [B]ack
    "

    # Prompt the user to filter by status
    $readChoiceRemoveMore = Read-Host -Prompt "Please enter an option from the list above or press 'b' to go back."

    # Call the next function
    choice_check_remove_more -readChoiceRemoveMore $readChoiceRemoveMore
}
function choice_check_remove_more() {
    # Convert to string
    Param([String]$readChoiceRemoveMore)

        # Check for 1
    if ($readChoiceRemoveMore -Match "1") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing News..."
        Start-Sleep -Milliseconds 250

        # Call News Function
        news
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 2
    if ($readChoiceRemoveMore -Match "2") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Sports..."
        Start-Sleep -Milliseconds 250

        # Call Sports Function
        sports
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 3
    if ($readChoiceRemoveMore -Match "3") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing People..."
        Start-Sleep -Milliseconds 250

        # Call People Function
        people
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 4
    if ($readChoiceRemoveMore -Match "4") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing OneNote..."
        Start-Sleep -Milliseconds 250

        # Call OneNote Function
        onenote
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 5
    if ($readChoiceRemoveMore -Match "5") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Phone..."
        Start-Sleep -Milliseconds 250

        # Call Phone Function
        phone
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 6
    if ($readChoiceRemoveMore -Match "6") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Weather..."
        Start-Sleep -Milliseconds 250

        # Call Weather Function
        weather
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 7
    if ($readChoiceRemoveMore -Match "7") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Groove Music..."
        Start-Sleep -Milliseconds 250

        # Call Music Function
        music
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 8
    if ($readChoiceRemoveMore -Match "8") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to menu..."
        Start-Sleep -Milliseconds 250

        # Clears the screen
        cls

        # Call next menu
        choice_remove_more_more
    }

        # Check for B
    if ($readChoiceRemoveMore -Match "^[bB]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to Menu..."
        Start-Sleep -Milliseconds 250

        # Clears the screen
        cls

        # Brings up options menu
        choice_remove
    }

        # Check for other value
    if ($readChoiceRemoveMore -NotMatch "1|2|3|4|5|6|7|8|^[bB]$") {
        Write-Host -BackgroundColor Red -ForegroundColor White "The specified status doesn't exist."
        Start-Sleep 2
        choice_remove_more
    }
}


# Remove Even More
function choice_remove_more_more() {
    # Clear the screen
    cls

    # List all options
    Write-Host "What would you like to remove?

     [1] - Maps

     [2] - Skype

     [3] - Money

     [4] - Solitaire Collection

     [5] - Movies & TV

   ← [B]ack
    "

    # Prompt the user to filter by status
    $readChoiceRemoveMoreMore = Read-Host -Prompt "Please enter an option from the list above or press 'b' to go back."

    # Call the next function
    choice_check_remove_more_more -readChoiceRemoveMore $readChoiceRemoveMoreMore
}
function choice_check_remove_more_more() {
    # Convert to string
    Param([String]$readChoiceRemoveMoreMore)

        # Check for 1
    if ($readChoiceRemoveMoreMore -Match "1") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Maps..."
        Start-Sleep -Milliseconds 250

        # Call Maps Function
        maps
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 2
    if ($readChoiceRemoveMoreMore -Match "2") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Skype..."
        Start-Sleep -Milliseconds 250

        # Call Skype Function
        skype
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 3
    if ($readChoiceRemoveMoreMore -Match "3") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Money..."
        Start-Sleep -Milliseconds 250

        # Call Money Function
        money
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 4
    if ($readChoiceRemoveMoreMore -Match "4") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Solitaire Collection..."
        Start-Sleep -Milliseconds 250

        # Call Solitaire Collection Function
        solitaire
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for 5
    if ($readChoiceRemoveMoreMore -Match "5") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Movies & TV..."
        Start-Sleep -Milliseconds 250

        # Call Movies & TV Function
        movie
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
    }

        # Check for B
    if ($readChoiceRemoveMoreMore -Match "^[bB]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to Menu..."
        Start-Sleep -Milliseconds 250

        # Clears the screen
        cls

        # Brings up options menu
        choice_remove_more
    }

        # Check for other value
    if ($readChoiceRemoveMoreMore -NotMatch "1|2|3|4|5|^[bB]$") {
        Write-Host -BackgroundColor Red -ForegroundColor White "The specified status doesn't exist."
        Start-Sleep 2
        choice_remove_more_more
    }
}


# Remove Functions
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
Get-AppxPackage *xboxapp* | Remove-AppxPackage -AllUsers # Uninstall the software
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
function onedrive() {
taskkill /f /im OneDrive.exe # Kill the process

cmd -c "%SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall" # Uninstall the software

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
function paint() {
Get-AppxPackage Microsoft.MSPaint | Remove-AppxPackage -AllUsers # Uninstall the software
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
function builder() {
Get-AppxPackage *3dbuilder* | Remove-AppxPackage # Uninstall the software
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
function calendar_mail() {
Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage # Uninstall the software
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
function photos() {
Get-AppxPackage *photos* | Remove-AppxPackage # Uninstall the software
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
function news() {
Get-AppxPackage *bingnews* | Remove-AppxPackage # Uninstall the software
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
function sports() {
Get-AppxPackage *bingsports* | Remove-AppxPackage # Uninstall the software
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
function people() {
Get-AppxPackage *people* | Remove-AppxPackage # Uninstall the software
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
function onenote() {
Get-AppxPackage *onenote* | Remove-AppxPackage # Uninstall the software
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
function phone() {
Get-AppxPackage *windowsphone* | Remove-AppxPackage # Uninstall the software
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
function weather() {
Get-AppxPackage *bingweather* | Remove-AppxPackage # Uninstall the software
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
function music() {
Get-AppxPackage *zunemusic* | Remove-AppxPackage # Uninstall the software
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
function maps() {
Get-AppxPackage *windowsmaps* | Remove-AppxPackage # Uninstall the software
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
function skype() {
Get-AppxPackage *skypeapp* | Remove-AppxPackage # Uninstall the software
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
function money() {
Get-AppxPackage *bingfinance* | Remove-AppxPackage # Uninstall the software
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
function solitaire() {
Get-AppxPackage *solitairecollection* | Remove-AppxPackage # Uninstall the software
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
function movie() {
Get-AppxPackage *zunevideo* | Remove-AppxPackage # Uninstall the software
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

     [6] - Steam

     [7] - Dropbox

     [8] - Spotify

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

        # Check for 6
    if ($readChoiceInstall -Match "6") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Installing Steam..."
        Start-Sleep -Milliseconds 250

        # Call Steam Function
        steam
    }

        # Check for 7
    if ($readChoiceInstall -Match "7") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Installing Dropbox..."
        Start-Sleep -Milliseconds 250

        # Call Dropbox Function
        dropbox
    }

        # Check for 8
    if ($readChoiceInstall -Match "8") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Installing Google Chrome..."
        Start-Sleep -Milliseconds 250

        # Call Google Chrome Function
        chrome
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

        # Check for other value
    if ($readChoiceInstall -NotMatch "^[bB]$|1|2|3|4|5|6|7|8") {
        Write-Host -BackgroundColor Red -ForegroundColor White "The specified option doesn't exist."
        Start-Sleep 2
        choice_remove
    }
}


# Install Functions
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
function steam() {
$workdir = "C:\installer\" # Where to install
$test = Test-Path -Path "C:\installer\" # Check if destination exists
if(-not($test)){
    New-Item -Path $workdir -ItemType Directory # Create install location
}


$source = "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe" # Where to download from
$destination = "$workdir\steam.exe" # Where to download to
Invoke-WebRequest $source -OutFile $destination # Download from source to destination

Start-Process -FilePath "$workdir\steam.exe" -ArgumentList "/S" # Start the install

Start-Sleep -s 35 # Wait for script to finish
Write-Host -BackgroundColor Green -ForegroundColor White "Complete." # Complete prompt
Start-Sleep 2

rm -Force $workdir\st* # Remove the installer
}
function dropbox() {
$workdir = "C:\installer\" # Where to install
$test = Test-Path -Path "C:\installer\" # Check if destination exists
if(-not($test)){
    New-Item -Path $workdir -ItemType Directory # Create install location
}


$source = "https://www.dropbox.com/download?os=win&plat=win&ref=edshelf&rtoken=78oA94RFNaqbnTLDjxZy2c%2Bpv9G%2FW0%2FfevRV2Ja05H0%3D" # Where to download from
$destination = "$workdir\dropbox.exe" # Where to download to
Invoke-WebRequest $source -OutFile $destination # Download from source to destination

Start-Process -FilePath "$workdir\dropbox.exe" -ArgumentList "/S" # Start the install

Start-Sleep -s 35 # Wait for script to finish
Write-Host -BackgroundColor Green -ForegroundColor White "Complete." # Complete prompt
Start-Sleep 2

rm -Force $workdir\d* # Remove the installer
}
function spotify() {
$workdir = "C:\installer\" # Where to install
$test = Test-Path -Path "C:\installer\" # Check if destination exists
if(-not($test)){
    New-Item -Path $workdir -ItemType Directory # Create install location
}


$source = "https://download.scdn.co/SpotifySetup.exe" # Where to download from
$destination = "$workdir\spotify.exe" # Where to download to
Invoke-WebRequest $source -OutFile $destination # Download from source to destination

Start-Process -FilePath "$workdir\spotify.exe" -ArgumentList "/S" # Start the install

Start-Sleep -s 35 # Wait for script to finish
Write-Host -BackgroundColor Green -ForegroundColor White "Complete." # Complete prompt
Start-Sleep 2

rm -Force $workdir\sp* # Remove the installer
}
function chrome() {
$workdir = "C:\installer\" # Where to install
$test = Test-Path -Path "C:\installer\" # Check if destination exists
if(-not($test)){
    New-Item -Path $workdir -ItemType Directory # Create install location
}


$source = "https://www.google.com/chrome/next-steps.html?statcb=1&installdataindex=empty&defaultbrowser=0#" # Where to download from
$destination = "$workdir\ChromeSetup.exe" # Where to download to
Invoke-WebRequest $source -OutFile $destination # Download from source to destination

Start-Process -FilePath "$workdir\chrome.exe" -ArgumentList "/S" # Start the install

Start-Sleep -s 35 # Wait for script to finish
Write-Host -BackgroundColor Green -ForegroundColor White "Complete." # Complete prompt
Start-Sleep 2

rm -Force $workdir\ch* # Remove the installer
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

     [4] - App Settings 

     [5] - Windows Settings

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


# Settings Functions
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


# Work in Progress
function choice_temp () {
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
function choice_check_temp() {
}


# Tasks Functions
function 1() {
}
function 2() {
}
function 3() {
}


# Backup
function choice_backup() {
    # Clear the screen
    cls

    # List all options
    Write-Host "==================================================="
    Write-Host "=                  Backup to USB                  ="
    Write-Host "==================================================="
    Write-Host ""
    Write-Host "           [1] - Attended"
    Write-Host ""
    Write-Host "           [2] - Unattended"
    Write-Host ""
    Write-Host "           [3] - Sysprep"
    Write-Host ""
    Write-Host "           [4] - ISO and product key"
    Write-Host ""
    Write-Host "           [5] - Full backup"
    Write-Host ""
    Write-Host "         ← [B] - Back"
    Write-Host ""
    Write-Host "======================================================="
 

    # Prompt the user to filter by status
    $readChoiceBackup = Read-Host -Prompt "Please enter an option from above or press 'q' to quit"

    # Call the next function
    choice_check_backup -userChoice $readChoiceBackup
}
function choice_check_backup() {
    # Convert to string
    Param([String]$userChoice)

    # Check for 1
    if ($userChoice -Match "1") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to menu..."
        Start-Sleep -Milliseconds 250
        #choice_remove

        # Go back to options
        choice
    }

    # Check for 2
    if ($userChoice -Match "2") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to menu..."
        Start-Sleep -Milliseconds 250
        #choice_install

        # Go back to options
        choice
    }

    # Check for 3
    if ($userChoice -Match "3") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to menu..."
        Start-Sleep -Milliseconds 250
        #choice_settings

        # Go back to options
        choice
    }

        # Check for 4
    if ($userChoice -Match "4") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to menu..."
        Start-Sleep -Milliseconds 250
        #choice_temp

        # Go back to options
        choice
    }

        # Check for 5
    if ($userChoice -Match "5") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to menu..."
        Start-Sleep -Milliseconds 250
        #choice_backup

        # Go back to options
        choice
    }

    # Check for quit
    if ($readStatus -Match "^[bB]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to menu..."
        Start-Sleep -Milliseconds -250

        # Stop executing and quit the script
        cls
    }

    # Check for other value
    if ($readStatus -NotMatch "^[bB]$|1|2|3|4|5") {
        Write-Host -BackgroundColor Red -ForegroundColor White "The specified option doesn't exist."
        Start-Sleep 2
        choice_backup
    }
}

choice
