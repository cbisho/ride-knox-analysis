1. Added and commited files for Ride Knox into ride-knox-analysis repo.
2. Created .gitignore file.
	Note: cannot make multiple commits, no multiple one-line notes.

TODO 1b:
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git status             
On branch main

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        WORKLOG.md
        analysis.ipynb
        charts/
        report.md

nothing added to commit but untracked files present (use "git add" to track)


TODO 1e:
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git status
On branch main
nothing to commit, working tree clean


Q1: Splitting the commits pays off as it gives you \



TODO 2a: 
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git status
On branch main
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        stations.xlsx
        trips_2025.csv

nothing added to commit but untracked files present (use "git add" to track)

(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git add stations.xlsx trips_2025.csv
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git status
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   stations.xlsx
        new file:   trips_2025.csv


TODO 2b: vim .gitignore and put house rules inside.


TODO 2c:
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git status
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   stations.xlsx
        new file:   trips_2025.csv

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        .gitignore
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git status
On branch main
nothing to commit, working tree clean

(I put the ignores in the file, confused because I thought we were supposed to commit one by one. So I put “git commit -m “ignore raw data files” and then could not add another commit.)
base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git rm --cache .gitignore
rm '.gitignore'
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git add .gitignore 
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git commit -m "1-ignore raw 
data files, 2-ignore jupyter's autosave clutter, 3- ignore scratch/"
Tried to fix but could not.



Q2:



Part 3: History and Diffs (I cannot find report.md on canvas have my version and an empty version right now where I am trying to answer questions. Edit found on drive but missing a limitation sentence about cutoffs)

TODO 3b: New lines rewording one minute limitation are in green.

(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git diff memo_2026.md
diff --git a/memo_2026.md b/memo_2026.md
index 3949d5a..ac41927 100644
--- a/memo_2026.md
+++ b/memo_2026.md
@@ -27,6 +27,6 @@ and novelty are uncontrolled); ~800 early-2026 trips lack end times due to an
 app bug and are excluded from duration figures.
 
 No sentence about minimum trip duration? Nothing to reword?
-
+Minimum trip cutoffs were made at a one minute, missing possible errors made after the one minute cutoff.
 **Recommendation:** keep the Day Pass; monitor fall 2026 before judging it
 fully; begin relocation planning for Sequoyah Hills.

TODO 3c:
b0b60bf (HEAD -> main) Rewording limitation of minimum trip duration cutoff, memo_2026.md
f9644c3 Tried to redo Part 3, but there is no minimum trip limitation sentence

Q3:
If you ran git commit and then git diff, you would get a blank output as git diff only shows unstaged changes.


Part 4: Going to use report_ver_cora.md

TODO 4a:
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git status
On branch main
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   report_cora_ver.md

no changes added to commit (use "git add" and/or "git commit -a")

(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git restore report_cora_ver.md 
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git status
On branch main
nothing to commit, working tree clean

TODO 4b:
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git add WORKLOG.md analysis.ipynb 
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git status
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   WORKLOG.md

(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git restore --staged analysis.ipynb 
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git status
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   WORKLOG.md

TODO 4c: 
d9d0416 (HEAD -> main) Add exaggerated claim to report.md (on purpose, for Part 4c)
aed7fce Part 4a and 4b completed

Q4:

Part 5:

TODO 5a:
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git branch                     
* main

(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git switch -c min-cutoff-2min
Switched to a new branch 'min-cutoff-2min'

(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git branch
  main
* min-cutoff-2min

TODO 5b:


