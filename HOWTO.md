# Remove releases branches

## Remote
cat RELEASES | xargs -I {} git push -d origin release/{}

## Then local 
git branch --list 'release*' | xargs -r git branch -d