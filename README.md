<div align="center">

# Tableau Dashboards

### Three interactive data stories — streaming catalogs, a cult TV series, and global hotels

![Tableau](https://img.shields.io/badge/Tableau-Desktop-E97627?logo=tableau&logoColor=white)
![Dashboards](https://img.shields.io/badge/dashboards-3-6f42c1)
![Data](https://img.shields.io/badge/data-included-2ea44f)
![Focus](https://img.shields.io/badge/focus-storytelling%20%2B%20BI-lightgrey)

[Prime Video](#1-prime-video-content) ·
[Breaking Bad](#2-breaking-bad) ·
[TripAdvisor](#3-tripadvisor-hotels) ·
[Open them](#open-the-workbooks)

</div>

---

A collection of interactive Tableau dashboards, each turning a raw dataset into
something you can explore and reason about — filter it, hover it, follow a
trend. Every dashboard ships with its workbook *and* its source data, so you can
open any one and poke at it yourself.

## The dashboards

| # | Dashboard | Dataset | What it answers |
| :--- | :--- | :--- | :--- |
| 1 | [**Prime Video**](Prime/) | `amazon_prime_titles.csv` | What's on Prime — by genre, country, rating, type and release trend |
| 2 | [**Breaking Bad**](Breaking%20Bad/) | `Breaking Bad Dataset.csv` | Episode ratings, viewership over time, and directors across seasons |
| 3 | [**TripAdvisor**](Trip%20Advisor/) | `Tripadvisor.txt` | Hotels by stars, services and rooms; travelers by type and region |

---

### 1. Prime Video Content

Distribution of the Prime Video catalog across country, genre, release year,
type and rating — with a title-detail panel, a geographic map, a radial bar
chart of ratings, top-10 genres, a movie/TV split, and a release-trend line.

<p align="center">
<img src="Readmess/Screenshot%202024-11-21%20204644.png" width="80%" alt="Prime Video Content dashboard">
</p>

📂 [`Prime/Prime.twb`](Prime/Prime.twb) · more detail in [`Prime/README.md`](Prime/README.md)

---

### 2. Breaking Bad

A tour through the series: per-episode metadata, episode counts by season, a
word cloud of directors, an IMDb-rating boxplot per season, and U.S. viewership
over time.

<p align="center">
<img src="Readmess/Screenshot%202024-11-21%20233511.png" width="80%" alt="Breaking Bad dashboard">
</p>

📂 [`Breaking Bad/Book1.twb`](Breaking%20Bad/Book1.twb) · more detail in [`Breaking Bad/README.md`](Breaking%20Bad/README.md)

---

### 3. TripAdvisor Hotels

Hotel analytics: counts by amenities and star rating, users by continent and
season, a traveler-type treemap, and the top 10 hotels by room count.

<p align="center">
<img src="Readmess/Screenshot%202024-11-23%20004458.png" width="80%" alt="TripAdvisor Hotel dashboard">
</p>

📂 [`Trip Advisor/Book1.twb`](Trip%20Advisor/Book1.twb) · more detail in [`Trip Advisor/README.md`](Trip%20Advisor/README.md)

---

## Open the workbooks

1. Install **[Tableau Desktop](https://www.tableau.com/products/desktop)** or the
   free **[Tableau Public](https://public.tableau.com/)** (2023.3 or later
   recommended).
2. Clone the repo:
   ```bash
   git clone https://github.com/harshakalluri1403/Tableau-Dashboards.git
   ```
3. Open any `.twb` file. The matching dataset sits in the same folder, so the
   workbook connects to it directly.

## Tech stack

Tableau Desktop / Public · CSV & text datasets · calculated fields, parameters
and dashboard actions

---

<div align="center"><b>Happy visualizing!</b> 🎨📊</div>
