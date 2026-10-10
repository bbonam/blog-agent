# AI Blog Agent

Reusable Cursor workflow for researching and preparing SEO blog articles.

```text
blog-agent/
├── .cursor/rules/blog-agent.mdc
├── content/
├── prompts/
│   ├── daily-blog.md
│   └── master-prompt.md
├── images/
├── scripts/publish.sh
└── README.md
```

## Create a blog

Open this folder as your Cursor project. Say **Create Today's Blog**, or paste `prompts/daily-blog.md` into chat. The always-active Cursor rule points to the full workflow.

The agent researches a topic, identifies keywords, creates an outline, writes the article, prepares metadata and social posts, and saves an image prompt. Articles live in `content/blog-YYYY-MM-DD.md`; research and promotional assets live in the matching `.assets.md` file. Dates use your local timezone. Draft creation does not automatically run on a schedule.

## Connect Git

Create or connect the intended repository before publishing. For a new standalone repository, run from this folder:

```bash
git init -b main
git remote add origin YOUR_REPOSITORY_URL
git add .
git commit -m "Set up blog agent workflow"
git push -u origin main
```

Replace `YOUR_REPOSITORY_URL` with your repository URL. These commands require installed Git, authentication, and an existing remote repository. If this folder is inside an existing repository, use that repository's configuration instead of initializing a nested repository.

## Publish blog changes

When ready to commit and push, run in Git Bash or another Bash environment:

```bash
bash scripts/publish.sh "Add today's SEO article"
```

The optional second argument selects the branch (default `main`). The script requires that branch to be checked out, refuses existing staged changes, stages only `content/` and `images/`, commits changes if present, and pushes to `origin`. Prompts and configuration changes should be committed separately. A failed push leaves the local commit available to retry.

## Website deployment

This scaffold supplies content and a Git publishing helper. To publish a website, connect the repository to your existing site generator or CMS and hosting deployment pipeline. Configure it to render article Markdown, handle front matter and draft status, and exclude `*.assets.md` companion files. Verify the build and live article URL after pushing. No site renderer, hosting integration, or deployment credentials are configured here.

## Publishing checklist

- [ ] Research and factual claims have supporting sources.
- [ ] Article body contains 1,500–2,000 words and answers the reader's intent.
- [ ] One H1, useful H2/H3 headings, FAQs, conclusion, and CTA.
- [ ] Metadata and links reviewed; no fabricated keyword metrics.
- [ ] Featured image created, saved, and reviewed; alt text matches the actual image.
- [ ] Site preview reviewed and draft status changed according to the site's publishing rules.
- [ ] Blog changes committed and pushed.
- [ ] Hosting build succeeded and the live article URL was checked.
