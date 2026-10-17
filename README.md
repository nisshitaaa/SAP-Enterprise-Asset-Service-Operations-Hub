 SAP Enterprise Asset & Service Operations Hub

A SAP ABAP Cloud project for managing enterprise assets, service requests, service orders, technicians, spare-parts inventory, part usage, and maintenance history through SAP Fiori Elements applications.

 Overview

This project demonstrates an integrated asset and service operations solution built using SAP BTP ABAP Environment and the ABAP RESTful Application Programming Model (RAP).

 Application Modules

- Asset Management — Maintain asset information.
- Service Requests — Record and manage service requests.
- Service Orders — Track maintenance and service work.
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
