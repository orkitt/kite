# Kite documentation

The repository documentation is authored in Markdown under `docs/` and built with Material for MkDocs.

## Local preview

```bash
python -m pip install -r requirements-docs.txt
mkdocs serve
```

Then open `http://127.0.0.1:8000`.

## Production build

```bash
mkdocs build --strict
```

## GitHub Pages

The workflow at `.github/workflows/docs.yml` builds the documentation and deploys the generated `site/` artifact with GitHub Pages Actions.

Before the first deployment, open the GitHub repository and select:

**Settings → Pages → Build and deployment → Source → GitHub Actions**

The workflow is currently configured for the repository's `master` branch.
