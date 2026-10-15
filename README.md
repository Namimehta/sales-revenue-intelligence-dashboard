# Sales & Revenue Intelligence Dashboard

**Portfolio project by Nami Mehta**  
**Tools:** Power BI, Power Query, DAX, Excel/CSV, SQL (practice)  
**Dataset:** Fully synthetic; 1,800 order records from Jan 2024 to Dec 2025.

## Business question
How can a sales team monitor realized revenue, profitability, order conversion, open pipeline, and performance by region, product category, channel, and salesperson?

## Project goals
- Build an executive sales performance dashboard.
- Track realized revenue and gross profit from won orders.
- Monitor open pipeline separately from realized revenue.
- Compare sales performance by month, region, category, channel, and rep.
- Use slicers for date, region, channel, category, and order status.
- Document findings and recommendations using reproducible synthetic data.

## Dataset and model
The `data/` folder contains:
- `Sales.csv` — order-level fact table with 1,800 records.
- `Date.csv` — daily calendar table (2024–2025).
- `Customer.csv` — synthetic customer dimension.
- `Product.csv` — product dimension.
- `SalesRep.csv` — salesperson dimension.
- `Region.csv` — region dimension.

**Data note:** Currency values use ₹ purely as a synthetic presentation convention; this is not real company/customer data. All names and records are fictional.

## Key measures
The DAX file in `powerbi/DAX_Measures.txt` includes measures for total orders, won/open/lost orders, realized revenue, open pipeline, gross profit, profit margin, win rate, average won order value, units sold, month-over-month change, and YTD revenue.

## Dashboard layout
### Page 1 — Executive Overview
- KPI cards: Realized Revenue, Gross Profit, Won Orders, Win Rate.
- Line chart: monthly realized revenue.
- Bar chart: revenue by region.
- Matrix: category × channel performance.
- Slicers: date, region, channel, category.

### Page 2 — Sales Performance
- Sales representative ranking.
- Channel conversion / win rate.
- Won, open, and lost order distribution.
- Open pipeline by region and channel.

### Page 3 — Product & Profitability
- Revenue and gross profit by category/product.
- Profit margin by product.
- Discount vs. profit scatter plot.
- Monthly product mix.

## Reproducible insights from the generated dataset
- Highest realized-revenue region: **West**.
- Highest realized-revenue category: **Technology**.
- Highest realized-revenue channel: **Website**.
- Highest realized-revenue salesperson: **Aarav Shah**.
- Dataset win rate (won orders / all orders): **72.8%**.
- Realized revenue from won orders: **₹530,625**.
- Open pipeline value: **₹118,235**.

## Files
- `powerbi/dashboard_preview.png` — static dashboard layout reference.
- `powerbi/DAX_Measures.txt` — DAX measures.
- `powerbi/theme.json` — optional theme.
- `sql/analysis_queries.sql` — SQL practice queries.
- `documentation/Project_Summary.pdf` — recruiter-friendly project summary.
- `documentation/Build_Guide.pdf` — steps and portfolio publishing checklist.

**Sales & Revenue Intelligence Dashboard | Power BI, DAX, Power Query, SQL**  
Built a sales analytics project using 1,800 synthetic order records to track realized revenue, gross profit, win rate, average order value, and open pipeline. Designed a star-schema data model and KPI-focused dashboard concept to compare performance across time, region, product category, sales channel, and sales representatives. Added DAX measures and SQL queries for reusable analysis.

**Portfolio Repository**
This public repository contains my Sales & Revenue Intelligence portfolio project, built using synthetic sales data for analytics practice.
Project resources:
data/ — synthetic sales datasets
powerbi/ — dashboard layout preview, DAX measures and theme
sql/ — SQL analysis queries
documentation/ — project summary and build guide
**Current status: Project in progress.** The datasets, documentation and analysis resources are available; the interactive Power BI report is yet to be built and validated.
All data is synthetic and does not represent real customers or business performance
