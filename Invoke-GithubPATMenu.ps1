Function Invoke-GithubPATMenu {
    $yes = New-Object System.Management.Automation.Host.ChoiceDescription '&Yes', 'PAT: Yes, provide it in the next step.'
    $no = New-Object System.Management.Automation.Host.ChoiceDescription '&No', 'PAT: No, provide me with directions on how to obtain one. '
    $options = [System.Management.Automation.Host.ChoiceDescription[]]($yes, $no)
    $title = 'GitHub Personal Access Token'
    $message = 'Do you have a Github Personal Access Token to use with this script?'
    $result = $host.ui.PromptForChoice($title, $message, $options, 0)
    IF($result -eq 0){
        return Read-Host -Prompt "What is your GitHub Personal Access Token?" -AsSecureString
    }ELSE{
        Write-Host "You can configure your personal access token in Github via the following url:`n`nhttps://github.com/settings/tokens`n`nIf you do not already have it, you will need access to the https://github.com/awalker-zscaler private repositories for this script to function. "
        Write-Host "Once you have obtained a token, please come back here and relaunch this script. "
        return $null
    }
}
