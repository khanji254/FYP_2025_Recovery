FROM gitpod/workspace-full

USER root
RUN apt-get update && apt-get install -y \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-bibtex-extra \
    latexmk
USER gitpod
