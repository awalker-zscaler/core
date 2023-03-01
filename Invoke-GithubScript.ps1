Function Invoke-GithubScript {
    param(
        [Parameter(Mandatory=$true)][string]$owner,
        [Parameter(Mandatory=$true)][string]$repo,
        [Parameter(Mandatory=$true)][string]$script,
        [Parameter(Mandatory=$true)][string]$token,
        [Parameter(Mandatory=$false)][switch]$download
    )
    $baseurl = "https://raw.githubusercontent.com/$owner/$repo/main"
    $tokenheaders = @{"Authorization"="token $token";"Accept"= "application/vnd.github.v3.raw"}
    $scripturl="$baseurl/$script"
    $content = Invoke-WebRequest -Uri $scripturl -Headers $tokenheaders -UseBasicParsing |Select-Object -ExpandProperty Content 
    IF($download){return $content}
    ELSE{Invoke-Expression $content}
}
