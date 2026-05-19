# ✍️ Yazi Donusturucu — Guncelleme Scripti
# Kullanim: Bu dosyaya cift tikla veya PowerShell'de calistir

$source = "C:\Users\oncel\OneDrive\Documents\MEDYA\Final\✍️ Çok Formatlı Yazı Dönüştürücü.html"
$dest   = "C:\Users\oncel\Projects\yazi-donusturucu\index.html"
$repo   = "C:\Users\oncel\Projects\yazi-donusturucu"

Write-Host "Kaynak dosya kopyalanıyor..." -ForegroundColor Cyan
Copy-Item $source $dest -Force

Set-Location $repo
git add index.html

$msg = Read-Host "Commit mesajı (boş bırakırsan otomatik tarih kullanılır)"
if (-not $msg) { $msg = "Update: $(Get-Date -Format 'yyyy-MM-dd HH:mm')" }

git commit -m $msg
git push

Write-Host ""
Write-Host "✅ GitHub'a yüklendi!" -ForegroundColor Green
Write-Host "🌐 https://aliosmanoncel.github.io/yazi-donusturucu/" -ForegroundColor Yellow
Write-Host ""
pause
