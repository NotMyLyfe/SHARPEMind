FROM continuumio/anaconda3

WORKDIR /app

COPY environment.yml /app/environment.yml
RUN conda env create -f environment.yml

SHELL ["conda", "run", "-n", "SHARPEMind", "/bin/bash", "-c"]
