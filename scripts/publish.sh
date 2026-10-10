#!/usr/bin/env bash
set -euo pipefail

# Usage: bash scripts/publish.sh ["Commit message"] [branch]
# Run only when commit and push have been requested.
project_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$project_dir"
message="${1:-Daily blog update}"
branch="${2:-main}"

git rev-parse --is-inside-work-tree >/dev/null
git remote get-url origin >/dev/null
current_branch="$(git symbolic-ref --quiet --short HEAD)"
if [[ "$current_branch" != "$branch" ]]; then
  printf 'Expected branch %s; currently on %s. Switch branches explicitly first.\n' "$branch" "$current_branch" >&2
  exit 1
fi
if ! git diff --cached --quiet; then
  printf 'Existing staged changes detected. Commit or unstage them before publishing.\n' >&2
  exit 1
fi

git add -- content images
if git diff --cached --quiet; then
  printf 'No new blog changes to commit. Checking push for existing commits.\n'
else
  git commit -m "$message"
fi
git push origin "$branch"
printf 'Git push succeeded. Verify website deployment in your hosting provider.\n'
