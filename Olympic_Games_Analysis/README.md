                                           



![image](https://user-images.githubusercontent.com/119685963/210103996-9f113621-5bfc-4118-873e-7744c86554c4.png)


![image](https://user-images.githubusercontent.com/119685963/210106199-631cef99-a47a-4678-86d5-d9108ae145ee.png)


As a Data Analyst working at a news company you are asked to visualize data that will help readers understand how countries performed
historically in the Summer Olympic Games.

The Main task is to show historical performance for different countries.

![image](https://user-images.githubusercontent.com/119685963/210106262-6443d0cc-125a-4539-b4f9-87fa358674c0.png)


The Necessary data was imported into SQL Server Database and transformed using the transformations listed below.


![image](https://user-images.githubusercontent.com/119685963/210103904-4b2006e0-7684-4eed-be27-5520a33418eb.png)


![image](https://user-images.githubusercontent.com/119685963/210106036-6710c984-8045-44da-8f87-da373dffd084.png)


As this is a view where dimensions and facts were combined, the data model has been created in PowerBI in one table.
The Query for this analysis was loaded in directly from SQL Server.

![image](https://user-images.githubusercontent.com/119685963/210104933-18b57fc0-3333-43b8-8023-55fd1e12f6ce.png)


![image](https://user-images.githubusercontent.com/119685963/210106103-345c4ca7-f7d6-46cf-842e-f9d366df7950.png)


The Following Calculations were created in PowerBI using DAX (Data Analysis and Expressions).
Measures were implemented in this project.

1. Competitors = DISTINCTCOUNT('Olympic Games Data'[ID])

2. Medals = COUNTROWS('Olympic Games Data')

3. Medals Registered = CALCULATE ([# of Medals], FILTER (
        'Olympic Games Data',
        'Olympic Games Data'[Medal] = "Bronze"
            || 'Olympic Games Data'[Medal] = "Silver"
            || 'Olympic Games Data'[Medal] = "Gold"
    )
)



![image](https://user-images.githubusercontent.com/119685963/210106126-b3dc08bd-75e2-41ee-bc43-d1e9275b875f.png)

The Dashboard consists of visualizations and filters which gives the end users to navigate and find information .
The Users can filter by period using year,Nation Code,Competitor,




