# GDL - Generally Dumb Learning 
This repository full of research code is developed and "maintained" by Radek Danecek. 

By using the following code, you hereby agree to sell your soul and pledge allegiance to the underworld. 


## Structure 
This repo has two subpackages. `gdl` and `gdl_apps` 

### GDL
`gdl` is a library full of research code. Some things are OK organized, some things are badly organized. It includes but is not limited to the following: 

- `models` is a module with deep learning modules (pytorch based) 
- `layers` contains individual deep learning layers 
- `datasets` contains base classes and their implementations for various datasets I had to use at some points. It's mostly image-based datasets with various forms of GT if any
<!-- - `optimizers`  -->
<!-- - `transforms`  -->
- `utils` - various tools

The repo is heavily based on PyTorch and Pytorch Lightning. 

### GDL_APPS 
`gdl_apps` contains prototypes (finished and not finished). These can include scripts on how to train, evaluate, test and analyze models from `gdl` and/or data for various tasks. 

Look for individual READMEs in each sub-projects. 

Projects with a certain level of usability: 
- [EMOCA](gdl_apps/EMOCA) 
- [EmotionRecognition](gdl_apps/EmotionRecognition)


## Installation 

1) Set up a conda environment with one of the provided conda files. I recommend using `conda-environment_py36_cu11_ubuntu.yml`. That's the one I run on my workstation. This is the one I use for the cluster `conda-environment_py36_cu11_cluster.yml`. The differences between tehse two are probably not important but I include both for completeness. 


`conda env create --file conda-environment_py36_cu11.yml`

Note: the environment might contain some (or even many) redundant packages but who cares. If you find an environment is missing then just pip- or conda- install it and please notify me.


2) Install `gdl` using pip install. I recommend using the `-e` option and I haven't tested otherwise. 

`pip install -e .`