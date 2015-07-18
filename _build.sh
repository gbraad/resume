#!/bin/sh

# prerequisites
#gem install jekyll
#gem install pandoc-ruby

rm -rf _site

# site generation
jekyll build

# push to gh-pages
cd _site
git init
git remote add origin git@github.com:gbraad/resume.git
git add -A
git commit -am "gh-pages site created via build script"
git branch -m gh-pages
git push origin :gh-pages
git push origin gh-pages

