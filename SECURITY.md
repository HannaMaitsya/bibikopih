# Keamanan & Deployment — Bikopih

## File konfigurasi sensitif

- **`.env` TIDAK boleh dibagikan** (via ZIP, Git, screenshot, atau chat). File ini
  berisi `APP_KEY`, kredensial database, dan konfigurasi lain.
- `.gitignore` sudah mengecualikan `.env`, dan `.gitattributes` menambahkan
  `export-ignore` sehingga `git archive` / paket distribusi tidak menyertakannya.
- Saat membagikan proyek, **hapus dulu `.env` asli** dan sertakan hanya `.env.example`.
  Penerima menjalankan:
  ```
  cp .env.example .env
  php artisan key:generate
  ```

## Jika `.env` pernah terekspos (kebocoran)

Lakukan rotasi kredensial berikut:

1. **APP_KEY** — sudah dirotasi. Untuk rotasi ulang:
   ```
   php artisan key:generate
   ```
   Catatan: mengganti `APP_KEY` akan meng-invalidate session aktif dan data yang
   terenkripsi dengan key lama (mis. cookie terenkripsi). Semua user harus login ulang.

2. **Kredensial database** — ganti password user MySQL lalu sesuaikan `DB_PASSWORD`.

3. **Kredensial lain** (SMTP, API key, AWS) — ganti di dashboard penyedianya.

## Produksi

- `APP_ENV=production`
- `APP_DEBUG=false`
- `APP_URL=https://domain-anda`
- Aplikasi otomatis memaksa skema HTTPS saat `APP_ENV=production`
  (lihat `AppServiceProvider`).
- Jalankan `composer install --no-dev --optimize-autoloader` agar paket dev
  (termasuk Ignition/`/_ignition`) tidak ikut terpasang.
- Jalankan `php artisan config:cache route:cache view:cache` setelah konfigurasi final.
