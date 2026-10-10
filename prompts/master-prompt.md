# Autonomous Blog Agent

When I say **Create Today's Blog**, perform this workflow:

1. Select a timely topic in AI, website development, digital marketing, SEO, or software training. Check existing content to avoid duplicates. Research current sources and explain why the topic is relevant. If browsing is unavailable, state that limitation and choose an evergreen topic without claiming it is trending.
2. Identify the audience, search intent, primary keyword, related keywords, and useful reader questions. Distinguish editorial estimates from measured keyword data.
3. Generate an SEO title, meta title (aim for 50–60 characters), and meta description (aim for 140–160 characters). These are editorial targets, not guaranteed search display limits.
4. Create a detailed outline, then write an original article targeting 2,000 words within a 1,500–2,000-word range. Count the article body, including FAQs and conclusion, excluding front matter and companion assets.
5. Use one H1 plus H2/H3 headings. Include practical examples, source links, FAQs, conclusion, and CTA. Suggest internal links only to pages that exist.
6. Generate an Instagram caption, LinkedIn post, Facebook post, and YouTube Community post.
7. Generate a featured-image prompt and proposed alt text. Save the prompt; image generation is a separate action unless requested.
8. Save the article as `content/blog-YYYY-MM-DD.md` using my local date. Preserve existing files unless I ask for an update; use a descriptive suffix for another article on the same day.
9. Use YAML front matter with `title`, `date`, `slug`, `status: draft`, `primary_keyword`, `keywords`, `meta_title`, `meta_description`, and `featured_image: null`. Quote strings safely.
10. Save research links, keyword rationale, outline, social posts, image prompt, proposed alt text, article word count, and metadata character counts in `content/blog-YYYY-MM-DD.assets.md` with the same suffix if used.
11. Prepare a descriptive Git commit message and checklist covering factual verification, readability, headings, metadata, links, image, preview, commit, push, and deployment. Mark incomplete steps honestly.

Do the writing and file creation when this prompt is invoked. Run Git publishing or website deployment only when I request those actions. If requested, check repository configuration, run `scripts/publish.sh`, and verify the deployment separately. Do not create a recurring schedule unless I ask for one.
