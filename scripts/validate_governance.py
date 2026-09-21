#!/usr/bin/env python3
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
ROUTES_FILE = ROOT / "_governance" / "ROUTES.json"
REQUIRED = [
    "README.md",
    "AGENTS.md",
    "MASTER_INDEX.md",
    "REPOSITORY_MAP.md",
    "_governance/GOVERNANCE.md",
    "_governance/RUNNER_INSTRUCTIONS.md",
    "_governance/ENTRY_PROTOCOL.md",
    "_governance/EXIT_PROTOCOL.md",
    "_governance/ROUTES.json",
    "_governance/templates/CHANGE_RECEIPT.md",
    "scripts/sync_indexes.py",
]

def fail(message):
    raise SystemExit("governance validation failed: " + message)

def main():
    for rel in REQUIRED:
        if not (ROOT / rel).is_file():
            fail(f"missing required file: {rel}")

    data = json.loads(ROUTES_FILE.read_text(encoding="utf-8"))
    routes = data.get("routes", [])
    if not routes:
        fail("ROUTES.json has no routes")

    codes = set()
    paths = set()
    for route in routes:
        code = route.get("code", "")
        path = route.get("path", "")
        if not re.fullmatch(r"D\d{2}", code):
            fail(f"invalid route code: {code}")
        if code in codes or path in paths:
            fail(f"duplicate route: {code} / {path}")
        codes.add(code)
        paths.add(path)
        if not (ROOT / path).is_dir():
            fail(f"missing route directory: {path}")

    discovered = {p.name for p in ROOT.iterdir() if p.is_dir() and re.match(r"^D\d{2}__", p.name)}
    unknown = discovered - paths
    missing = paths - discovered
    if unknown:
        fail("unregistered domain directories: " + ", ".join(sorted(unknown)))
    if missing:
        fail("registered directories missing from root: " + ", ".join(sorted(missing)))

    receipt_root = ROOT / "_governance" / "receipts"
    receipts = list(receipt_root.glob("????-??/*.md")) if receipt_root.exists() else []
    if not receipts:
        fail("no change receipt found")

    print(f"governance: ok ({len(routes)} routes, {len(receipts)} receipts)")

if __name__ == "__main__":
    main()
