$coresPerVm = 16; #hard coded, but should query the VM to get the info
$count = 0;

$resourceGroups = @("rdp", "rdp")

Write-Output "Azure Hybrid Render Virtual Machines:";

ForEach ($resourceGroup in $resourceGroups) {
    Get-AzureRmVM -ResourceGroupName $resourceGroup | ForEach-Object {  
        $count++;
        Write-Host -NoNewline "## VM " $count;
        Write-Output ""
        Start-Sleep -m 40
    }
}

Write-Output ""
Write-Output "################"
Write-Output ""
Write-Output ""
Write-Output ""

Write-Host -NoNewline "### Number of Virtual Machines: " $count;
Write-Output ""
$cores = $count*$coresPerVm
Write-Host -NoNewline "### Number of Render Cores:     " $cores;
Write-Output ""
Write-Output ""
Write-Output ""
Write-Output ""
