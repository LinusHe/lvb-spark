FROM jupyter/pyspark-notebook:spark-3.3.2

USER root

# Install MongoDB Spark Connector and MongoDB Java Driver
RUN wget https://repo1.maven.org/maven2/org/mongodb/spark/mongo-spark-connector_2.12/10.1.1/mongo-spark-connector_2.12-10.1.1.jar \
    -O /usr/local/spark/jars/mongo-spark-connector_2.12-10.1.1.jar && \
    wget https://repo1.maven.org/maven2/org/mongodb/mongodb-driver-core/4.8.2/mongodb-driver-core-4.8.2.jar \
    -O /usr/local/spark/jars/mongodb-driver-core-4.8.2.jar && \
    wget https://repo1.maven.org/maven2/org/mongodb/bson/4.8.2/bson-4.8.2.jar \
    -O /usr/local/spark/jars/bson-4.8.2.jar && \
    wget https://repo1.maven.org/maven2/org/mongodb/mongodb-driver-sync/4.8.2/mongodb-driver-sync-4.8.2.jar \
    -O /usr/local/spark/jars/mongodb-driver-sync-4.8.2.jar && \
    chmod 644 /usr/local/spark/jars/*.jar

# Install pymongo
RUN pip install pymongo[srv]

# Switch back to jovyan to avoid running as root
USER ${NB_UID}