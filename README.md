# Customer Churn & Retention Strategy Dashboard
**Strategic Growth Analysis | R & Shiny**

## Business Objective
To identify high-risk customer segments and "product leaks" within the Telco ecosystem. This project moves beyond raw data to provide actionable retention strategies for product stakeholders.

## Tech Stack
* **Language:** R
* **Libraries:** Tidyverse (ggplot2, dplyr), Shiny, Shinythemes
* **Deployment:** Hosted live on [shinyapps.io](https://xaviera0504.shinyapps.io/customer-churn-strategy/)

## Key Findings

**1. Which contract types see the most churn?**
Month-to-month users are churning at a much higher rate than anyone else. The drop-off is massive compared to people on 1-year or 2-year plans. To fix this, we should test out some targeted incentives (like a "Subscribe & Save" discount) to encourage users to lock in an annual plan early on.

**2. Is lack of tech support a big reason people leave?**
Definitely. Customers without tech support are leaving at nearly triple the rate of those who have it. It looks like tech support isn't just a nice-to-have add-on; it's actually a core feature keeping people on the platform.

**3. How can we fix onboarding for month-to-month users?**
Since we know tech support and online security keep people from churning, we should try bundling them into the default month-to-month package from day one. Even if it raises the base price slightly, keeping these users around longer will easily pay off in the long run.
