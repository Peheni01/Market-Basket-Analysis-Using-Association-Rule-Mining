# Market-Basket-Analysis-Using-Association-Rule-Mining

This project delves into the purchasing patterns of consumers by employing Market Basket Analysis, a technique that analyzes the co-occurrence relationships among activities performed by specific types of users in a given environment. Utilizing a dataset with 788 records and 39 variables, this analysis focuses on identifying which items are frequently bought together by customers. The primary method used is the Apriori algorithm for association rule mining, which helps in uncovering these relationships.

### Tools & Technologies
- R - Programming Language for Data Analysis 
- R Packages:
  ```bash
  arules: For handling and manipulating transaction data and mining association rules.
  arulesViz: For visualizing association rules and frequent itemsets.
  data.table: For fast aggregation of large data (e.g., big data).
  tidyverse: For data manipulation and visualization.
  ```
  ### Key features
- Association Rule Mining: Implements the Apriori algorithm to discover frequent itemsets and derive association rules from the dataset.
- Data Preprocessing: Involves sorting data, removing duplicates, and transforming categorical attributes to binary format for analysis.
- Visualization: Utilizes various plotting functions from arulesViz to display the strength of rules through support, confidence, and lift metrics.
- Performance Evaluation: Analyzes the effectiveness of market strategies by evaluating the derived rules, focusing on those with high confidence and lift values to ensure actionable insights.

📊 Visualization
- Bar Plots: To explore the frequency of items purchased.
- Rule Plots: To visualize the association rules, highlighting their support and confidence.
- Scatterplot Matrix: To display the relationship between support, confidence, and lift of the rules.

### Results Analysis and Discussion
The analysis successfully reduces the initial set of potential rules from over 29 million to just 3 highly relevant rules by adjusting the confidence levels. These rules provide insights into the purchasing patterns, such as the likelihood of buying vegetables when purchasing poultry and yogurt. This information can be crucial for retailers aiming to enhance cross-selling strategies.

### Conclusion
The Market Basket Analysis provides valuable insights into consumer purchasing patterns, enabling retailers to tailor their inventory and marketing strategies effectively. By understanding the items that are frequently purchased together, businesses can optimize product placements, promotions, and stock levels to improve customer satisfaction and increase sales.

### References 
- [Data World Dataset](https://data.world/miles-away/market-basket-analysis/workspace/file?filename=market_basket_transactions.csv)
