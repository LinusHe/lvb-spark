# LVB Spark Analysis

This project is part of the Big Data Management (2024) module at HTWK Leipzig. It utilizes Apache Spark and MongoDB to analyze data from Leipzig Public Transport (LVB). Docker and Docker Compose are used to set up the environment easily.

## Prerequisites

- Docker
- Docker Compose

## Setup

1. **Place the Database Dump**

   Place your database dump (JSON and BSON files) into the `mongo-seed/lvb` directory. The `mongo-seed` service will use this data to initialize your MongoDB database when the containers are started.

2. **Build and Start the Docker Containers**

   Build the Docker images for the project:

   ```
   docker-compose build
   ```

   After the build completes, start the containers in detached mode:

   ```
   docker-compose up -d
   ```

   The `docker-compose.yml` defines the following services:

   - **mongo**: MongoDB database service.
   - **mongo-seed**: Seeds the MongoDB database with your data.
   - **spark**: Apache Spark with Jupyter Lab interface.

3. **Access Jupyter Lab**

   Open Jupyter Lab in your browser at [http://localhost:8888](http://localhost:8888). Alternatively, you can connect to it from VS Code by adding an external server with the same URL.

   After creating a Spark session app, you can access the Spark UI at [http://localhost:4040](http://localhost:4040/) to monitor your Spark jobs.

4. **Run the Notebooks**

   Navigate to the `lvb-notebooks/` directory within Jupyter Lab (or `notebooks/` on IDE) and run the Jupyter Notebooks to perform data analysis.

## Directory Structure

- `spark/`: Contains the Dockerfile and configuration for the Spark and Jupyter Lab container.
- `mongo-data/`: Stores the MongoDB data.
- `mongo-seed/`: Contains the database dump and scripts for initializing the database.
- `notebooks/`: Contains Jupyter Notebooks for data analysis.
