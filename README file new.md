
# 📊 SQL Project: Mobile Sales Data Analysis

## 📁 Dataset
The dataset (`mobile_sales_data.csv`) contains sales information for various mobile-related products like laptops, mobiles, and tablets across different regions and customers.

### Key Columns:
- **Product**: Type of product (Laptop, Mobile, etc.)
- **Brand**: Brand name (Samsung, HP, etc.)
- **ProductCode**: Unique product identifier
- **Price**: Selling price
- **QuantitySold**: Number of units sold
- **CustomerLocation / Region**: Area where product was sold
- **Specifications**: Details like RAM, ROM, Processor, etc.

---

## 🛠️ SQL Operations Performed

### 🔹 Database & Table Creation
- Created database `SQLPROJECT1`
- Created table `MOBILE_DATA` with necessary schema
- Increased column length for `ProductSpecification` field

### 🔹 Data Cleaning
- Checked for `NULL` values in critical columns

### 🔹 Data Exploration Queries
- Unique product types
- Total number of sales records
- Sales made by a specific brand
- Customers from a specific region
- Quantity sold per brand
- Sorting by price
- Product-specific filters (Laptop sales)
- Average price by brand
- Revenue per region
- Top 3 brands by quantity
- Products sold per RAM size
- Highest revenue RAM configuration
- Average quantity sold per region

---

## 🧠 Insights Gained
- **Which RAM size generated the most revenue?**
- **Top-performing brand by quantity?**
- **Which region is most profitable on average?**

---

## 🧰 Tools Used
- **PostgreSQL (PgAdmin)**
- SQL functions: `GROUP BY`, `ORDER BY`, `SUM`, `AVG`, `DISTINCT`, `LIMIT`

---

## ✍️ Author
**Abhiram** — B.Tech Student  
Actively learning SQL and data analytics.
