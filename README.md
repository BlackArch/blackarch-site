Quick start : 
===========
1. Make changes. Usually only modify files in common/ and generators/
2. maybe ./update-tools.sh to update data/tools
3. ./generate-site.sh

Important things
================
**common/**          - common site pieces (e.g. header, footer)

**data/tools**       - a list of tools

**generators/**      - each script here generates a page/item

**gpgkeys/**         - gpg keys for developers

**generate-site.sh** - calls each generator in generators/

**update-tools.sh**  - updates 'data/tools'

**sync.sh**          - syncs the local site to the remote

Unimportant/Obvious things
==========================
**css/**             - style sheets

**images/**          - images

**extra/**   	     - contains some scripts to enhanced the SEO / Rss...

**favicon.ico**      - favicon
