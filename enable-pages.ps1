# Enable GitHub Pages Script
$repo = "tzquantfundsp1-art/fund-guide"

Write-Host "=== GitHub Pages Setup ===" -ForegroundColor Cyan
Write-Host ""
Write-Host "需要 GitHub Personal Access Token" -ForegroundColor Yellow
Write-Host "获取地址: https://github.com/settings/tokens" -ForegroundColor Gray
Write-Host "权限要求: 勾选 [repo]" -ForegroundColor Gray
Write-Host ""

$token = Read-Host "请输入 GitHub Token" -AsSecureString
$tokenPlain = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($token))

$headers = @{
    Authorization = "token $tokenPlain"
    Accept = "application/vnd.github+json"
}

$body = '{"source":{"branch":"main","path":"/"}}'

Write-Host ""
Write-Host "Enabling GitHub Pages..." -ForegroundColor Yellow

$response = Invoke-RestMethod -Uri "https://api.github.com/repos/$repo/pages" -Method Post -Headers $headers -Body $body -ContentType "application/json"

Write-Host ""
Write-Host "SUCCESS! GitHub Pages enabled!" -ForegroundColor Green
Write-Host ""
Write-Host "Website URL:" -ForegroundColor Cyan
Write-Host "https://tzquantfundsp1-art.github.io/fund-guide/" -ForegroundColor White
Write-Host ""
Write-Host "Wait 1-2 minutes for deployment..." -ForegroundColor Yellow
