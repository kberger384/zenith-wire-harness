# preprocess_wireviz.py
# Usage: python preprocess_wireviz.py | wireviz -
import yaml
import sys
import io
from pathlib import Path

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')

with open("master.yml", "r") as f:
    master = yaml.safe_load(f)

if "include" not in master:
    print("No 'include' section found in master.yml", file=sys.stderr)
    sys.exit(1)

for filename in master["include"]:
    path = Path(filename)
    if not path.exists():
        print(f"File not found: {filename}", file=sys.stderr)
        sys.exit(1)

    try:
        with open(filename, "r") as part:
            print(part.read())
    except Exception as e:
        print(f"Error reading {filename}: {e}", file=sys.stderr)
        sys.exit(1)