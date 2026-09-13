# Резюме / CV — Вячеслав Бирин

> **Backend-разработчик (Golang / Python)**  
> Исходник резюме сверстан на [Typst](https://typst.app/) с гарантией 100% совместимости с ATS (Applicant Tracking Systems), нативным Unicode и адаптацией под просмотр на GitHub.

📄 **Актуальная версия PDF:** [main.pdf](main.pdf)

---

## 🛠 Технологии шаблона

- **Движок:** [Typst](https://github.com/typst/typst)
- **Шрифты:** Liberation Sans / Noto Sans (гарантия честного копирования кириллицы и парсинга роботами ATS)
- **Иконки:** Векторные SVG (телефон, email, telegram, github, локация)
- **Автоматизация:** [Taskfile](Taskfile.yml) + [GitHub Actions CI](.github/workflows/build-cv.yml)

---

## 🚀 Локальная сборка и разработка

Для работы требуется установленный [Typst](https://github.com/typst/typst/releases) и [Task](https://taskfile.dev/).

```bash
# Скомпилировать PDF
task build

# Запустить режим отслеживания изменений (live-reload)
task watch

# Проверить корректность (ровно 1 страница A4 и парсинг текста)
task check

# Сгенерировать PNG-превью для быстрой оценки верстки
task preview
```

---

## 🤖 GitHub Actions

При каждом `git push` в ветку `master` или `main` с изменениями в `main.typ` или `icons/`:
1. Запускается компиляция в `main.pdf`.
2. Проверяется валидность документа (строго 1 страница A4, успешное извлечение кириллицы).
3. Свежий `main.pdf` автоматически коммитится обратно в репозиторий.
