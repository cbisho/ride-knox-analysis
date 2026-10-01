**Cora Bishop**
**cbisho30**


House Rules:
1. Main is sacred, changes must be made through pull requests
2. Branch names <issue-number>-<short-slug>
3. One PR = one issue = one descriable unit of work
4. Nother enters history that shouldn't

## Part 0:
(GOOF) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git status
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean

(GOOF) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git log --oneline
4441720 (HEAD -> main, origin/main) Adding House Rules to PROJECT-LOG.md

# Q-A1 (in the log): one of your issues had to be done before another to avoid a hazard. Which pair, which order, and what was the hazard?

I had raw data in the commit, due to error in .gitignore 
Had to fix .gitignore
Remove cached items
git add .gitignore
git commit -m 
9448935 Fixing .gitignore again, did not seem to work again.


Part B:
Issues #9 and #10
Pull request #11
git log --oneline from separating analysis
7bf88bd (HEAD -> Separate_analysis, origin/Separate_analysis) Updated README instructions for separating 2025 and 2026 analysis.
cc1f853 Removed analysis.ipynb because has been replaced by a combined .ipynb file
2287cb9 Combined analysis for 2025 and 2026
83fe5d4 Analysis for Ride Knox 2026
654ac62 Made this into file into analysis_2025_and_2026.ipynb, do not need duplicate.
0de9863 Analysis for both years to compare.
e07901d Separate analysis for 2025 data, gives only picture of that year.
7cdcb3f (origin/main, main) TODO part 0, PROJECT-LOG.md
4441720 Adding House Rules to PROJECT-LOG.md
91b87ab Log for Github project
9448935 Fixing .gitignore again, did not seem to work again.
f1603f4 Merge pull request #8 from cbisho/requirements
fd41898 reformatting README.md

Q-B1: Something in the 2026 hand-off must never be committed, and it isn't a data file. What is it, how did you make sure, and what could happen if it reached a public repo?
The credentials ride_knox_api_token.txt it's a password that lets a program sign in to Ride Knox's data export. 
If in the public repo, anyone could pull ride knox data directly from the vendor.

Q-B2: Your reorganization changed at least one path that something else depended on. What broke (or would have broken), and how did you catch it?
I decided to not make separate folders and do no paths were changed. What did change were the charts and relabeling the charts to fit a specific analysis. I reorganized the files by making copies and deleting and adding lines from past assingments so I "caught it" during that step.

Part C:
Rewrote README.md (did in word, formatting is easier).

Work with Riley to edit rewritten README.md


(base) cora@Coras-MacBook-Pro-2 ride-knox-riley % git push                                     
To https://github.com/cbisho/ride-knox-analysis
 ! [rejected]        house-naming -> house-naming (fetch first)
error: failed to push some refs to 'https://github.com/cbisho/ride-knox-analysis'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.

Incoming:
Overview:
Ridership declined in the second half of 2025. Does the 2026 data show a recovery, and did the new docks fix the busiest stations? This repository holds the analysis for both years. Ride Knox wants to know what type of riders and how riders are using their service.

Current (Riley):
## Overview: Ridership declined in the second half of 2025 after a price increase, does the data from 2026 suggest it recovers? What additional stations could be added where capacity is high? What are the high capacity stations? Are they related?

Incoming: 
Limitations
Only six months of 2026 data are available (January–June), so the fall, when the 2025 decline was largest, is not observed yet. Other factors such as weather or Knoxville events could be affecting usage, but we cannot connect that information to the given data. About 800 trips from January–February 2026 are missing an end time because of an app bug. Additionally, the 10% increase of member riders has unknown cause or correlation, occupation or commuter info, such as student could be useful. 
 
Current (Riley):
## Limitations:
Not all ridership data is included for 2026 only 6 months, so later months cannot be compared. Additionally, other factors such as weather or Knoxville events could be affecting usage but we cannot correlate that information with the given parameters. Another limitation is the lack of rider occupation, some data suggests that rider-type may be related to being a student or worker.

Accepted my merge version