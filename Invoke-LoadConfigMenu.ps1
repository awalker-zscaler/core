Function Invoke-LoadConfigMenu {
    $yes = New-Object System.Management.Automation.Host.ChoiceDescription '&Yes', 'PAT: Yes, load the current configuration file.'
    $no = New-Object System.Management.Automation.Host.ChoiceDescription '&No', 'PAT: No, prompt me for new data. '
    $options = [System.Management.Automation.Host.ChoiceDescription[]]($yes, $no)
    $title = 'Load existing configuration file'
    $message = 'Do you want to load the existing configuration file?'
    $result = $host.ui.PromptForChoice($title, $message, $options, 0)
    IF($result -eq 0){
        return $true
    }ELSE{
        return $false
    }
}
