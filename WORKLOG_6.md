Questions answered on submitted doc on canvas.

Part 1:

TODO 1a:
Issue #1
https://github.com/cbisho/ride-knox-analysis/issues/1#issue-5635230075

TODO 1b
Issue #2
In column “start_station_name” there are trailing whitespaces after the names.

This can be fixed in “analysis.ipynb” notebook.

“Station “ should become “Station"

Issue #3
This problem is in the “trips_2026” dataset, some bikes were never docked so the end station is NA. 

3990 trips (2.91%) of rides are effected with missing end stations.

Fix in code of analysis.ipynb.

TODO 1c: Screenshot and Q1 on doc.

PART 2:
(GOOF) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git switch -c chore/tidy-report
Switched to a new branch 'chore/tidy-report'
(GOOF) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git branch
* chore/tidy-report
  main

TODO 2c:
PR description: Made changes to report_cora_ver.md to improve communication of capacity at dock S25.
git commit -m "Changed communication of docking capacity
 at Dock S25"
On branch chore/tidy-report
Your branch is up to date with 'origin/chore/tidy-report'.

nothing to commit, working tree clean

PART 3:
