# LVB Spark Analysis

This project is part of the Big Data Management (2024) module at HTWK Leipzig. It uses Apache Spark and MongoDB to analyze data from the Leipzig Public Transport (LVB). Docker and Docker Compose are used to easily set up the environment.

## Prerequisites

- Docker
- Docker Compose

## Setup

1. Place the database dump (JSON and BSON files) in the `mongo-seed/lvb` directory.

2. Build and start the Docker containers:
   To build the Docker images for the project, run:
   ```
   docker-compose build
   ```

   After the build is complete, start the containers in detached mode:
   ```
   docker-compose up -d
   ```


3. Open Jupyter Notebook in your browser at http://localhost:8888 or in VS Code by adding an external server with http://localhost:8888.

4. Run the notebooks in the `notebooks/` directory to perform the data analysis.


## Directory Structure

- `jupyter/`: Contains the Dockerfile for the Jupyter Notebook container.
- `mongo-data/`: Stores the MongoDB data.
- `mongo-seed/`: Contains the database dump for initialization.
- `notebooks/`: Contains Jupyter Notebooks for data analysis.
- `requirements.txt`: Lists the Python dependencies for the project. These dependencies will be installed in the Jupyter Notebook container during the build process.