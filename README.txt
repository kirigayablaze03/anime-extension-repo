GitHub Pages-ready payload
=========================

Upload option A: GitHub web UI
1. Create a new public GitHub repo, for example: anime-custom-repo
2. Upload the CONTENTS of this folder to the repo root
3. On GitHub: Settings -> Pages
4. Source: Deploy from a branch
5. Branch: main
6. Folder: /(root)
7. Save

Upload option B: local git push
1. Create a new empty public GitHub repo
2. Run: publish-github-pages.cmd https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git
3. On GitHub: Settings -> Pages
4. Source: Deploy from a branch
5. Branch: main
6. Folder: /(root)
7. Save

Your repo URL in the app will be:
https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/repo/index.min.json

GitHub Docs:
- Project sites publish at https://<owner>.github.io/<repositoryname>
- Pages can publish from a branch root or /docs folder
- A .nojekyll file bypasses Jekyll for static content

This payload contains only:
- DesiDubAnime
- Animetsu

It does not replace your existing extension repo list.
