# Auto Repair Shop Management System

> **A robust, normalized relational database schema engineered to manage the complex operations of an Automotive Service Center.**

---

## Database Schema (EER Diagram)
<div align="center">
   <img src = "AutoRepairShop1.5.png" width = "800px" alt = "E-Commerce EER Diagram" />
</div>
---

## Project Overview

This project simulates a production-grade database for a high-volume **Auto Repair Shop**. Unlike basic academic models, this schema addresses real-world business pains such as **financial consistency**, **client inheritance**, and **performance tracking**.

The architecture was designed to answer critical business questions:
* *"How much did we charge for this part 6 months ago?"* (Historical Pricing)
* *"Which mechanic team has the best customer rating?"* (Quality Assurance)
* *"What is the difference in revenue between Corporate Fleets and Individual Clients?"* (Segmentation)

## Key Features & "Senior" Decisions

* ** Financial Integrity (Price Freezing):** Implemented logic to store `HistoricalPartPrice` and `HistoricalServicePrice` within order items. This ensures that future price updates in the catalog do not corrupt the financial history of past Work Orders.
* ** Client Inheritance Strategy:** Utilized a **Generalization/Specialization** approach for `Clients`, branching into `IndividualClients` (CPF) and `CorporateClients` (CNPJ/Industry), sharing a common ID space for simpler querying.
* ** Operational Efficiency:** Includes `EstimatedServiceDuration` to allow future analysis of "Planned vs. Actual" efficiency metrics.
* ** Quality Metrics:** Integrated `AverageRating` at the Team level to enable performance-based analytics.
* ** Strict Typing:** utilized specific data types (`DECIMAL` for currency/time, `ENUM` for finite states) to ensure data hygiene at the database level.

---
## Logical Database Schema

Below is the detailed documentation of the relational tables, including data types and constraints.

### Customer Management
| Table | Attribute | Type | Description |
| :--- | :--- | :--- | :--- |
| **CLIENTS** | `idClients` | INT | **PK**. Unique identifier for all clients. |
| | `Address` | VARCHAR(100) | Full billing address. |
| | `ContactNumber` | CHAR(11) | Phone number (Format: 11999999999). |
| | `Email` | VARCHAR(100) | Contact email. |
| **INDIVIDUAL_CLIENTS** | `CLIENTS_idClients` | INT | **PK, FK**. Links to `CLIENTS`. Represents **inheritance**. |
| | `CPF` | CHAR(11) | **Unique**. Brazilian individual taxpayer ID. |
| | `Name` | VARCHAR(100) | Full name of the person. |
| | `BirthDate` | DATE | Used for age analytics. |
| **CORPORATE_CLIENTS** | `CLIENTS_idClients` | INT | **PK, FK**. Links to `CLIENTS`. |
| | `CNPJ` | CHAR(14) | **Unique**. Brazilian corporate taxpayer ID. |
| | `TradeName` | VARCHAR(100) | Company trading name. |
| | `Industry` | VARCHAR(100) | Business sector (e.g., Logistics, Retail). |

### Assets & Resources
| Table | Attribute | Type | Description |
| :--- | :--- | :--- | :--- |
| **VEHICLES** | `idVehicles` | INT | **PK**. Unique vehicle ID. |
| | `LicensePlate` | CHAR(7) | **Unique**. Standard license plate. |
| | `Brand` / `Model` | VARCHAR | Vehicle specifications. |
| | `CLIENTS_idClients` | INT | **FK**. Owner of the vehicle. |
| **SERVICE_TEAMS** | `idSERVICE_TEAMS` | INT | **PK**. Team identifier. |
| | `TeamName` | VARCHAR(45) | Designation (e.g., "Alpha Engine Team"). |
| | `AverageRating` | DECIMAL(3,2) | Quality KPI (0.00 to 10.00). |
| **MECHANICS** | `idMECHANICS` | INT | **PK**. Mechanic identifier. |
| | `Specialty` | VARCHAR(100) | Mechanic's expertise area. |
| | `SERVICE_TEAMS_...` | INT | **FK**. Team assignment. |

### Operations & Finance (Core Business)
| Table | Attribute | Type | Description |
| :--- | :--- | :--- | :--- |
| **WORK_ORDERS** | `idWORK_ORDERS` | INT | **PK**. The Service Order ID. |
| | `TotalValue` | DECIMAL | Calculated total (Parts + Services). |
| | `Status` | ENUM | State Machine: *Open, In_Progress, Waiting_Parts, Finished, Cancelled*. |
| | `Deadline` | DATE | Expected delivery date. |
| **PARTS** | `idPARTS` | INT | **PK**. Catalog ID. |
| | `UnitPrice` | DECIMAL | Current catalog price. |
| | `StockQuantity` | INT | Current inventory level. |
| **SERVICES** | `idSERVICES` | INT | **PK**. Service Catalog ID. |
| | `StandardLaborPrice` | DECIMAL | Base price for the service. |
| | `StandardLaborTime` | DECIMAL | Reference time (e.g., 1.5 hours). |

### Associative Tables (N:M Relationships)
These tables handle the complexity of items within an order, implementing **Historical Pricing** logic.

* **`WORK_ORDER_PARTS`**: Links Orders to Parts.
    * *Columns:* `Quantity`, `HistoricalPartPrice` (Snapshots the price at the moment of the order).
* **`WORK_ORDER_SERVICES`**: Links Orders to Services.
    * *Columns:* `Quantity`, `HistoricalServicePrice`, `EstimatedServiceDuration` (Snapshots time/cost).
