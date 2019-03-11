#!/bin/bash
set -e
echo -n "Enter the book name and press [ENTER]: " 
read book_name
echo "Your book is: $book_name"
echo -n "Enter the path to your repository and press [ENTER]: " 
read repo_path
cd $repo_path
git checkout $book_name
git status
git add -A
echo -n "Enter a commit message and press [ENTER]: " 
read var_commitm
git commit -m"$var_commitm"
git push
gitbook install
echo "gitbook installed" 
gitbook build
echo "gitbook builded" 
mkdir  $HOME/gitbookscriptfolder
cp -R $repo_path/_book $HOME/gitbookscriptfolder/$book_name
rm $HOME/gitbookscriptfolder/$book_name/index.html
git checkout gh-pages
git pull
cp $repo_path/$book_name/index.html $HOME/gitbookscriptfolder/$book_name
rm -R $repo_path/$book_name
cp -R $HOME/gitbookscriptfolder/$book_name $repo_path/
git add -A
git commit -m"update $book_name book"
git push
rm -R $HOME/gitbookscriptfolder
echo "Done"
