# AsteroidWatch: Predictive Analytics for NEO Detection

## Overview
This project is an end-to-end system for analyzing asteroid data, predicting hazardous events, and visualizing insights. It integrates real-time data collection, machine learning, graph databases, and interactive dashboards to enable advanced asteroid analysis and forecasting.

---

## Features
1. **Data Collection**
   - Real-time asteroid data fetched using NASA's NEOWISE and NeoWs APIs.
   - Automated data update pipeline.

2. **Database Architecture**
   - Neo4j graph database to store asteroid relationships and properties.
   - Graph-based insights into asteroid trajectories and proximity.

3. **Exploratory Data Analysis**
   - Visualizations of size distribution, speed-size correlation, and proximity trends.
   - Statistical hypothesis testing.

4. **Predictive Modeling**
   - Classification: Predict hazardous asteroids.
   - Regression: Predict time of hazardous approach.

5. **Visualization and Reporting**
   - 3D asteroid trajectory visualizations.
   - Interactive dashboards for risk assessment.

6. **Real-Time Monitoring**
   - Alerts for potentially hazardous asteroids.
   - Automated reporting and model retraining.

7. **Deployment**
   - Docker containerization for reproducibility.
   - Cloud-hosted dashboard and APIs.

---

## Installation

### Prerequisites
- Python 3.8 or above
- Docker (for deployment)
- Neo4j (local or cloud instance)
- API Key from NASA ([Get it here](https://api.nasa.gov/))

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/asteroid-analysis.git
   cd asteroid-analysis
