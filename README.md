# FIFA-world-cup-sales-dashboard

The FIFA World Cup Sales Dashboard focuses on enhancing the fan experience and boosting revenue at the FIFA World Cup through an innovative visual dashboard. This dashboard monitors food preferences and vital metrics such as wait times, menu items, and sales data. By incorporating predictive analytics and artificial intelligence, the project aims to optimize inventory management, delivery times, and reduce food wastage. These efforts collectively contribute to elevating fan satisfaction, enriching the overall experience, and increasing revenue within the sports industry.

## Project Assumptions
To develop the dashboard, the following assumptions have been considered:

1. A FIFA world cup match is taking place between Germany and Brazil.
2. The match commences at 9:00 pm and concludes at 11:38 pm.
3. 400 spectators are present at the stadium to watch the match, which is equivalent to approximately 40,000 spectators in the actual scenario.
4. Each spectator receives a ticket that contains information about their gender, date of birth, seat location, and the team they are supporting.
5. The stadium is segregated into four wings, namely East, West, North, and South.
6. Each ticket comprises a QR code (see Appendix C) that redirects the holder to the food ordering app when scanned. The menu includes 36 items, including snacks, appetizers, beverages, and desserts, allowing them to avoid long queues at stalls and not miss out on the match.
7. Customers can specify their dietary preferences, such as Vegan, Vegetarian, Non-Veg, and Gluten-Free, while placing their food orders.
8. The match experiences various events like goals, corner kicks, yellow cards, red cards, and penalties, which are being monitored.
9. The time of placing an order has a maximum deviation of 3 minutes from the time of the occurrence of an event.

## Product Overview
The project encompasses two vital components:

#### 1. Visualization Dashboard
This dashboard is designed for vendors operating restaurants within the stadium. Key features include:

a. Real-time food item data to facilitate accurate inventory management and minimize food wastage.
b. Pre-recorded dietary preferences from customer orders via the app.
c. Information about supporting and playing teams, aiding targeted offers based on ordering patterns and match situations.
d. Visual representation of significant match events and their influence on customer ordering behavior.
e. Zone-specific data to offer tailored promotions in areas with lower order activity, using machine learning insights.
f. Gender-based data to discern age and gender trends in order behavior (see Appendix D).

#### 2. Food Ordering App
The app, accessible via a QR code on the ticket, offers the following advantages to customers:

a. Seamless ordering experience from their seats, eliminating the need to queue.
b. Accurate information on seat location, gender, date of birth, and food preferences (Veg, Vegan, Non-veg, allergies).
c. Optional betting features (subject to local regulations) that offer rewards like free food/drink items or discounts (see Appendix E).

## Data Collection Process
Secondary data sources were utilized for information gathering:

1. Stadium dimensions and seating capacity shaped sample size determination.
2. Menu items and prices guided the creation of the menu table.
3. Past FIFA World Cup schedules aided match timeline determination.
4. Selection of participating teams drew from historical World Cup data.
5. Host and participating countries' cuisines influenced the food menu and pricing strategies.
6. R code generated using ChatGPT (Appendix A) produced datasets resembling real-world information.

## Unit of Analysis
The individual spectator attending the FIFA World Cup match, possessing a ticket with gender, date of birth, seat location, and supported team details, constitutes the study's primary focus. Data analysis centers around their behavior and preferences (Appendix B).

## Key Metrics
Several metrics drive project evaluation and enhancement:

#### 1. Audience Metrics:

a. Total spectators count
b. Gender distribution
c. Age distribution
d. Support distribution for each team
e. Distribution based on seat location

#### 2. Menu Metrics:

a. Orders for each menu item
b. Dietary preference distribution

#### 3. Order Metrics:

a. Total orders during the match
b. Order distribution concerning match events and timing
c. Sales revenue

#### 4. Event Metrics:

a. Goals scored by each team
b. Corner kicks by each team
c. Yellow and red cards issued
d. Penalties awarded and converted

These metrics offer insights into audience engagement, food ordering patterns, and match experience. The data derived aids in pinpointing improvements and optimizing future spectator experiences.

Note: Appendices A, B, C, D, and E are available in the complete project documentation.
