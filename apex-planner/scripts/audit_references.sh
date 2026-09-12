#!/usr/bin/env bash
set -euo pipefail
base="$(cd "$(dirname "$0")/.." && pwd)"
# Validate every explicit local reference of the documented path forms.
python3 - "$base" <<'PY'
import re, sys
from pathlib import Path
base=Path(sys.argv[1])
text=(base/'SKILL.md').read_text()
index=(base/'references/reference-index.md').read_text()
refs=set(re.findall(r'`(references/[^`]+)`|`(templates/[^`]+)`|`schemas/[^`]+`', text+'\n'+index))
paths=[]
for a,b in refs:
    paths.append(a or b)
missing=[p for p in paths if not (base/p).exists()]
if missing:
    print('MISSING REFERENCES')
    print('\n'.join(sorted(set(missing))))
    sys.exit(1)
print(f'REFERENCES PASS: {len(set(paths))} paths')
PY
