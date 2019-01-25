#!/usr/bin/bash
# https://www.cyberciti.biz/faq/howto-check-if-a-directory-exists-in-a-bash-shellscript/
[ -d "/path/to/dir" && ! -L "/path/to/dir" ] && echo "Directory /path/to/dir exists." || echo "Error: Directory /path/to/dir exists but point to $(readlink -f /path/to/dir)."
