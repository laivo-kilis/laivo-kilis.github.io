# laivo-kilis.github.io

RIB Nuoma Svencelė — RIB boat rental advertising website for MB Laivo Kilis.

Built with Jekyll (no theme — a standalone layout and stylesheet) and deployed
via GitHub Pages. Available in Lithuanian and English.

- **Live site:** https://laivokilis.lt
- **Lithuanian:** https://laivokilis.lt/
- **English:** https://laivokilis.lt/en/

## Structure

| Path | Purpose |
|------|---------|
| `index.md` / `en/index.md` | Home page (LT / EN) |
| `salygos.md` / `en/terms.md` | Terms and conditions (LT / EN) |
| `sutartis.md` | Rental contract template (LT) |
| `_layouts/default.html` | Page layout — header, hero, footer |
| `assets/css/style.scss` | Styling — minimal nautical-blue design, Inter type |
| `_config.yml` | Jekyll config |

## Local preview

The live site is built by GitHub Pages on push. To preview locally you need a
modern Ruby (the macOS system Ruby is too old); install one with
`brew install ruby` and then:

```sh
bundle install   # first time only
make up           # build + serve at http://127.0.0.1:4000 and print page URLs
make down         # stop the server
```

`make up` runs the server detached and prints a table of local page URLs:

```
┌──────────────────────┬─────────────────────────────────┐
│         Page         │               URL               │
├──────────────────────┼─────────────────────────────────┤
│ Home (LT)            │ http://127.0.0.1:4000/          │
│ Home (EN)            │ http://127.0.0.1:4000/en/       │
│ Taisyklės ir sąlygos │ http://127.0.0.1:4000/salygos/  │
│ Sutartis (contract)  │ http://127.0.0.1:4000/sutartis/ │
└──────────────────────┴─────────────────────────────────┘
```

> The `Gemfile` (Jekyll 4) is for local previews only — GitHub Pages builds the
> live site with its own toolchain and ignores it.
