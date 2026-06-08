source "https://rubygems.org"

# Local development / preview only. GitHub Pages builds the live site with its
# own toolchain and ignores this Gemfile. The site uses no theme and only the
# whitelisted jekyll-sitemap plugin, so a standard modern Jekyll matches it.
gem "jekyll", "~> 4.3"

group :jekyll_plugins do
  gem "jekyll-sitemap"
end

# Needed for `jekyll serve` on Ruby 3+.
gem "webrick"
