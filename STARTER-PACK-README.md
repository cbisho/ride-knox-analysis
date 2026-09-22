# Git Module Project - Starter Pack (student data/file description)

This folder is a **stand-in 2026 analysis bundle** for the Git Module Project.
Use it **only if** your own Python Module Project files are incomplete or you
would rather not build the repo on your graded work. If your own
`project.ipynb`, `memo.md`, and charts are in good shape, **use those instead**
- the Git project grades your repository and workflow, not this analysis.

Either way, **read every file before you commit anything.** Deciding what
belongs in version control - and what must never enter it - is part of the
project. Nothing in this pack is safe to `git add .` blindly.

## Contents

| Item | What it is |
| --- | --- |
| `analysis_2026.ipynb` | A compact, executed version of the Python Module Project: cleaning of the 2026 files with an audit trail, the recovery question, the capacity question, and the day-pass profile. Runs top to bottom (Restart & Run All) if the four data files sit in the same folder. |
| `memo_2026.md` | The board memo the analysis produced (five-part Module 4 structure). All numbers match the notebook. |
| `charts/recovery_vs_2025.png` | Non-member trips vs. the 2025 baseline, with the March 1 Day Pass launch marked. |
| `charts/station_pressure_change.png` | Pressure change at the four stations leadership acted on. |
| `charts/daypass_vs_others.png` | Day-pass riders vs. members and casuals (medians and shares). |
| `ride_knox_api_token.txt` | Credentials file from the app vendor for the export API. It arrived bundled with the data hand-off. |
| `scratch/` | Loose working notes from the download session. |

## Data files (not included here)

The notebook expects the four course data files next to it:
`trips_2025.csv`, `stations.xlsx`, `trips_2026_h1.csv`, `stations_2026.xlsx` -
download them from Canvas as usual. The 2026 files are described in the
*Ride Knox Data - 2026 Files* document from the Python Module Project.

## Numbers you can rely on

Everything in this pack was computed against the real course data. Headlines:
casual-only ridership is still down ~18% YoY in June 2026, casual + day pass
is **up ~12%**; S06/S08 pressure fell ~31% after the dock expansion; S25
debuted third-busiest; Bearden (S23) doubled; Sequoyah Hills (S24) is flat at
the system low. Day-pass riders: median 20.5-minute trips, 61% on weekends.
