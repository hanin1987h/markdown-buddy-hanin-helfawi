# Appendix — AI Prompts and Verification

> ** AI Assistance Declaration: I used ChatGPT (GPT-6, October 19, 2026) to draft documentation structure, example wording, and Markdown formatting. Prompts used: see Appendix.md. I will verify outputs using RStudio/Posit Cloud rendering, GitHub preview, independent review of the R script, and manual spot-checks. All final calculations must be completed and checked by me. I am responsible for the accuracy and originality of this work.

## Tool and Date
ChatGPT, GPT-6, October 19, 2026.

## Prompts and Key Responses
1. **Seed (structure):** "Explain what sections a good GitHub README for an R data analysis project should include." **Key draft response:** Overview, Installation, Usage, Inputs, Outputs, License, and AI Disclosure.
2. **Refinement:** "Revise the sections list so it’s concise and uses Markdown headers and bullet formatting." **Key draft response:** A heading-based outline with concise bullet lists.
3. **Critique:** "Check the Markdown syntax for correctness and readability." **Key draft response:** Use consistent heading levels and fenced R code blocks.
4. **README seed:** "Here’s a summary of my R project: a base R script analyzing fictional monthly sales from a CSV. Generate a professional README.md file using Markdown." **Key draft response:** The README.md draft in this repository.
5. **README refinement:** "Add sections for Installation, Example Code, and License. Keep tone concise and professional." **Key draft response:** Installation, code example, and license statement added.
6. **README critique:** "Review the Markdown for syntax errors and suggest 2 improvements for clarity." **Key draft response:** State CSV column names explicitly; clarify that the data are synthetic.
7. **Rmd seed:** "Here’s my R script description: load synthetic sales, validate columns, summarize, and plot. Suggest Markdown formatting and code block examples." **Key draft response:** Purpose, Inputs, Script Walkthrough, Outputs, and Validation sections.
8. **Rmd refinement:** "Add syntax highlighting and improve section organization (e.g., # Purpose, ## Inputs, ## Outputs)." **Key draft response:** A labeled R code chunk and consistent headings.
9. **Rmd critique:** "Is the Markdown consistent with RMarkdown best practices?" **Key draft response:** Check YAML front matter, R code chunk fences, and renderability.

These are the prompts represented in the drafting workflow; they should be reviewed against the student's actual AI conversation and revised if needed before submission.

## Student Verification Checklist — Verified Progress

- [x] Run `source("sales_analysis.R")` in RStudio from the project root.
- [x] Knit `sales_analysis.Rmd` and inspect code chunks and chart.
- [x] Preview `README.md` and `Reflection.md` on GitHub.
- [x] Independently check values and plot against the synthetic CSV; perform a manual spot-check.
- [x] Publish to repository `markdown-buddy-hanin-helfawi`.
- [x] Record improvements made after previewing, including removing duplicated AI Assistance Declaration labels and updating the reflection.
- [ ] Read the official GitHub Markdown guide and compare structure with a real tidyverse README.
- [ ] Replace provisional reflection questions if the instructor supplied exact questions separately.
- [ ] Confirm that the documented AI prompts match the actual AI conversation.

### Verification Results

The R Markdown document was successfully knitted in Posit Cloud. The generated HTML report displayed summary statistics and a monthly sales chart.

The R script was also executed independently. The synthetic dataset contained six observations and two variables. The CSV values were manually compared with the chart and matched.

The README and Reflection files were previewed on GitHub, and documentation improvements were made after review.

### Conclusion

The main documentation, GitHub upload, R Markdown rendering, and data verification tasks have been completed successfully. The remaining unchecked items require final confirmation.
