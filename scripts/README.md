# Script for updating book content and hosted content

Here you can find two scripts for updating the edu, home, blockly and osem books.

To perform either of the scripts you need to download them, and make them executable with the command:
```
$ chmod +x path/to/your/file/filename.sh
```

Next you can execute them with:
```
$ cd path/to/your/file/
$ ./filename.sh
```

The `update_book_and_gh_pages.sh` can be performed after you saved changes in the edu, home, blockly or osem branches of your local repository. It replaces the `git add`, `git commit` and `git push` commands as they are part of the script. Additionally it builds a static html version of the book and replaces the current version of the book on the `gh-pages` branch.
There are three input parameters you need to enter, during the script compilation: 
- the name of the book you want to update
- the path to your local repository
- a commit message for your changes

The `update_gh_pages.sh` can be performed to update the static html version of any book on the `gh-pages` branch. You can choose wich book you want to update. The script takes the gitbook from the book's branch, pulls the current state, builds the html version and updates the version on the gh-pages branch. 
There are two parameters you need to enter, during the script compilation: 
- the name of the book you want to update
- the path to your local repository

Be aware you need to have gitbook installed on you local devices as descriped in the README.md of the master branch of this repository.

# Use of scripts without repository rights
You need the rights to push to the corresponding branches to successfully execute the script. 
If you don't have these rights, please fork this repository and clone it to your local device.
Then you can perform this script on your forked repository. 
Therefore you just need to enter the path to the **forked repository** on your local device.
When you are finished you can submit a pull request to this (original) repository.

