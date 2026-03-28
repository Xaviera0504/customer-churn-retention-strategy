# Customer Churn & Retention Strategy Dashboard
**Strategic Growth Analysis | R & Shiny**

## Business Objective
To identify high-risk customer segments and "product leaks" within the Telco ecosystem. This project moves beyond raw data to provide actionable retention strategies for product stakeholders.

## Tech Stack
* **Language:** R
* **Libraries:** Tidyverse (ggplot2, dplyr), Shiny, Shinythemes
* **Deployment:** Hosted live on [shinyapps.io](https://xaviera0504.shinyapps.io/customer-churn-strategy/)

## Key Strategic Questions & Findings

**1. Which contract types correlate with the highest churn velocity?**
* **Finding:** Month-to-Month contracts are the primary leak in the funnel. The dashboard reveals they churn at an exponentially higher rate than 1-year or 2-year contracts. 
* **Actionable Insight:** The business needs a "Subscribe & Save" initiative to aggressively transition month-to-month users into annual commitments.

**2. Does lack of tech support act as a primary driver for customer drop-off?**
* **Finding:** Yes. Customers who do *not* have Tech Support churn at nearly triple the rate of those who do. 
* **Actionable Insight:** Tech Support should not be treated as an add-on; it is a core retention mechanism. 

**3. How can we optimize onboarding for month-to-month subscribers?**
* **Strategic Recommendation:** We need to bundle "Tech Support" and "Online Security" into the default month-to-month package. Even if we raise the base price slightly, the reduction in churn velocity will result in a higher Customer Lifetime Value (CLTV).
