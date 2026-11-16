# Spendly

A private, client-side spending tracker. Import a CSV of transactions and see a
clean dashboard (monthly total, trend vs last month, daily-spend chart, category
donut) plus a searchable transaction list.

- **One file**, no build step, no dependencies: `index.html`.
- **No backend.** Every visitor's data stays in *their own* browser (localStorage).
  Nothing is uploaded or shared.

## Run locally
Open `index.html` in a browser. Use `sample-transactions.csv` to try the importer.

## Deploy on Render (static site)
This repo includes `render.yaml`, so you can deploy as a Blueprint:
1. Push this repo to GitHub.
2. In Render: **New → Blueprint**, pick the repo, click **Apply**.

Or without the blueprint: **New → Static Site**, pick the repo, leave **Build
Command** empty, set **Publish Directory** to `.`, and **Create Static Site**.
