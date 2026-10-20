# Synthetic Sales Analysis in R

> **AI Assistance Declaration:** AI Assistance Declaration: I used ChatGPT (GPT-6, October 19, 2026) to draft documentation structure, example wording, and Markdown formatting. Prompts used: see Appendix.md. I will verify outputs using RStudio/Posit Cloud rendering, GitHub preview, independent review of the R script, and manual spot-checks. All final calculations must be completed and checked by me. I am responsible for the accuracy and originality of this work.

## Overview
This educational R project demonstrates a basic exploratory analysis of **synthetic** monthly sales. It reads a CSV file, checks its structure, prints summary statistics, and plots monthly sales.

## Repository Contents
- `sales_analysis.R` — runnable base R analysis.
- `data/synthetic_sales.csv` — fictional sample data; no personal information.
- `sales_analysis.Rmd` — documentation of the script.
- `Reflection.md` — reflection draft to personalize after completing verification.
- `Appendix.md` — AI prompts, draft responses, and verification log.

## Requirements and Installation
Install R (R 4.x recommended) and optionally RStudio. No additional R packages are required to run the script. To render the `.Rmd` file, install `rmarkdown` and a supported document renderer as needed.

## Example Usage
From the project root in RStudio or an R console:

```r
source("sales_analysis.R")
```

## Inputs
`data/synthetic_sales.csv` contains two columns: `month` (text) and `sales` (numeric). All values are fictional.

## Outputs
- Console summary of sales values.
- A base R line plot of monthly sales.

## Limitations
The sample has only six months, does not represent actual business activity, and is unsuitable for business forecasting.

## License
For educational demonstration only. No open-source license has been selected; obtain permission before reuse.

## AI Assistance Disclosure
- **Tool:** ChatGPT (GPT-6), October 19, 2026.
- **Main prompts:** Request a README outline, generate a professional README for a synthetic R sales analysis, add Installation/Example Code/License, and critique Markdown syntax.
- **Review changes:** Clearer file descriptions, explicit synthetic-data disclaimer, and a limitation section were included in this draft. Actual preview and execution checks remain pending and must be completed by the student.
- **Details:** See `Appendix.md`.
