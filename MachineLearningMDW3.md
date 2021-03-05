# Machine Learning Modeling

## Overview
The purpose of this analysis to determine the correlation between higher scoring teams and wins. In addition, we want to see if defensive statistics correlate with team wins. Lastly, we want to review if our models are accurate

## Resources
Three national basketball association (NBA) datafile sets were choosen to perform data and machine learning analysis. The links are provided in the main repository README.

- Team Abbreviation
- Individual Player Stats
- NBA Season Stats

## Analysis
The initial data has 5 years worth of NBA seasons. The data was cleaned but fixing structural errors such as typos or inconsistent capitalization. The franchise total counting statistics needed for the data analysis was kept (points, wins, field goal made, defensive rebounds, blocks, and steals) and other columns were dropped. Using PostgreSQL, new tables were generated for a more meaningful analysis.


To perform the Machine Learning Module, the data were pulled from the SQL Database. 

## 1) "Is there a correleation between high scoring team and wins?"

### Logistic Regression:

- Logistic regression Model was chosen to classify between higher scoring team and lowing scoring team and their amount of wins and amount of lost. This model is helpful in predicting binary outcomes.
- NBA Statistics Data used: team total points, team amount of wins, and team amount of lost
- The “total points” and “wins” data were split into training and testing sets
- Accuracy of module: 0.00 


Conclusion: Recognized that accuracy calculation is meaningless and should not be used for Logistic Regression modelling. 

### Multiple Linear Regression:

- Multiple Linear Regression was chosen to classify between higher scoring team and wins, differentiating by conference. This model is helpful in the relationship between a scalar response and one or more explanatory variables (also known as dependent and independent variables)
- NBA Statistics Data to review as part of the analysis: player/team total points, player/team amount of wins, and conference
- To perform Linear Regression, the distribution of wins and total points were chart. Both charts do not show any normality
- Mean square regression error was used to explore linear regression between wins and high scoring team 
- Root Mean Square Error (RMSE) is a good measure of how accurately the model predicts the response. As a result, lower, values of RMSE indicate better fit. 
- Using Pandas, the following mean squared error of 30.60 was obtained with a root square error of 5.531

Conclusion: With a RSME of 5.531, total points is not good indicator of wins.


### Pearson Correlation table
- Pearson Correlation Table was used to determine the correlation between total points and wins.
- From this table, the pearson correlation coefficient for total points and wins is 0.044150. This indicates that high scoring team do not indicate more team wins.

Conclusion: With linear regression with high RSME, and Low Pearson Correlation coefficient, there is no correlation between higher points and wins. When a team scores a lot of points, it doesn’t mean that they will get more wins. 

### Random Forest Regression Model
- Random Forest Regression Model was chosen to determine the regression between higher scoring team and wins. This model is takes the average of all the predictions, which cancels out the biases. It is highly accurate and robust method as the number of decision trees are in process.
- NBA Statistics Data used: team total points, team amount of wins, and team amount of lost
- The “total points” and “wins” data were split into training and testing sets
- RMSE is a good measure of how accurately the model predicts the response. As a result, lower, values of RMSE indicate better fit. 

Conclusion: With a RSME of 30.754, total points is not good indicator of wins.

## 2) "Does defense statistics correlate with team wins?"
### Pearson Correlation table
- Pearson Correlation Table was used to determine the correlation between defensive stats and wins.
- NBA Statistics Data to review as part of the analysis: team total defensive rebound, team total steal, team total blocks, and wins
- Pearson Correlation Table indicate that all defensive metrics do not indicate or correlate with winning games
- Defensive rebounds: Pearson Correlation of 0.039587
- Steals: Pearson Correlation of 0.057161
- Blocks: Pearson Correlation of 0.059420
- Turnovers: Pearson Correlation of 0.021662


## Conclusion
1) Is there a correlation between higher scoring teams and wins?
- There is no correlation between the higher scoring teams and wins
2) Does defense statistics correlate with team wins?
- None of the defensive statistics correlated to winning the championship. In general, none of the NBA statistics correlated with winning games.
3) How accurate are our models?
- Our models are not accurate at predicting the winner of the NBA championships



