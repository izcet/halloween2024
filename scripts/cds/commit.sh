paste stash <(cat stash | nl -w2 | sed -E 's/\s+/./g' | sed 's/^\.//') | sed 's/\t/ /' | xargs -L1 -- mv
