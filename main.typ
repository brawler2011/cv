#set page(
  paper: "a4",
  margin: (x: 1.3cm, top: 0.9cm, bottom: 0.9cm),
)

#set text(
  font: ("Liberation Sans", "Noto Sans"),
  size: 8.9pt,
  fill: rgb("#1f2937"),
  lang: "ru",
)

#set par(justify: false, leading: 0.48em)
#show link: set text(fill: rgb("#1d4ed8"))
#set list(marker: text(fill: rgb("#4b5563"), [•]), spacing: 3.2pt, body-indent: 5pt)

#let icon(path) = box(baseline: 15%, height: 0.82em, image(path))
#let contact(ic, body, url: none) = {
  box[
    #icon(ic)
    #h(2pt)
    #if url != none {
      link(url, body)
    } else {
      body
    }
  ]
}

#let dot = h(4pt) + text(fill: rgb("#9ca3af"), [|]) + h(4pt)

#let section(title) = {
  v(6pt)
  text(10.2pt, weight: "bold", fill: rgb("#111827"), upper(title))
  v(-4.5pt)
  line(length: 100%, stroke: 0.65pt + rgb("#cbd5e1"))
  v(2pt)
}

#let exp-header(company, location, role, date) = {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    [ *#company* #if location != "" [ — #text(fill: rgb("#4b5563"), location)] ],
    text(fill: rgb("#4b5563"), weight: "medium", date),
  )
  if role != "" {
    v(-2.5pt)
    text(style: "italic", fill: rgb("#374151"), role)
    v(1pt)
  }
}

// ---------- HEADER ----------
#align(center)[
  #text(20pt, weight: "bold", fill: rgb("#111827"))[Вячеслав Бирин] \
  #v(1.5pt)
  #text(11.5pt, weight: "bold", fill: rgb("#2563eb"))[Golang / Python / Frontend] \
  #v(3pt)
  #text(8.2pt, fill: rgb("#374151"))[
    #contact("icons/phone.svg", "+7 950 445 84 90", url: "tel:+79504458490")
    #dot
    #contact("icons/mail.svg", "slavabirin1@yandex.ru", url: "mailto:slavabirin1@yandex.ru")
    #dot
    #contact("icons/telegram.svg", "@brawler2011", url: "https://t.me/brawler2011")
    #dot
    #contact("icons/github.svg", "github.com/brawler2011", url: "https://github.com/brawler2011")
  ] \
  #v(2.5pt)
  #text(8.2pt, fill: rgb("#4b5563"))[
    #contact("icons/map-pin.svg", "Санкт-Петербург") (удалённо / гибрид)
    #dot
    *Занятость:* Full-time (40 ч/нед)
    #dot
    *Английский:* C1 (Advanced)
  ]
  #v(3pt)
  #block(width: 98%)[
    #text(8.4pt, fill: rgb("#374151"))[
      Fullstack/Backend-разработчик с фокусом на Golang, Python и современном веб-стеке (Next.js/React). Опыт проектирования отказоустойчивых сервисов с нуля (Clean Architecture, RBAC), руководства разработкой и менторства. Призёр хакатонов и олимпиад по программированию (Авито, ВКОШП, ШАД). Студент ИТМО («Компьютерные технологии»).
    ]
  ]
]

// ---------- НАВЫКИ ----------
#section("Навыки")

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 8pt,
  [
    #block(fill: rgb("#f8fafc"), inset: (x: 6pt, y: 4.5pt), radius: 3.5pt, stroke: 0.5pt + rgb("#e2e8f0"), width: 100%)[
      #text(weight: "bold", fill: rgb("#0f766e"))[Golang Стек] \
      #v(1.5pt)
      Go (1.20+), Fiber, gRPC, sqlc, pgx, WebSockets, Concurrency, REST API
    ]
  ],
  [
    #block(fill: rgb("#f8fafc"), inset: (x: 6pt, y: 4.5pt), radius: 3.5pt, stroke: 0.5pt + rgb("#e2e8f0"), width: 100%)[
      #text(weight: "bold", fill: rgb("#1d4ed8"))[Python Стек] \
      #v(1.5pt)
      FastAPI, Flask, SQLAlchemy, Pydantic, AsyncIO, Pandas, NumPy
    ]
  ],
  [
    #block(fill: rgb("#f8fafc"), inset: (x: 6pt, y: 4.5pt), radius: 3.5pt, stroke: 0.5pt + rgb("#e2e8f0"), width: 100%)[
      #text(weight: "bold", fill: rgb("#7c3aed"))[Frontend Стек] \
      #v(1.5pt)
      TypeScript, JavaScript, Next.js, React, HTML5, CSS3, Tailwind CSS, Vite
    ]
  ],
)

#v(1.5pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 8pt,
  row-gutter: 2.5pt,
  [*Инфраструктура & БД:*], [PostgreSQL, Redis, RabbitMQ, NATS, S3 (SeaweedFS), Docker, Git, Linux, Taskfile, CI/CD],
  [*Другие языки:*], [C/C++, Java, Flutter],
  [*Архитектура & Подходы:*], [Clean Architecture, Domain-Driven Design (DDD), Schema-First, TDD, Agile/Scrum],
)

// ---------- ПРОЕКТЫ ----------
#section("Проекты")

#grid(
  columns: (1fr, auto),
  align: (left, right),
  [
    *Gate* — тестирующая образовательная платформа |
    #link("https://steins.ru")[steins.ru] |
    #link("https://github.com/brawler2011/gate")[github.com/brawler2011/gate] \
    #text(style: "italic", fill: rgb("#374151"))[Lead Developer / Backend]
  ],
  text(fill: rgb("#4b5563"), weight: "medium", "2024 — н. в."),
)
#v(1pt)
- Комплексная система для проведения контестов и автопроверки решений (замена устаревшей легаси-системы в вузе): рассчитана на одновременную работу сотен студентов и валидацию кода в изолированной среде.
- *Backend (Golang):* спроектировал сервисную архитектуру (Clean Architecture) с многоуровневой моделью прав доступа (RBAC для организаций, команд, контестов). Оптимизировал миграции и SQL-запросы в PostgreSQL (p95 latency < 40 мс).
- *Frontend (Next.js / TypeScript):* сформировал и возглавил распределённую команду из 4 разработчиков, внедрил код-ревью, линтеры и регламент релизов, ускорив вывод продуктовых фичей в 2 раза.
- Победитель проектных конкурсов ИТМО и Центрального Университета (2025); платформа активно пилотируется и используется.
- *Стек:* Golang, Next.js, TypeScript, PostgreSQL, Docker, Redis, REST API, Clean Architecture.

// ---------- ОПЫТ РАБОТЫ ----------
#section("Опыт работы")

#exp-header("RDTI", "Пермь, Россия", "Разработчик (Golang)", "2023")
- Спроектировал и реализовал backend Telegram-бота для автоматизированного контроля шлагбаума: разработал TCP-клиент взаимодействия с микроконтроллером, обработку очередей команд и мониторинг доступности с аптаймом 99.8%.
- *Стек:* Golang, TCP, Telegram Bot API, Docker.

#v(1.5pt)
#exp-header("L&P", "Пермь, Россия", "Frontend-разработчик", "2022")
- Спроектировал и вывел в production адаптивный сайт для юридической компании; оптимизировал критический путь рендеринга и ассеты, достигнув 95+ баллов в Google Lighthouse.
- Формализовал бизнес-требования с заказчиком и успешно закрыл проект в сжатые сроки без срыва дедлайнов.
- *Стек:* JavaScript, HTML5, CSS3, SEO.

// ---------- ОБРАЗОВАНИЕ ----------
#section("Образование")

#exp-header("Университет ИТМО", "Санкт-Петербург, Россия", "Бакалавриат, Компьютерные технологии", "Сен 2025 — 2029")

// ---------- ДОСТИЖЕНИЯ И НАГРАДЫ ----------
#section("Достижения и Награды")
#list(
  [ *15 место в индивидуальном зачёте* на всероссийском хакатоне от Авито (2026) — Golang / Python ],
  [ *Победитель проектного конкурса* Центрального Университета (2025) ],
  [ *Победитель проектного конкурса* ИТМО (2025) ],
  [ *Участник заключительного этапа* Всероссийской командной олимпиады школьников по программированию (ВКОШП, 2024) — C++ ],
  [ *Призёр регионального этапа* Всероссийской олимпиады школьников по информатике (ВсОШ, 2023) — C++, Python ],
  [ *Выпускник курса по анализу данных на Python* от ШАД (2023) ],
  [ *Выпускник двухгодичной программы по разработке на Python* от ШАД (2022) ],
)
