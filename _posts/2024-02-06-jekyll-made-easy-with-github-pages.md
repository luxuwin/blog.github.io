---
title: Jekyll made easy with GitHub Pages
date: 2024-02-06 00:00:01.000000000 -05:00
categories:
- DIY
excerpt: "Jekyll made easy with GitHub Pages."
header:
  teaser: https://jekyllrb.com/img/logo-2x.png
---

<!-- Until recently, I have been running Jekyll locally and export to GitHub, while managing all the packages/alerts myself. Then I realized that GitHub Pages has really good integration with Jekyll and I only need minimal maintenance. 

## Defaults from GitHub Pages
In short, what I did is massively reduced the number of files (GitHub has them as defaults), and only kept a few files in `_layout`, `_data` and `_pages`. For example, I am only keeping a `post_with_comments.html` file, which is inherited from `posts.html`, and added a snippet of comments.

## Comments backed by GitHub issues
Speaking of comments, seems there has some interesting updates. For example, [utterances](https://github.com/utterance/utterances) uses GitHub's issue system for comments. All you need to do is:

1. open https://github.com/apps/utterances , follow the instructions to install the app to the repository.
1. Copy the code snippet to the page or layout template.

## Web VS Code console

Another pleasant suprise is that I can use the [online VS Code console](https://github.com/microsoft/vscode-docs/blob/main/docs/editor/vscode-web.md) to edit code with ease! Now I can happy do everything from a web browser, which made my Chromebook much more capable.

## Migration

Migration is really simple. I forked a branch from `master`, do all the cleanup/change in the new branch, re-directed the webpage in **Repo Settings -> Pages -> Branch -> (select the new branch)**.

Then, GitHub will automatically build from the head, and you can monitor the progress from "Actions". Once you are happy with the results, just set the new branch as default and you are all good. Optionally, we may archive/delete the old branch and rename the new one to `master`. -->


