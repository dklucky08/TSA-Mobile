# CATALOG TSA-MOBILE V15 (OVER POWER)
## ID: PR-TSA-M.1.15.001

### 🏗️ Arsitektur Hybrid (Two-Way Sync)
- **Engine PC:** Flask-based, mengelola SQLite di G-Drive.
- **Engine Mobile:** GitHub Pages (Static UI) membaca data dari status.json.
- **Vacuum Protocol:** Fitur "SEDOT DATA" untuk menarik input dari HP ke G-Drive.

### ⚓ Fitur Utama
1. **Guardian TPP:** Catatan absen & kalkulasi potongan 2.75% (Status: Data Migrated).
2. **Mission Deck:** 50+ Tugas dari Landmark B (Status: Data Migrated).
3. **Shadow Deck:** Ghost tasks dengan triple-click activation.
4. **Alat Kerja:** Personil, Vault, & Naskah Dinas.

### 📝 Alur Kerja
PC Update -> Sync to GitHub -> HP Read -> HP Input -> GitHub Store -> PC Vacuum -> G-Drive DB Update.
