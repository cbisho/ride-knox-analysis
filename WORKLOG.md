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

(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git status
On branch main
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        .DS_Store

nothing added to commit but untracked files present (use "git add" to track)

No changes were made to analysis_2026.ipynb so accidentally staging and then restaging leaves no change.

ride-knox-analysis % git commit -m "TODO 4b--redo with new files, stage and unstaging"
[main 1d01691] TODO 4b--redo with new files, stage and unstaging
 1 file changed, 5 insertions(+), 13 deletions(-)

 TODO 4c:
 0364529 (HEAD -> main) Add exaggerated claim (redo) on purpose for part 4, in memo_2026.md

Q4:
Because the original commit does not get written over. It makes a new commit, this is good for auditing because you can track changes.

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
Q5a: One commit is correct here because the actions are connected, they were made in affect of one another.

TODO 5c:
There is no change on my main branch to memo_2026.md. However the change is on the other branch.

TDDO 5d:
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git merge min-cutoff-2min
Merge made by the 'ort' strategy.
 analysis_2026.ipynb | 7 ++++---
 memo_2026.md        | 4 ++--
 2 files changed, 6 insertions(+), 5 deletions(-)

Q5d: I did not get "fast-forward"
Branch could fast-forward because there has been no new commits to the main branch, but git is linear so it just points to the merged commits.

TODO 5e:
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git branch -d min-cutoff-2min
Deleted branch min-cutoff-2min (was 69406d7).
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git branch
* main

Part 6
TODO 6c:
(base) cora@Coras-MacBook-Pro-2 ride-knox-analysis % git merge reword-limitations
Auto-merging memo_2026.md
CONFLICT (content): Merge conflict in memo_2026.md
Automatic merge failed; fix conflicts and then commit the result.


<<<<<<< HEAD
We excluded trips longer than 24 hours (bikes likely never docked).
=======
No sentence about Maximum duration??

Trips over 24 hours were excluded as never-docked outliers.

>>>>>>> reword-limitations

Q6a: The wording from the main sits in the HEAD section. This is because the main branch is where the main edits/conclusions are made so you want to document what is being edited

TODO 6d:
fa153db (HEAD -> main) conflict of max duration wording was resolved, kept main wording.
a0b4965 TODO 6b
7066b2a (reword-limitations) Maximum duration cutoff, again no senetnce in the memo about this?

Q6b: A merge conflict is not Git failing; it is Git checking and confirming changes.





NEW LINE FOR PART 8
