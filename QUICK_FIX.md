# 🚀 حل سريع لمشكلة صور البوتس

## المشكلة
صور البوتس لا تظهر على GitHub Pages مع أن الموقع يعمل بشكل جيد.

## السبب المحتمل
مجلد `images/` لم يتم رفعه تلقائياً مع بقية الملفات.

## الحل السريع

### 1. رفع مجلد الصور يدوياً
```bash
# استخدم GitHub CLI (أسهل وأسرع)
gh repo upload YOUR_USERNAME/pothos-gallery images/
```

### 2. التحقق الفوري
```bash
# تحقق من وجود الصور
gh repo view YOUR_USERNAME/pothos-gallery/tree/main/images
```

### 3. إجبار التحديث
```bash
# إجبار GitHub Pages على التحديث
gh api repos/YOUR_USERNAME/pothos-gallery/pages/builds -X DELETE
```

## ملاحظات
- هذا الحل يتجاوز مشكلة رفع الملفات الكبيرة
- GitHub CLI أفضل للملفات الكبيرة
- بعد الرفع، انتظر 5-10 دقائق لتفعيل GitHub Pages

## النتيجة المتوقعة
🌐 **رابط الموقع:** https://YOUR_USERNAME.github.io/pothos-gallery/
📱 **جميع الصور:** تعمل بشكل مثالي
