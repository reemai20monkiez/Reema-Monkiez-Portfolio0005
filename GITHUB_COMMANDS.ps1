# 🚀 أوامر رفع الموقع إلى GitHub

# الخطوة 1: التحقق من المجلد الحالي
Write-Host "🔍 التحقق من المجلد الحالي..." -ForegroundColor Green
Get-ChildItem -Path ".\images" -ErrorAction SilentlyContinue
if ($?) {
    Write-Host "✅ مجلد images موجود" -ForegroundColor Green
} else {
    Write-Host "❌ مجلد images غير موجود" -ForegroundColor Red
    Write-Host "⚠️ جاري إنشاء المجلد..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Path ".\images" -Force
    Write-Host "✅ تم إنشاء مجلد images" -ForegroundColor Green
}

# الخطوة 2: تنزيل الصور من Imgur
Write-Host "📥 بدء تنزيل الصور من Imgur..." -ForegroundColor Cyan

# روابط الصور
$imageUrls = @(
    "https://i.imgur.com/pohewvjh.jpg",
    "https://i.imgur.com/0r1simZh.jpg", 
    "https://i.imgur.com/Wyl1qBwh.jpg",
    "https://i.imgur.com/QuliXIxh.jpg",
    "https://i.imgur.com/R2fgNiEh.jpg",
    "https://i.imgur.com/laVWN3Hh.jpg",
    "https://i.imgur.com/oFZoC5Uh.jpg",
    "https://i.imgur.com/gGrIUUuh.jpg",
    "https://i.imgur.com/hzBYiKAh.jpg",
    "https://i.imgur.com/bTXlB9ch.jpg",
    "https://i.imgur.com/mlunWesh.jpg",
    "https://i.imgur.com/hpjJ6pFh.jpg"
)

# أسماء الملفات
$fileNames = @(
    "1-two-leaves.jpg",
    "2-fresh-leaves.jpg",
    "3-quiet-growth.jpg",
    "4-young-leaves.jpg",
    "5-start-trailing.jpg",
    "6-study-corner.jpg",
    "7-lush-growth.jpg",
    "8-full-bloom.jpg",
    "9-elegant-trailing.jpg",
    "10-stretching-journey.jpg",
    "11-long-to-floor.jpg",
    "12-peak-growth.jpg"
)

# تنزيل الصور
for ($i = 0; $i -lt $imageUrls.Length; $i++) {
    $progress = [math]::Round(($i + 1) / $imageUrls.Length * 100)
    Write-Progress -Activity "تنزيل الصور" -Status "تنزيل الصورة $($i + 1)/$($imageUrls.Length)" -PercentComplete $progress
    
    try {
        Invoke-WebRequest -Uri $imageUrls[$i] -OutFile ".\images\$($fileNames[$i])" -ErrorAction Stop
        Write-Host "✅ تم تنزيل: $($fileNames[$i])" -ForegroundColor Green
    }
    catch {
        Write-Host "❌ فشل تنزيل: $($fileNames[$i])" -ForegroundColor Red
    }
    
    Start-Sleep -Seconds 1
}

Write-Progress -Activity "تنزيل الصور" -Completed -Status "اكتمل تنزيل جميع الصور" -PercentComplete 100
Write-Host "🎉 تم تنزيل جميع الصور بنجاح!" -ForegroundColor Green

# الخطوة 3: تهيئة Git
Write-Host "🔧 تهيئة Git..." -ForegroundColor Yellow

git init
git add .
git commit -m "✨ تحديث معرض البوتس - روابط نسبية + تنسيق محسن"

# الخطوة 4: رفع إلى GitHub
Write-Host "📤 رفع إلى GitHub..." -ForegroundColor Magenta

# استبدل هذه بمعلومات المستودع الفعلي
$githubUser = "Reema-Monkiez-Portfolio0005"
$repoName = "Reema-Monkiez-Portfolio0005"

git remote add origin https://github.com/$githubUser/$repoName.git
git push -u origin main

Write-Host "🚀 تم رفع الموقع إلى GitHub!" -ForegroundColor Green
Write-Host ""
Write-Host "🌐 رابط الموقع: https://$githubUser.github.io/$repoName/" -ForegroundColor Cyan
Write-Host ""
Write-Host "📝 ملاحظات:" -ForegroundColor Yellow
Write-Host "   - لا تنس تغيير YOUR_USERNAME باسم المستخدم الفعلي" -ForegroundColor White
Write-Host "   - قد يستغرق تفعيل GitHub Pages بضع دقائق" -ForegroundColor White
Write-Host "   - تحقق من الموقع بعد بضع دقائق" -ForegroundColor White

# افتح الموقع
Start-Process "https://$githubUser.github.io/$repoName/"
