 SAP Enterprise Asset & Service Operations Hub

A SAP ABAP Cloud project for managing enterprise assets, service requests, service orders, technicians, spare-parts inventory, part usage, and maintenance history through SAP Fiori Elements applications.

 Overview

This project demonstrates an integrated asset and service operations solution built using SAP BTP ABAP Environment and the ABAP RESTful Application Programming Model (RAP).

 Application Modules

- Asset Management — Maintain asset information.
- <img width="1907" height="907" alt="Assets Fiori" src="https://github.com/user-attachments/assets/025ae55f-d601-4dc2-a5e1-2559a20726c3" />
- <img width="1912" height="917" alt="Assets Fiori detail" src="https://github.com/user-attachments/assets/c1ab7b9a-ac18-47b9-b427-8c323124ad3e" />


- Service Requests — Record and manage service requests.
-<img width="1917" height="913" alt="Service Request  Fiori" src="https://github.com/user-attachments/assets/ac67a82b-4ee6-4c59-bf02-ee84977ce2f3" />
-<img width="1918" height="912" alt="Service Request Detail fiori" src="https://github.com/user-attachments/assets/81052bcf-c1d9-464b-b233-b3f710f2e675" />


- Service Orders — Track maintenance and service work.
- <img width="1917" height="913" alt="Service Order" src="https://github.com/user-attachments/assets/1b1f6552-2745-4c9b-b02c-789d381237e2" />
- <img width="1918" height="905" alt="Service Order detail" src="https://github.com/user-attachments/assets/80a6e744-e016-466f-87c2-942ce7ce8818" />


- Technicians — Maintain technician information.
- <img width="1912" height="917" alt="Technician Fiori" src="https://github.com/user-attachments/assets/af02b739-4b6e-4f2a-82b3-a1b47e9c7a39" />
-<img width="1912" height="912" alt="Technician Fiori Detail" src="https://github.com/user-attachments/assets/267554a6-7ea3-4f94-899b-f0c55f5a9979" />


- Spare Parts Inventory — Manage parts, stock quantities, and reorder levels.
- <img width="1905" height="912" alt="Spare parts Fiori" src="https://github.com/user-attachments/assets/74b0a191-390b-4faa-bd64-a7976b200ffc" />
- <img width="1906" height="912" alt="Spare parts Detail" src="https://github.com/user-attachments/assets/6b69fb88-012c-4b10-9ec9-1ed5eda84718" />


- Part Usage — Record spare-part usage against service orders.
- <img width="1908" height="906" alt="Part Usage fiori" src="https://github.com/user-attachments/assets/1c5fcd7f-3ed7-4568-88ea-ae95e5bf359d" />
- <img width="1903" height="911" alt="Part usage detail" src="https://github.com/user-attachments/assets/c7166e84-ca7e-425b-ae4c-653f3df638d3" />


- Maintenance History — Maintain maintenance records.
- <img width="1900" height="912" alt="Maintainence History Fiori" src="https://github.com/user-attachments/assets/49308c23-ca21-466b-b50f-31f5c4814379" />
- <img width="1907" height="908" alt="Maintainence History detail fiori" src="https://github.com/user-attachments/assets/1e6fa38f-32f8-4a8d-a987-c584f1641eff" />



 Technology Stack

- SAP BTP ABAP Environment
- Eclipse ADT
- ABAP RESTful Application Programming Model (RAP)
- ABAP CDS View Entities
- SAP Fiori Elements
- OData V4

 Key Features

- CRUD operations for business records
- CDS associations for related information
- Fiori Elements list reports and object pages
- Calculated spare-part stock status
- Filtering for parts marked `LOW STOCK`
- Part-consumption action with inventory deduction observed during testing

 Architecture

The solution uses Fiori Elements for the user interface, OData V4 services for exposure, RAP behavior definitions and implementations for business logic, CDS entities for the data model, and custom ABAP tables for persistence.

Current Status

The core applications and low-stock filtering have been implemented. The automatic `QuantityUsed` and `TotalCost` updates in the Consume Spare Part action still require verification.

 Future Enhancements

- Complete and verify part-consumption quantity and cost updates
- Add operational dashboards and KPIs
- Expand automated testing and documentation


