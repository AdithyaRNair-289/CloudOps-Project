# Module 7: Big Data, AI & Stream Processing on Cloud

## Overview
This module covers setting up real-time data streaming, cloud data warehousing, and ML model deployment using Google Cloud Platform services.

## What I Did
- Set up Google Cloud Platform with free trial
- Created Pub/Sub topic for real-time data streaming
- Published and received real-time messages
- Created BigQuery dataset and table as cloud data warehouse
- Inserted and queried CloudOps event data using SQL
- Deployed ML model on Vertex AI Colab Enterprise
- Built Service Health Predictor with 100% accuracy

## Technologies Used
- Google Cloud Platform (GCP)
- Google Cloud Pub/Sub (Real-time streaming)
- Google BigQuery (Cloud data warehouse)
- Vertex AI Colab Enterprise (ML deployment)
- Python (scikit-learn, pandas, numpy)

## Pub/Sub Configuration
- Topic: cloudops-realtime-stream
- Subscription: cloudops-realtime-stream-sub
- Message type: JSON CloudOps events

## BigQuery Configuration
- Dataset: cloudops_dataset
- Table: cloudops_events
- Fields: event_id, user_name, service, status, timestamp
- Records inserted: 5 CloudOps service events

## ML Model
- Type: Random Forest Classifier
- Purpose: Service Health Predictor
- Features: CPU usage, Memory usage, Response time, Error rate
- Accuracy: 100%
- Deployment: Vertex AI Colab Enterprise

## Screenshots
Screenshots are available in the /screenshots folder