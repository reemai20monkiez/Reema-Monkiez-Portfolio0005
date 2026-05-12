# 📥 تعليمات تنزيل الصور من Imgur

## الخطوات المطلوبة

### 1. تنزيل الصور من روابط Imgur

**الروابط المباشرة للصور:**

1. https://i.imgur.com/pohewvjh.jpg → 1-two-leaves.jpg
2. https://i.imgur.com/0r1simZh.jpg → 2-fresh-leaves.jpg  
3. https://i.imgur.com/Wyl1qBwh.jpg → 3-quiet-growth.jpg
4. https://i.imgur.com/QuliXIxh.jpg → 4-young-leaves.jpg
5. https://i.imgur.com/R2fgNiEh.jpg → 5-start-trailing.jpg
6. https://i.imgur.com/laVWN3Hh.jpg → 6-study-corner.jpg
7. https://i.imgur.com/oFZoC5Uh.jpg → 7-lush-growth.jpg
8. https://i.imgur.com/gGrIUUuh.jpg → 8-full-bloom.jpg
9. https://i.imgur.com/hzBYiKAh.jpg → 9-elegant-trailing.jpg
10. https://i.imgur.com/bTXlB9ch.jpg → 10-stretching-journey.jpg
11. https://i.imgur.com/mlunWesh.jpg → 11-long-to-floor.jpg
12. https://i.imgur.com/hpjJ6pFh.jpg → 12-peak-growth.jpg

### 2. كيفية التنزيل

**الطريقة الأولى (مباشرة):**
1. افتح كل رابط في المتصفح
2. انقر بزر الماوس الأيمن على الصورة
3. اختر "Save image as..." أو "حفظ الصورة باسم..."
4. احفظ الصورة باسم المطلوب في مجلد `images`

**الطريقة الثانية (سريعة):**
```bash
# استخدم هذه الأوامر في PowerShell (Windows)
mkdir -p images
cd images

# قم بتنزيل كل صورة
Invoke-WebRequest -Uri "https://i.imgur.com/pohewvjh.jpg" -OutFile "1-two-leaves.jpg"
Invoke-WebRequest -Uri "https://i.imgur.com/0r1simZh.jpg" -OutFile "2-fresh-leaves.jpg"
# وهكذا لبقية الصور...
```

### 3. التحقق من الملفات

بعد التنزيل، تأكد من وجود هذه الملفات:
```
images/
├── 1-two-leaves.jpg
├── 2-fresh-leaves.jpg
├── 3-quiet-growth.jpg
├── 4-young-leaves.jpg
├── 5-start-trailing.jpg
├── 6-study-corner.jpg
├── 7-lush-growth.jpg
├── 8-full-bloom.jpg
├── 9-elegant-trailing.jpg
├── 10-stretching-journey.jpg
├── 11-long-to-floor.jpg
└── 12-peak-growth.jpg
```

### 4. رفع الملفات إلى GitHub

1. تأكد من وجود مجلد `images/` بجانب `index.html`
2. افتح GitHub Desktop
3. قم بعمل commit و push للمشروع
4. تأكد من تفعيل GitHub Pages

### ملاحظات هامة

- ✅ **تم تحديث ملف index.html** ليستخدم روابط نسبية `./images/`
- ✅ **تم إنشاء مجلد images/** فارغ
- 🔄 **بقي تنزيل الصور** من Imgur ووضعها في المجلد
- 📁 **الهيكل النهائي** جاهز لرفع إلى GitHub

### 5. روابط مساعدة

**روابط الصور الأصلية من Imgur:**
- https://imgur.com/pohewvj
- https://imgur.com/0r1simZ  
- https://imgur.com/Wyl1qBw
- https://imgur.com/QuliXIx
- https://imgur.com/R2fgNiE
- https://imgur.com/laVWN3H
- https://imgur.com/oFZoC5U
- https://imgur.com/gGrIUUu
- https://imgur.com/hzBYiKA
- https://imgur.com/bTXlB9c
- https://imgur.com/mlunWes
- https://imgur.com/hpjJ6pF

**بعد التنزيل والرفع، الموقع سيعمل بشكل مثالي على GitHub Pages!** 🚀
