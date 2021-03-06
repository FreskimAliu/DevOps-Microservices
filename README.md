[![CircleCI](https://circleci.com/gh/FreskimAliu/DevOps_Microservices/tree/main.svg?style=svg)](https://circleci.com/gh/FreskimAliu/DevOps_Microservices/tree/main)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---
## File structure
    
    ├──  .cirlceci                  # CircleCI configuration folder.
    │   ├── config.yml              
    ├──  output_txt_files           # Log outputs from Docker and Kubernetes are saved in this directory.
    │   ├── docker_out.txt          
    │   ├── kubernetes_out.txt     
    ├──  Dockerfile                 # The Dockerfile creates a working directory, install the necessary dependencies, expose port 80, and specify that app.py run at container launch.
    ├──  Makefile                   # The Makefile install the nesserary dependencies for Python, lint the python code and Dockerfile.
    ├──  app.py                     # Application code is saved here.
    ├──  make_prediction.sh         # Shell script to send predictions.
    ├──  requirements.txt           # File to save Python dependencies.
    ├──  run_docker.sh              # Build, list, and run steps are completed in this script.
    ├──  run_kubernetes.sh          # This script runs a docker image with kubernetes, lists the kubernetes pod(s), and forwards the container port to a host.
    ├──  upload_docker.sh           # The built docker image is uploaded to Docker Hub.
    
    
## Setup the Environment

* Create a virtualenv `python3 -m venv ~/.devops`
* Active the virtualenv `source ~/.devops/bin/activate`
    
* Run `make install` to install the necessary dependencies that are listed under __requirements.txt__ file.


### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Uploading image in Docker Hub
* Run command: `./upload_docker.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
