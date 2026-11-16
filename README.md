# yaqianzhang.github.io

Personal homepage, built by GitHub Pages (Jekyll). Push to `master` and the live site updates in about a minute.

## Where things live

| To change…            | Edit                        |
|-----------------------|-----------------------------|
| Bio paragraph         | `index.md`                  |
| Research section      | `_includes/research.md`     |
| Name, photo, links    | `_data/profile.yml`         |
| Publications          | `_data/publications.yml`    |
| Teaching              | `_data/teaching.yml`        |
| Project pages         | `_posts/YYYY-MM-DD-name.md` |
| Look and feel         | `assets/css/main.css`       |

Put PDFs in `papers/` and images in `images/`.

## Three ways to edit

1. **In the browser, with forms (no code):** sign in at <https://app.pagescms.org> with GitHub and open this repo.
   `.pages.yml` sets up the forms for profile, publications, teaching and projects. Saving commits to GitHub.
2. **Locally, with live preview:** run `./preview.sh` and open <http://localhost:4000>. The page reloads whenever
   you save. Working on a remote server? Forward the ports first: `ssh -L 4000:localhost:4000 -L 35729:localhost:35729 <server>`.
3. **With Claude Code:** run `claude` in this folder and describe the change ("add my new NeurIPS paper", "update my bio").
   Keep `./preview.sh` running in another terminal to see the result.

Quick fixes also work on github.com: press `.` in the repo to open the web editor.
