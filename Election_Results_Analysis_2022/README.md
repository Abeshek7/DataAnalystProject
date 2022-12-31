This is an Election Result analysis of the recently concluded Gujarat and Himachal assembly elections in December 2022. The Report analyzes the trends in various constituencies of the state of Gujarat and Himachal. 
The Dataset for this has been taken from the election commission website of India. The Map of Gujarat and Himachal was downloaded from Bielefeld University Publication(GIS Shapefiles)and converted into a TOPO JSON format before loading into PowerBI.
The Following things were done as part of this analysis.

1. Data Preparation.
2. Data Cleaning.
3. Plotting the map of the Gujarat Assembly Constituency and Himachal Assembly Constituency.
4. Map Format Conversion.
5. Plotting the results.
6. Publishing the reports.


![image](https://user-images.githubusercontent.com/119685963/210132898-36d0b134-7779-4a2c-9d0f-2123a9575825.png)



![image](https://user-images.githubusercontent.com/119685963/210133333-b9b7c43d-c568-45cf-b002-f0f7ca2c08de.png)


![image](https://user-images.githubusercontent.com/119685963/210133679-803369b0-4fd0-4c6b-9f32-68ff2173b700.png)

The Data has been downloaded from the official election commission website of India and extracted into Microsoft Excel.
Election Result Link ----> https://results.eci.gov.in/ResultAcGenDec2022/partywiseresult-S06.htm 



![image](https://user-images.githubusercontent.com/119685963/210133729-8cceee96-991d-468f-b9c2-3a83157abb1e.png)

The Data is loaded into PowerBI from Microsoft Excel.Data cleaning is the process that removes data that does not belong in your dataset.
While the techniques used for data cleaning may vary according to the types of data your company stores, you can follow these basic steps to map out a framework for your organization.
1.Remove duplicate or irrelevant observations.
2.Fix structural errors
3.Filter unwanted outliers
4.Handle missing data
5.Validate and QA



![image](https://user-images.githubusercontent.com/119685963/210135587-654e07d7-14da-4a18-8b8c-d4feb6ba26ae.png)

search in google for downloading map files.

gis shape files for india  assembly constituency

URL ----->https://pub.uni-bielefeld.de/record/2674065


![image](https://user-images.githubusercontent.com/119685963/210135663-86157653-9809-4b4d-bc57-d4b13bedd496.png)



![image](https://user-images.githubusercontent.com/119685963/210135691-e938f5b8-7561-47f1-bb98-862f746916cb.png)


Once the map files(dbf,prj,shp) are downloaded we need to got to ----> mapshaper.org 
Import these extension files.

![image](https://user-images.githubusercontent.com/119685963/210135771-36c3800c-f0a6-4677-854c-96a755d5ec89.png)


Then we need to simplify these files.

![image](https://user-images.githubusercontent.com/119685963/210135786-7a7465de-322e-4fd8-97cf-25fc7270189d.png)


Once it is done, we need to export it in TOPO JSON format with a zoom of 2-1.5% since PowerBI accepts this.



![image](https://user-images.githubusercontent.com/119685963/210135822-48bbbf14-07ee-4f39-988a-9d5163aafdd9.png)



Then we need to import this JSON file into PowerBI in Custom Map settings.

![image](https://user-images.githubusercontent.com/119685963/210136151-b6a27327-5fd9-4303-988c-949ff2b975df.png)



![image](https://user-images.githubusercontent.com/119685963/210135878-0d167fa3-6699-4eb2-84e5-6da85f44a98e.png)

The Following Calculations were created in PowerBI using DAX (Data Analysis and Expressions). Measures were implemented in this project.

1.Total Count = COUNT('2022 Election'[Leading Party])

2.Leading Switch Color =
SWITCH (
    SELECTEDVALUE ( '2022 Election'[Short Leading Party] ),
    "BJP", "#FF9A30",
    "INC", "#12ABEE",
    "AAP", "#0065A5",
    "SP", "#CA0505",
    "Independent", "#808080"
)

3.Trailing Switch Color = 
SWITCH (
    SELECTEDVALUE ( '2022 Election'[Short Trailing Party] ),
    "BJP", "#FF9A30",
    "INC", "#12ABEE",
    "AAP", "#0065A5",
    "SP", "#CA0505",
    "Independent", "#808080"
)

![image](https://user-images.githubusercontent.com/119685963/210135985-21994b72-14b2-40ca-ba9c-cd574feef9ef.png)


As this is a view where dimensions and facts were combined, the data model has been created in PowerBI in one table. The Query for this analysis was loaded in directly from Microsoft Excel.

![image](https://user-images.githubusercontent.com/119685963/210136013-e560f63d-fa89-422a-a4c2-6b470c224cff.png)


![image](https://user-images.githubusercontent.com/119685963/210136063-61344c67-4400-4cd7-a1ab-4780a414ba9d.png)


The Reports are finally published to PowerBI Service.






