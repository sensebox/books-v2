#!/bin/bash
set -e
shouldloop=true;
while $shouldloop; do
echo -n "Enter a book name (edu, home, blockly or osem) and press [ENTER]: "
read input
shouldloop=false;
if [ $input == 'edu' ] || [ $input == 'home' ] || [ $input == 'osem' ] || [ $input == 'blockly' ]; then
   book_name=$input;
else
   echo "Enter a valid book name: edu, home, blockly or osem";
   shouldloop=true;
fi
done
echo -n "Enter the path to your repository and press [ENTER]: " 
read bookpath
echo "Your book is named: $book_name"
echo "Your book path is: $bookpath"
cd $bookpath
git checkout $book_name
git pull
gitbook install
echo "gitbook installed" 
gitbook build
echo "gitbook builded" 
mkdir  $HOME/gitbookscriptfolder
cp -R $bookpath/_book $HOME/gitbookscriptfolder/$book_name
rm $HOME/gitbookscriptfolder/$book_name/index.html
git checkout gh-pages
git pull
cp $bookpath/$book_name/index.html $HOME/gitbookscriptfolder/$book_name
rm -R $bookpath/$book_name
cp -R $HOME/gitbookscriptfolder/$book_name $bookpath
git add -A
git commit -m"update $book_name book"
git push
rm -R $HOME/gitbookscriptfolder
echo "Done"
