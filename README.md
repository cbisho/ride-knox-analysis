Ride Knox 2025–2026: The Day Pass Brings Weekend Riders
In 2025, casual riders away decreased after a prince increase in July. In 2026, a new Day Pass was implemented: counting casual and Day Pass riders together, non-member trips June 2026 were 12% above June 2025. Additionally, pressure at UTK campus stations were alleviated due to additional resources in 2026.

Overview:
Ridership declined in the second half of 2025. Does the 2026 data show a recovery, and did the new docks fix the busiest stations? This repository holds the analysis for both years. Ride Knox wants to know what type of riders and how riders are using their service.

How to run
1.	Clone the repository:
2.	git clone https://github.com/cbisho/ride-knox-analysiscd ride-knox-analysis
3.	Install the requirements:
4.	pip install -r requirements.txt
5.	Put the four raw data files in the repository's main folder, next to the notebooks: trips_2025.csv, stations.xlsx, trips_2026_h1.csv, stations_2026.xlsx.
6.	Open a notebook and choose Kernel → Restart & Run All. Charts are saved to the charts/ folder.
Ride Knox 2025: casual riders decline after the price increase
•	Casual riders left. Casual trips fell 34% in one month after the July price increase (13,816 trips in June → 9,088 in July 2025).
•	Members stayed. Member ridership held steady through the increase.
•	Campus stations were overloaded. Hodges Library (S06) and the Student Union (S08) were among the most pressured stations, at roughly 94 and 91 starts per dock per month.
•	The newest stations were quiet. Bearden (S23) and Sequoyah Hills (S24) had the lowest use in the system.
How to run for 2025 Ride Knox Analysis:
Run  analysis_2025.ipynb
Ride Knox 2026: the Day Pass and new docks at UTK campus stations 
Ride Knox launched a Day Pass on March 1, 2026, added docks at S06 and S08, and opened a new station, Cumberland Ave & 22nd St (S25).
•	Non-members came back, through the Day Pass. Counting casual riders alone, ridership is still 18% below 2025 in June. Counting casual + Day Pass riders, non-member trips passed the 2025 baseline in May (+7%) and reached +12% in June (15,461 vs 13,816 trips).
•	Members kept growing. Member trips were about 10% higher than in 2025 every month. 
•	Day Pass riders are weekend leisure riders. Their trips run a median of 20.5 minutes, and 61% happen on Saturday or Sunday. They look like the casual riders lost in 2025, not members trading down.
•	The new docks relieved pressure. Pressure at Hodges Library and the Student Union fell about 31%. The new S25 station became one of the busiest in the system within its first four months.
•	Rookie stations split. Bearden (S23) doubled its use per dock; Sequoyah Hills (S24) stayed flat at the system low and is a relocation candidate.
How to run: ride_knox_2025_vs_2026.ipynb
Details: memo_2026.md, analysis_2026.ipynb, and the side-by-side comparison in ride_knox_2025_vs_2026.ipynb
Limitations
Only six months of 2026 data are available (January–June), so the fall, when the 2025 decline was largest, is not observed yet. Other factors such as weather or Knoxville events could be affecting usage, but we cannot connect that information to the given data. About 800 trips from January–February 2026 are missing an end time because of an app bug. Additionally, the 10% increase of member riders has unknown cause or correlation, occupation or commuter info, such as student could be useful.
Data
•	2025: 247,967 cleaned trips across 24 stations (trips_2025.csv, stations.xlsx)
•	2026: January–June trips across 25 stations, including the new S25 (trips_2026_h1.csv, stations_2026.xlsx)
•	Tools: Python, pandas, matplotlib
Raw files are not in this repo
They are large (~22 MB for 2025 alone), and the golden rule is to never edit raw data. All four files are listed in .gitignore. Request them from the Ride Knox data team.
Trips columns (same in both years): 'trip_id', 'start_time', 'end_time', 'start_station_id', 'start_station_name', 'end_station_id', 'rider_type', 'bike_type'
 
column	type	notes
trip_id	str	unique, T-series
start_time / end_time	datetime	stored as text in the raw file; ~800 end_time values missing in 2026 (kept and flagged)
start_station_id	str	joins to stations.station_id
start_station_name	str	authoritative names in stations.xlsx / stations_2026.xlsx
end_station_id	str	some missing in both years (kept and flagged)
rider_type	str	2025: member / casual (raw has 6 spellings); 2026 adds day pass (raw has 3 spellings)
bike_type	str	classic / electric
Stations columns (same in both years): 'station_id', 'station_name', 'neighborhood', 'latitude', 'longitude', 'docks', 'year_installed'
Notebook	What it covers
analysis_2025.ipynb	2025 only: what happened after the July price increase
analysis_2026.ipynb	2026 only: cleaning and analysis of the January–June 2026 data
ride_knox_2025_vs_2026.ipynb	Combined comparison of 2025 and 2026 (start here)
analysis_2025_and_2026.ipynb	Dr. V's compact starter-pack version of the 2026 analysis
Repo Structure
ride-knox-analysis/
    README.md
    PROJECT_LOG.md
    _config.yml
    .gitignore
    analysis_2025.ipynb
    analysis_2026.ipynb
    ride_knox_2025_vs_2026.ipynb
    analysis_2025_and_2026.ipynb
    memo_2026.md
    report.md
    report_cora_ver.md
    STARTER-PACK-README.md
    COLLAB-LOG.md
    WORKLOG.md
    WORKLOG_6.md
    image.png
    charts/
        .png files from the notebooks
Who I am (github username: cbisho30)
I am a GST PhD candidate who specializes in molecular dynamics. To improve handling data I am taking DATA 501 to improve my knowledge of data pipelines.
Personal Tools: pandas, MDAnalysis, numpy, ProLIF, matplotlib, seaborn, git
