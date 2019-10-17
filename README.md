sweet-pumpkin

A demo of this page can be found at https://ytyimin.github.io/sweet-pumpkin.

Site created base on Stephanie Hicks instruction at http://www.stephaniehicks.com/githubPages_tutorial/pages/githubpages-jekyll.html 

Repeating the instructions here for easier reference.

The following assumes that Ruby is already installed.

#install bundler

>$ gem install bundler

#install jekyll 

>$ gem install jekyll

#create new repository locally

>$ jekyll new myrepo

#change directory to the new repository

>$ cd myrepo

#initialize as a git repository

>$ git init

#build default theme

>$ jekyll build

#serve webpage locally (optional - just for testing)

>$ jekyll serve

#Open browser and type http://localhost:4000 at the address bar to check the newly created website. 

#Commit an initial change (optional)

>$ git add .

>$ git commit -m "initial page commit"

#Sign into your github account and create an empty repository myrepo (without readme.MD)

#Connect with github and push the website to github repository you just created (assuming the website will be hosted through gh-pages branch)

>$ git branch -m master gh-pages 

>$ git remote add origin https://username.github.com/myrepo.git

>$ git push -u origin gh-pages
