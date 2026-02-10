# Customer Insights - Sales Analytics
## Overview
## Business Questions
1.
2. **Cohort Analysis**: How do different customer groups generate different cohort revenue?
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

## Analysis Approach
### 1. Customer segmentation analysis
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