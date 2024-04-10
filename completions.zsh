# 
# all cmd completion logic here
#

for file in $ZSH_CONFIG/completions/*; do
    source "$file"
done
