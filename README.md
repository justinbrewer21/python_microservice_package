### Flask Application Project Structure for a Python Micro-Service

This project implements a bare bones flask "micro-service" project. The repository includes a Dockerfile that can be used to run the micro-service in a Docker containerized environment.

In addition for development the `build_and_start.sh` automates the deployment to a docker container. To run the application simply run the following command in a bash terminal:

```buildoutcfg
./build_and_start.sh
```
This command builds a docker image named as the project name and tags the image with latest. In a web browser navigate to http://127.0.0.1:5000

#### Running the project locally
To run the project locally open a terminal and navigate to the project directory. The following commands will install Python package dependencies. For this reason it is recommended to activate a virtual environment via a package manager such as Anaconda or Virtual Environment in the terminal before running the following:

```buildoutcfg
pip install -e .
flask run 
``` 
In a web browser navigate to http://127.0.0.1:5000