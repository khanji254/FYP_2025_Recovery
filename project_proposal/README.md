# Project Proposal Structure

## Directory Organization

```
Project_Proposal/
├── proposal.tex                    # Main proposal document
├── references/
│   └── proposal_references.bib    # Bibliography file
├── sections/                       # Individual sections (optional)
├── images/                         # All images and figures
├── diagrams/                       # Diagrams, flowcharts, and charts
├── data/                          # Research data and tables
└── README.md                      # This file
```

## How to Use

### Main Document
- Edit `proposal.tex` with your content
- Update title, author, and date in the preamble
- Write content in the sections provided

### Adding Images
1. Place your images in the `images/` folder
2. Insert in your document using:
   ```latex
   \begin{figure}[H]
       \centering
       \includegraphics[width=0.6\textwidth]{images/your_image.png}
       \caption{Image caption here}
       \label{fig:label}
   \end{figure}
   ```

### Adding References
1. Add citations to `references/proposal_references.bib`
2. Use in document: `\cite{citation_key}`
3. Bibliography automatically generated at end of document

### Organizing Sections (Optional)
You can create separate `.tex` files in `sections/` folder:
- `sections/introduction.tex`
- `sections/methodology.tex`
- etc.

Then include them in main document with:
```latex
\input{sections/introduction}
```

## Compilation
- Press `Ctrl+Alt+B` in VS Code to compile
- Press `Ctrl+Alt+V` to view PDF

## BibTeX Entry Types

**@article** - Journal articles
**@book** - Books
**@inproceedings** - Conference papers
**@misc** - Websites, reports, etc.
**@thesis** - Theses and dissertations

## Tips
- Keep filenames simple (no spaces or special characters)
- Use consistent naming conventions
- Comment your LaTeX code for clarity
- Back up your work regularly
