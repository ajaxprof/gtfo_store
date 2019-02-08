find . -name .DS_Store -print0 | xargs -0 git rm --ignore-unmatch --cached
find . -name .DS_Store -print0 | xargs -0 git rm --ignore-unmatch
grep -q -x -F ".DS_Store" ~/.gitignore_global || echo ".DS_Store" >> ~/.gitignore_global
grep -q -x -F "._.DS_Store" ~/.gitignore_global || echo "._.DS_Store" >> ~/.gitignore_global
grep -q -x -F "**/.DS_Store" ~/.gitignore_global || echo "**/.DS_Store" >> ~/.gitignore_global
grep -q -x -F "**/._.DS_Store" ~/.gitignore_global || echo "**/._.DS_Store" >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global