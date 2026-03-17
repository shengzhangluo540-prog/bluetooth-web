$ErrorActionPreference = "Stop"

$sourceFile = "D:\project\freertos\web界面\手机网页\蓝牙V2.1.HTML"
$targetFile = "D:\project\手机控制网页\index.html"

if (-not (Test-Path -LiteralPath $sourceFile)) {
    throw "Source file not found: $sourceFile"
}

Copy-Item -LiteralPath $sourceFile -Destination $targetFile -Force
Write-Host "Synced to $targetFile"

if (Test-Path -LiteralPath "D:\project\手机控制网页\.git") {
    git -C "D:\project\手机控制网页" add index.html

    $status = git -C "D:\project\手机控制网页" status --porcelain -- index.html
    if ($status) {
        $message = "Update site " + (Get-Date -Format "yyyy-MM-dd HH:mm:ss")
        git -C "D:\project\手机控制网页" commit -m $message
        git -C "D:\project\手机控制网页" push
    } else {
        Write-Host "No changes to commit."
    }
} else {
    Write-Host "Git repo not initialized yet. File sync completed."
}
