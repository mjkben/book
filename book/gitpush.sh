#!/bin/bash

cd ~/Documents/MES-COURS/JUPYTER/ 
jupyter-book build book/
cp -r ~/Documents/MES-COURS/JUPYTER/* ~/Git-Local_Repo/book-github/

cd ~/Git-Local_Repo/book-github/
git add ./*
git commit -m "first commit"
# git remote add origin git@github.com:<user>/<repository-name>.git
git push -u origin main
ghp-import -n -p -f _build/html/