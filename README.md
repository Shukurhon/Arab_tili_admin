# Arab Tili — Admin Panel

Bu repo "Arab Tili" ilovasi uchun admin panelni o'z ichiga oladi. Panel Firebase (Auth + Firestore) bilan to'g'ridan-to'g'ri ishlaydi, server kerak emas — statik `index.html`.

## GitHub Pages orqali joylashtirish

1. Bu repo GitHub'ga push qilingandan keyin: **Settings → Pages**
2. **Source**: `Deploy from a branch`
3. **Branch**: `main` / `master`, papka: `/ (root)`
4. Saqlang — bir necha daqiqadan keyin sayt manzili tayyor bo'ladi (masalan `https://username.github.io/repo-nomi/`)

## Kirish nazorati

Panelga faqat quyidagi Google email'lar kirishi mumkin (kodda `ADMIN_EMAILS` massivida belgilangan):
- zeroup.uz@gmail.com
- skukurrespekt@gmail.com

**Muhim:** Bu tekshiruv hozircha faqat client-side (JavaScript) darajasida ishlaydi. To'liq xavfsizlik uchun Firebase Console'da Firestore Security Rules orqali ham faqat shu email'larga `users`/`notifications` kolleksiyalariga ruxsat berilganini tekshiring.

## Mahalliy ishga tushirish (ixtiyoriy)

```
dart serve.dart
```
yoki `admin.bat` faylini ishga tushiring — `http://localhost:8080` da ochiladi.
