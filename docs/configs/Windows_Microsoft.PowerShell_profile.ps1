function prompt {
    $workingdir = Split-Path -Leaf $pwd

    # Generate the ESC character compatible with PowerShell 5.1
    $esc = $([char]27)

    # Define your custom RGB colors (Red;Green;Blue)
    $userColor = "$esc[38;2;44;91;115m"     
    $hostColor = "$esc[38;2;153;203;168m"   
    $dirColor  = "$esc[38;2;206;203;165m"   
    $AtColor   = "$esc[38;2;124;12;158m"
    $DollarColor = "$esc[38;2;48;182;130m"
    $reset     = "$esc[0m"                     # Resets color back to default

    # Build and print the prompt string
    Write-Host "${DollarColor}[${reset}${userColor}$env:USERNAME${reset}${AtColor}@${reset}${hostColor}$env:COMPUTERNAME${reset} ${dirColor}$workingdir${reset}${DollarColor}]`$${reset}" -NoNewline
    return " "
    Set-PSReadLineOption -PredictionSource None
}
