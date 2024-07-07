## Real-Time Urban Mobility Demand Forecasting

Urban transportation constantly seeks a delicate balance: maximizing customer satisfaction and driver utilization while minimizing wait times. This becomes even more challenging during peak demand periods. This project explores how machine learning can help bridge this gap.

Drawing inspiration from the challenges of optimizing driver utilization and customer satisfaction alongside the need for fair and adaptable pricing models, especially during high-demand periods, I investigated how machine learning can address the following critical research questions:

- Optimizing Demand and Response: How can machine learning streamline driver dispatch to elevate customer satisfaction and minimize wait times?

- Dynamic Pricing for a Balanced Ecosystem: Can machine learning-driven pricing strategies balance resource allocation, user affordability, and driver motivation during peak demand periods?

To answer our research questions, we'll employ two machine learning models:

> -	Model 1: Ride Demand Forecast Model
>   Our first model is designed to anticipate taxi ride demand data for the upcoming hour, drawing on historical data. 

> - Model 2: Dynamic Pricing Model
>   The second model is built on the foundation of dynamic pricing, a strategy crucial for real-time adjusting of prices based on various factors, including demand. This model doesn't operate in isolation; it ingests the predicted demand from Model 1, integrating it with spatio-temporal features that include both ride data and weather data.
 
### <u>System Architecture for Real-Time Urban Mobility Demand Forecasting</u>

![image](https://github.com/donmonc/Ride-Demand-Forecast/assets/37820350/559d4840-473a-4049-83b2-e76a292eb8a5)



