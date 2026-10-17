 SAP Enterprise Asset & Service Operations Hub

A SAP ABAP Cloud project for managing enterprise assets, service requests, service orders, technicians, spare-parts inventory, part usage, and maintenance history through SAP Fiori Elements applications.

 Overview

This project demonstrates an integrated asset and service operations solution built using SAP BTP ABAP Environment and the ABAP RESTful Application Programming Model (RAP).

 Application Modules

- Asset Management — Maintain asset information.
- <img width="1907" height="907" alt="Assets Fiori" src="https://github.com/user-attachments/assets/025ae55f-d601-4dc2-a5e1-2559a20726c3" />
- <img width="1912" height="917" alt="Assets Fiori detail" src="https://github.com/user-attachments/assets/c1ab7b9a-ac18-47b9-b427-8c323124ad3e" />


- Service Requests — Record and manage service requests.
-<img width="1917" height="962" alt="Service Request  Fiori" src="https://github.com/user-attachments/assets/e40b1cbe-c6f9-4caf-8cf6-a4432708b6ba" />
-<img width="1918" height="912" alt="Service Request Detail fiori" src="https://github.com/user-attachments/assets/81052bcf-c1d9-464b-b233-b3f710f2e675" />


- Service Orders — Track maintenance and service work.
- <img width="1917" height="913" alt="Service Order" src="https://github.com/user-attachments/assets/1b1f6552-2745-4c9b-b02c-789d381237e2" />
- <img width="1918" height="905" alt="Service Order detail" src="https://github.com/user-attachments/assets/80a6e744-e016-466f-87c2-942ce7ce8818" />


- Technicians — Maintain technician information.
- Spare Parts Inventory — Manage parts, stock quantities, and reorder levels.
- Part Usage — Record spare-part usage against service orders.
- Maintenance History — Maintain maintenance records.

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

Developed as an SAP ABAP Cloud portfolio project.
