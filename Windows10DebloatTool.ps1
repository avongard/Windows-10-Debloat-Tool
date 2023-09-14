# Windows Debloat Tool
function choice() {
    # Clear the screen
    cls

    # List all options
    Write-Host "======================================================="
    Write-Host "=               Windows 10 Debloat Tool               ="
    Write-Host "======================================================="
    Write-Host ""
    Write-Host "                    - [R]emove"
    Write-Host ""
    Write-Host "                    - [S]ettings"
    Write-Host ""
    Write-Host "                    - [I]nstall"
    Write-Host ""
    Write-Host "                    - [T]asks"
    Write-Host ""
    Write-Host "============================================================================"
 

    # Prompt the user to filter by status
    $readChoice = Read-Host -Prompt "Please enter an option from the list above or press 'q' to quit the program"

    # Call the next function
    choice_check -userChoice $readChoice
}
function choice_check() {
    # Convert to string
    Param([String]$userChoice)

    # Check for R
    if ($userChoice -Match "^[rR]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to menu..."
        Start-Sleep -Milliseconds 250
        choice_remove

        # Go back to options
        choice
    }

    # Check for I
    if ($userChoice -Match "^[iI]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to menu..."
        Start-Sleep -Milliseconds 250
        choice_install

        # Go back to options
        choice
    }

    # Check for S
    if ($userChoice -Match "^[sS]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Navigating to menu..."
        Start-Sleep -Milliseconds 250
        choice_settings

        # Go back to options
        choice
    }

        # Check for T
    if ($userChoice -Match "^[tT]$") {
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
    if ($readStatus -NotMatch "^[qQ]$|^[rR]$|^[sS]$|^[iI]$|^[tT]$") {
        Write-Host -BackgroundColor Red -ForegroundColor White "The specified option doesn't exist."
        Start-Sleep 2
        choice
    }
}






# [R]emove
function choice_remove() {
    # Clear the screen
    cls

    # List all options
    Write-Host "What would you like to remove?

     - [C]ortana

     - [X]box

     - [O]neDrive

     - [P]aint

     - [E]dge

     - [M]edia Player

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

    # Check for C
    if ($readChoiceRemove -Match "^[cC]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Cortana..."
        Start-Sleep -Milliseconds 250

        # Call Cortana Function
        cortana
    }

        # Check for X
    if ($readChoiceRemove -Match "^[xX]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Xbox..."
        Start-Sleep -Milliseconds 250

        # Call Xbox Function
        xbox
    }

        # Check for O
    if ($readChoiceRemove -Match "^[oO]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing OneDrive..."
        Start-Sleep -Milliseconds 250

        # Call OneDrive Function
        onedrive
    }

        # Check for P
    if ($readChoiceRemove -Match "^[pP]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Photos..."
        Start-Sleep -Milliseconds 250

        # Call Photos Function
        photos
    }

        # Check for E
    if ($readChoiceRemove -Match "^[eE]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Microsoft Edge..."
        Start-Sleep -Milliseconds 250

        # Call Edge Function
        edge
    }

        # Check for M
    if ($readChoiceRemove -Match "^[mM]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Removing Windows Media Player..."
        Start-Sleep -Milliseconds 250

        # Call Media Function
        media
    }

        # Check for B
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
    if ($readStatus -NotMatch "^[qQ]$|^[cC]$|^[xX]$|^[oO]$|^[eE]$|^[pP]$|^[mM]$|^[bB]$") {
        Write-Host -BackgroundColor Red -ForegroundColor White "The specified status doesn't exist."
        Start-Sleep 2
        choice_remove
    }
}
# Functions
function cortana() {
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






# [I]nstall
function choice_install() {
    # Clear the screen
    cls

    # List all options
    Write-Host "What would you like to install?

     - [F]irefox

     - [P]aint.net

     - [V]LC

     - [C]Cleaner

     - [W]inrar

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

    # Check for F
    if ($readChoiceInstall -Match "^[fF]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Installing Firefox..."
        Start-Sleep -Milliseconds 250

        # Call Firefox Function
        firefox
    }

        # Check for X
    if ($readChoiceInstall -Match "^[pP]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Installing Paint.net..."
        Start-Sleep -Milliseconds 250

        # Call paint.net Function
        paintdotnet
    }

        # Check for V
    if ($readChoiceInstall -Match "^[vV]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Installing VLC..."
        Start-Sleep -Milliseconds 250

        # Call VLC Function
        vlc
    }

        # Check for C
    if ($readChoiceInstall -Match "^[cC]$") {
        Write-Host -BackgroundColor Yellow -ForegroundColor White "Installing CCleaner..."
        Start-Sleep -Milliseconds 250

        # Call CCleaner Function
        ccleaner
    }

        # Check for W
    if ($readChoiceInstall -Match "^[wW]$") {
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
    if ($readChoiceInstall -NotMatch "^[qQ]$|^[Ff]$|^[pP]$|^[vV]$|^[cC]$|^[wW]$|^[bB]$") {
        Write-Host -BackgroundColor Red -ForegroundColor White "The specified option doesn't exist."
        Start-Sleep 2
        choice_remove
    }
}
# Functions
function firefox() {
}
function paintdotnet() {
}
function vlc() {
}
function ccleaner() {
}
function winrar() {
}

# Consider adding Discord, Slack, Google Chrome, Sublime, Steam, Spotify, OBS




# [S]ettings
function choice_settings() {
    # Clear the screen
    cls

    # List all options
    Write-Host "What settings would you like to change?

     - [L]ight Mode

     - [D]ark Mode

     - [P]rivacy Options

     - []

     - []

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

    # Check for L
    if ($readChoiceSettings -Match "^[lL]$") {
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
        Start-Sleep 2

        # Call Light Function
        light
    }

        # Check for D
    if ($readChoiceSettings -Match "^[dD]$") {
        Write-Host -BackgroundColor Green -ForegroundColor White "Complete."
        Start-Sleep 2

        # Call Dark Function
        dark
    }

        # Check for P
    if ($readChoiceSettings -Match "^[pP]$") {
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
    if ($readChoiceSettings -NotMatch "^[qQ]$|^[bB]$|^[dD]$|^[lL]$") {
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






# [T]asks
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