FROM datamechanics/spark:3.2.1-hadoop-3.3.1-java-11-scala-2.12-python-3.8-dm18

USER root

# Create a new working directory for notebooks and data
RUN mkdir -p /usr/local/spark/notebooks /usr/local/spark/data
WORKDIR /usr/local/spark

COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip3 install -r requirements.txt

# Set the default notebook directory
ENV NOTEBOOK_DIR=/usr/local/spark/notebooks

# Start Jupyter Notebook in the new directory
CMD jupyter-lab --allow-root --no-browser --ip=0.0.0.0 --NotebookApp.token='' --NotebookApp.password='' --notebook-dir=${NOTEBOOK_DIR} --allow_remote_access=true --NotebookApp.disable_check_xsrf=True
