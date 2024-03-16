FROM ubuntu:22.04

WORKDIR /app

COPY . /app

# Create the Conda environment using the environment.yml file
RUN conda env create -f environmentDockerEmoca.yml

# Make RUN commands use the new environment: 
#name of the Env is work38
SHELL ["conda", "run", "-n", "work38", "/bin/bash", "-c"]

ENTRYPOINT ["conda", "run", "-n", "work38","python" , "gdl_apps/EMOCA/demos/test_emoca_on_images.py"]

ENV NODE_ENV production
