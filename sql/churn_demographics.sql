--churn percentage by senior citizen
SELECT 
seniorcitizen,
count(*) as customers ,
sum(ChurnFlag) as churned_customer,
ROUND(100*sum(ChurnFlag)/count(*),2) as churn_pct
from telco_customers
GROUP BY  seniorcitizen
ORDER BY churn_pct DESC

--churn percentage by partner
SELECT 
partner,
count(*) as customers ,
sum(ChurnFlag) as churned_customer,
ROUND(100*sum(ChurnFlag)/count(*),2) as churn_pct
from telco_customers
GROUP BY  partner
ORDER BY churn_pct DESC

--churn percentage by dependents
SELECT 
dependents,
count(*) as customers ,
sum(ChurnFlag) as churned_customer,
ROUND(100*sum(ChurnFlag)/count(*),2) as churn_pct
from telco_customers
GROUP BY  dependents
ORDER BY churn_pct DESC