FROM continuumio/anaconda3

LABEL description="Docker image containing all requirements for ericscript pipeline"

# Install the conda environment
COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a

# Add conda installation dir to PATH (instead of doing 'conda activate')
ENV PATH /opt/conda/envs/EricScript/bin:$PATH

# Dump the details of the installed packages to a file for posterity
RUN conda env export --name ericscript_0.5.5 > ericscript_0.5.5.yml