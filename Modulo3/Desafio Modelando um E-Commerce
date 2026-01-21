## Relational Schema

Below is the textual representation of the database schema, detailing entities, attributes, primary keys (PK), and foreign keys (FK).

**Legend:**
* **Bold**: Primary Key (PK)
* *Italic*: Foreign Key (FK)

---

### Customer & Profile
* **CUSTOMER** (**idCustomer**, First_Name, Last_Name, Email, Phone, Street, City, State, Zip_Code, Country)
* **INDIVIDUAL_PERSON** (**idCustomer**, CPF, Birth_Date)
    * *Constraint: idCustomer references CUSTOMER(idCustomer)*
* **LEGAL_ENTITY** (**idCustomer**, CNPJ, Trade_Name)
    * *Constraint: idCustomer references CUSTOMER(idCustomer)*
* **WALLET** (**idWallet**, Payment_Method_Type, *idCustomer*)

### Payments
* **CREDIT_CARD** (**idCard**, Tokenized_Card, Last_4_Digits, Expiration_Date, Brand, *idWallet*)
* **PIX** (**idPix**, Pix_Key, Bank_Institution, *idWallet*)
* **BANK_SLIP** (**idBankSlip**, Barcode_Number, Value, Issue_Date, Due_Date, *idWallet*)

### Sales & Orders
* **ORDERS** (**idOrder**, Created_At, Estimated_Delivery_Date, Status, Shipping_Cost, *idCustomer*)
* **ORDER_ITEMS** (**idProduct**, **idOrder**, Quantity, Unit_Price, Shipping_Price, Shipping_Distance, Shipping_Weight)
    * *Note: Represents the N:M relation between Orders and Products.*

### Products & Catalog
* **PRODUCT** (**idProduct**, Name, Description, Category, Package_Height, Package_Width, Package_Length, Package_Weight)
* **SUPPLIER** (**idSupplier**, Corporate_Name, CNPJ, Email, Phone, Street, City, State, Zip_Code)
* **PRODUCT_SUPPLIER** (**idSupplier**, **idProduct**)
    * *Note: Links products to their manufacturers/suppliers.*

### Supply Chain & Logistics
* **DISTRIBUTION_CENTER** (**idDistCenter**, Name, Street, City, State, Zip_Code, Contact_Info)
* **PURCHASE_ORDER** (**idPurchaseOrder**, Created_At, Expected_Delivery_Date, Status, *idSupplier*, *idDistCenter*)
* **PO_ITEMS** (**idItem**, Quantity, Unit_Cost, *idProduct*, *idPurchaseOrder*)
    * *Note: Records the cost price and entry of goods.*

### Inventory & Sellers
* **SELLER** (**idSeller**, Corporate_Name, CNPJ, Email, Phone)
* **SELLER_PRODUCT** (**idSeller**, **idProduct**)
    * *Note: Indicates which sellers offer which products (Marketplace logic).*
* **INVENTORY** (**idInventory**, *idSeller*, *idDistCenter*)
    * *Note: Logical link defining where a Seller stores their goods (Own storage or Fulfillment Center).*
* **INVENTORY_ITEM** (**idInventory**, **idProduct**, Quantity)
    * *Note: Controls the actual stock level per product in a specific inventory location.*
