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



Part 3: History and Diffs (I cannot find report.md on canvas have my version and an empty version right now where I am trying to answer questions.)

TODO 3b: New lines rewording one minute limitation are in green.



Part 4: Going to use report_ver_cora.md

TODO 4a:

TODO 4b:
