Data Analyst Project - Olympic Games Analysis

![image](https://user-images.githubusercontent.com/119685963/210103996-9f113621-5bfc-4118-873e-7744c86554c4.png)

Business Problem
Business Problem


As a Data Analyst working at a news company you are asked to visualize data that will help readers understand how countries performed
historically in the Summer Olympic Games.

The Main task is to show historical performance for different countries.

Data Collection and Table Structures

The Necessary data was imported into SQL Server Database and transformed using the transformations listed below.


![image](https://user-images.githubusercontent.com/119685963/210103904-4b2006e0-7684-4eed-be27-5520a33418eb.png)


Data Model

As this is a view where dimensions and facts were combined, the data model has been created in PowerBI in one table.
The Query for this analysis was loaded in directly from SQL Server.

![image](https://user-images.githubusercontent.com/119685963/210104933-18b57fc0-3333-43b8-8023-55fd1e12f6ce.png)


Calculations

The Following Calculations were created in PowerBI using DAX (Data Analysis and Expressions).
Measures were implemented in this project.

# of Competitors = DISTINCTCOUNT('Olympic Games Data'[ID])

# of Medals = COUNTROWS('Olympic Games Data')

# of Medals Registered = 
CALCULATE (
    [# of Medals],
    FILTER (
        'Olympic Games Data',
        'Olympic Games Data'[Medal] = "Bronze"
            || 'Olympic Games Data'[Medal] = "Silver"
            || 'Olympic Games Data'[Medal] = "Gold"
    )
)


Olympic Games Analysis

The Dashboard consists of visualizations and filters which gives the end users to navigate and find information .
The Users can filter by period using year,Nation Code,Competitor,




