# avanish.is

Personal website built with [Hugo](https://gohugo.io/) and the [PaperMod](https://github.com/adityatelange/hugo-PaperMod) theme.

## Prerequisites

Install Hugo (extended) v0.146.0 or later:

`$ brew install hugo`

## Local Development

`$ hugo server`

Visit `http://localhost:1313` to preview the site.

## Build

`$ hugo`

Output is generated in the `public/` directory.

## Deployment

Pushes to `master` automatically deploy to GitHub Pages via the workflow in `.github/workflows/hugo.yml`.

## Writing a New Blog Post

Create a new file in `content/blogs/`:

```
content/blogs/your-post-title.md
```

Use this frontmatter template:

```yaml
---
title: Your Post Title
date: 2026-04-07
draft: false
tags: []
---

Your content here.
```

- **`draft: true`** — post won't appear in production but is visible with `hugo server -D`
- **`tags`** — optional, e.g. `["go", "devops"]`
- The post URL will be `/blogs/your-post-title/`

## Project Structure

```
content/
  _index.md       # homepage
  archives.md     # archive page
  blogs/          # blog posts
static/
  favicon.png
themes/
  PaperMod/       # git submodule
hugo.toml         # site config (title, bio, menu, social icons)
```

## Updating Site Info

All site-level content — bio, social links, navigation menu — is configured in `hugo.toml`.
