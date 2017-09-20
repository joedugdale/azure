$uri = "https://s8events.azure-automation.net/webhooks?token=Dt%2fuh6WrXP06FNGeXBxZfPqXqC%2boPQu98gziZjKhJoM%3d"
$headers = @{"From"="user@contoso.com";"Date"="09/20/2017 15:47:00"}

$myvars  = @(
    @{AzureResourceGroup="Mocatad_EV17_AS";Shutdown="true" }
)

$body = ConvertTo-Json -InputObject $myvars 

$response = Invoke-RestMethod -Method Post -Uri $uri -Headers $headers -Body $body

Write-Output $response.JobIds 


