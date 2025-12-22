# N4 Recovery System - Project Proposal

## Official JKUAT Template Format

This proposal follows the official JKUAT LaTeX template structure.

## Directory Structure

```
Project_Proposal/
├── N4_Recovery_Proposal.tex       # Main document file
├── Files/                          # Individual chapter files
│   ├── title_page.tex
│   ├── Declaration.tex
│   ├── Acknowledgment.tex
│   ├── Abstract.tex
│   ├── Introduction.tex            # Chapter 1: Introduction
│   ├── Chapter2.tex                # Chapter 2: Literature Review
│   ├── Chapter3.tex                # Chapter 3: Research Objectives
│   ├── Chapter4.tex                # Chapter 4: Methodology
│   ├── Chapter5.tex                # Chapter 5: Expected Outcomes & Budget
│   └── Summary.tex                 # Conclusion
├── Bib/                            # Bibliography files
│   ├── proposal_references.bib     # Your references
│   └── IEEEtran.cls               # IEEE citation style
├── Styles/                         # LaTeX style files (from template)
├── Figures/                        # Images and figures
│   └── Jomo_logo.pdf              # JKUAT logo
├── images/                         # Additional images
├── diagrams/                       # Diagrams and flowcharts
└── context/                        # Reference materials (PDFs, PPT)
```

## How to Compile

### Main Document
Open and compile: **N4_Recovery_Proposal.tex**

Press `Ctrl+Alt+B` to build the complete document.

### What Gets Generated
- Title page with JKUAT logo
- Declaration page
- Acknowledgments
- Abstract
- Table of Contents
- List of Figures
- List of Tables
- All chapters
- References
- Appendices (if any)

## Editing Individual Sections

You can edit each section independently:
- **Title/Authors**: Edit `Files/title_page.tex`
- **Introduction**: Edit `Files/Introduction.tex`
- **Literature Review**: Edit `Files/Chapter2.tex`
- **Objectives**: Edit `Files/Chapter3.tex`
- **Methodology**: Edit `Files/Chapter4.tex`
- **Outcomes/Budget**: Edit `Files/Chapter5.tex`
- **Conclusion**: Edit `Files/Summary.tex`

## Adding References

Add citations to: `Bib/proposal_references.bib`

Use in text: `\cite{citation_key}`

## Adding Figures

1. Place images in `Figures/`, `images/`, or `diagrams/` folder
2. Insert in chapter files:
```latex
\begin{figure}[h]
    \centering
    \includegraphics[width=0.6\textwidth]{your_image}
    \caption{Your caption here}
    \label{fig:label}
\end{figure}
```

## Updating Personal Information

Edit `Files/title_page.tex` to update:
- Your name and registration number
- Team member names
- Supervisor names

## Document Features

✅ JKUAT official format
✅ Automatic table of contents
✅ Automatic list of figures and tables
✅ IEEE citation style
✅ Proper page numbering (Roman for front matter, Arabic for content)
✅ Professional headers and footers
✅ Section numbering with chapter prefix

## Notes

- The proposal is structured based on your PowerPoint presentation content
- All technical details about the N4 recovery system are included
- Template follows JKUAT Department of Mechatronic Engineering standards
- Ready for compilation and submission
