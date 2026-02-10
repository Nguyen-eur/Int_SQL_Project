# Customer Insights - Sales Analytics
## Overview
 Analysis of a customer behavior for an e-commerce company to improve customer retention and maximize revenue.

## Business Questions
**Customer Segmentation:** Who are our most valuable customers?

**Cohort Analysis:** How do different customer groups generate revenue?

**Retention Analysis:** Which customers haven't purchased recently?
## Analysis approach

**1. Customer segmentation analysis**
- Categorized customers based on total lifetime value (LTV).
- Assigned customers to High, Mid, Low-value segments.
- Calculated key metrics: total revenue.

Query: [1_customer_segmentation.sql](1_customer_segmentation.sql)

***Visualisation:***
![LTV Distribution](/images/output.png)

**Key findings:**
- High-value segment (25% of customer) drives 66% of revenue($135.4M)
- Mid-value segement (50% of customer) generates 32% of revenue($66.6M)
- Low-value segment (25% of customer) accounts for 2% of revenue ($4.3M)

**Business insights:**

🔌 High-Value Customers = Power Shoppers
- Contoso operates in high-volume consumer electronics retail, with thousands of SKUs across stores (from smartphones to laptops and accessories). The data reveals a strong revenue imbalance: 25% of customers generate 66% of total revenue ($135.4M). These are likely loyal, tech-savvy buyers or B2B clients purchasing high-ticket items. They are core to this business success and must be prioritized through VIP programs, exclusive bundles, and early access to new product launches.

⚖️ Mid-Value Customers: The Growth Zone
- The mid-value segment makes up 50% of the customer base but contributes only 32% of revenue ($66.6M). These customers may be occasional buyers or those purchasing just one major item a year. In retail electronics, this group often needs nudges (such as bundle offers, targeted promos, or financing plans) to increase spending and frequency. **They hold the most potential for revenue growth if nurtured correctly.**

🧊 Low-Value Customers: Lean and Efficient
- Meanwhile, 25% of customers are low-value, responsible for just 2% of revenue ($4.3M). These shoppers likely come in for accessories or seasonal deals. In a retail context, they shouldn't be ignored, but they do require efficient handling. Automation, self-service checkout, and light-touch marketing are ideal here to reduce support costs while maintaining engagement.
2. **Cohort Analysis**: 

***How do different customer groups generate different cohort revenue?***
- Tracked revenue and customer count per cohorts
- Cohorts were grouped by year of first purchase
- Analysed customer retention at the cohort level
- Query: [2_cohort_analyis.sql](/2_cohort_analysis.sql)

***Visualisation:***
![Cohort Analysis](/images/customer_revenue.png)
**Key findings:**
- It’s clear that customers from recent years are bringing in less revenue compared to older ones. Cohorts from 2016 to 2019 performed really well, staying consistently high, while those from 2020 onward have been dropping off more noticeably. The trend line shows that this is a pattern that’s speeding up. Something about the experience changed, and it’s worth figuring out what worked so well in those earlier years.
- NOTE: Net revenue increase due to larger customer base.

**Business Insights:**
- The sharp drop in customer revenue for the 2020 cohort could be linked to the onset of the COVID-19 pandemic.
- After that, the slight uptick in 2021 may reflect a rebound as businesses and consumers adapted post-COVID, returning to more stable spending habits.
- However, the slow but steady drop in 2022–2024 suggests long-term shifts in customer behavior. The company is facing a potential revenue decline.

**3.Customer retention**

Query:
[3_customer_retention_analysis.sql](3_customer_retention_analysis.sql)
 
- Identified customers at risk of churning
- Analyzed last purchase patterns
- Calculated customer-specific metrics

**Visualization**
![Churning customers](/images/churn_customer.png)

**Key findings**

From 2015 to 2023, Contoso experienced consistently high customer churn rates, ranging from 90% to 92%. Despite some growth in total customer volume, retention only slightly improved from 8% to 10% over nine years. This indicates that nearly all customers make a single purchase and do not return. Even in years of high customer acquisition, such as 2018 and 2022, retention failed to improve, suggesting that customer experience or engagement strategies were ineffective. Overall, the data reflects a business heavily dependent on acquiring new customers without building loyalty or long-term value.

**Business Insights**
Contoso's business model appears to rely too heavily on first-time buyers, which is unsustainable in the competitive consumer electronics market. High churn suggests that the company lacks meaningful post-purchase engagement. In an industry where repeat purchases are infrequent, retaining customers requires added value beyond the initial sale. Without improving retention, Contoso risks low customer lifetime value and rising acquisition costs. 

## Strategic Recommendations
### Combined Insights

Contoso’s customer base is heavily reliant on a small group of high-value buyers, while the majority of customers make only a single purchase and churn quickly. Newer customer cohorts are showing declining revenue contributions, and retention has remained critically low for nearly a decade. Despite growing acquisition numbers, the business is not building long-term customer relationships, which limits lifetime value and creates inefficiency in marketing spend.

### Recommendations

***Design for retention, not just acquisition:***
High churn across all segments and cohorts signals a need to shift strategy. Invest in customer journeys that go beyond the first sale. Prioritize the second purchase as a key retention milestone.

***Rebuild the first-year customer experience based on strong historical cohorts (2016–2019):*** Earlier cohorts delivered higher revenue and retention. Audit what worked well during those years. This will help reverse the downward trend in newer cohorts.

***Target mid-value customers for scalable growth:***
Mid-value customers are a large segment (50%) with moderate revenue contribution. They are more likely to respond to personalized bundles, payment options, or cross-sell opportunities. Nurturing this group can lift both revenue and retention without increasing acquisition costs.

## Technical Details
- **Databases:** PostgreSQL
- **Analysis Tool:** PostgreSQL
- **Visualization:** ChatGPT
