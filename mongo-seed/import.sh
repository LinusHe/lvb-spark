#!/bin/bash

if ! mongosh --host mongo --port 27017 --eval "db.getCollectionNames().length > 0" --quiet; then
  echo "Database is empty. Importing data..."
  mongorestore --host mongo --port 27017 /data/seed
else
  echo "Database already contains data. Skipping import."
fi