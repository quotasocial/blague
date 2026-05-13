

---

## Overview

Interactive fullscreen Linux terminal simulation inspired by educational network monitoring environments.

Features:
- Fullscreen Bash interface
- Live fake logs
- JSON-backed fake classes
- Interactive keyboard navigation
- ASCII Marianne banner
- Blue / White / Red ANSI colors
- Local-only simulation environment

---

## Installation

Clone the repository:

```bash
git clone https://github.com/quotasocial/blague.git
cd blague
```

Install dependencies:

```bash
sudo apt install jq
```

Make the monitor executable:

```bash
chmod +x monitor.sh
```

Launch fullscreen terminal monitor:

```bash
./monitor.sh
```

---

## Controls

| Key | Action |
|------|--------|
| `r` | Refresh dashboard |
| `j` | View JSON datasets |
| `l` | Start live log stream |
| `q` | Quit |

---

## Requirements

- Linux
- Bash
- jq
- ANSI compatible terminal

---

## Recommended Terminal Setup

- Fullscreen terminal
- Black background
- Nerd Font / JetBrains Mono
- 90x30 minimum terminal size

---

## Project Structure

```text
.
├── monitor.sh
├── data
│   ├── classes.json
│   └── events.json
└── README.md
```

---

## Example Dataset

```json
{
  "academy": "Marianne Simulation Node",
  "environment": "LOCAL_DEMO",
  "classes": [
    {
      "id": "CLS-6A",
      "students": 28,
      "status": "SYNCED"
    },
    {
      "id": "CLS-3D",
      "students": 31,
      "status": "PENDING"
    }
  ]
}
```

---

## Disclaimer

This project is a fictional Linux terminal simulation intended for visual/demo purposes only.

No real systems, services, institutions, or external networks are accessed.
