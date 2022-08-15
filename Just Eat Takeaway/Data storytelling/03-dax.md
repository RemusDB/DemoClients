# Part: Analyzing and visualizing data
id: anal-viz
url: anal-viz

## Description

Identify different types of data visualizations and learn how to use them effectively on your data

## Welcome Message

Hi and welcome to the PowerBI Fundamentals course! This course is specially designed to offer a hands-on guided-learning approach that helps you meet your goals quickly, gain confidence, and learn at your own pace. 

## Summary Message

Congrats! You have successfully completed the first part of the PowerBI Fundamentals course! In the next parts we will further deep dive into developing your data-driven decision making skills!


### Section: Types of data visualization
id: types-data
url: types-data


#### Exercise: Building your first dashboard
id: kpi-card
url: kpi-card
type: video
video: https://vimeo.com/701424855/b57e07ba61

##### Content

<p>In this lesson we will mainly focus on building different types of visualizations and at the same time learn more about the Foodtiger supermarkets sales data.</p>

<p>Sometimes a single number is the most important KPI you want to track in your dashboard - such as profit, total number or orders or total sales</p>

<p>For this, let’s use a type of visualization called card. 
Go to the Visualizations Panel and select the card. 
Now we go to the Fields Panel and drag the Total Profit to the Field section. And voila - FoodTiger Supermarkets generated 224k profit.</p>

<p>Similarly, let’s now look at the total number of orders and sales.  We create 2 new cards and add the corresponding data.
Now let’s deep-dive to better understand which are the regions which had the most significant impact in terms of sales. We will use a vertical bar chart for this.
Go to the Visualization Panel and select the Clustered column chart : Add Region to Axis and then add Total Sales to Values section.
To make the visual self-explanatory, we can also add data labels to it by enabling the Data labels options from the Format panel. </p>

<p>It’s very easy to change the visualization type from a vertical to a horizontal barchart.</p>

<p>As you can see in the char, the East region generated 0.59 millions in sales.
But how much from this was generated by each Product Category?
We can find this out by adding a stacked vertical bar chart and dragging the columns we need</p>

<p>Let’s also enable the data labels.The West region sells 41.5% vegetables, which is the highest among all 4 regions.You can play around with changing the visualization type and choose the one that best suits your storyline.</p>

<p>Finally, let’s deep-dive into the payment methods used by customers when purchasing at FoodTiger Supermarkets.Add a pie chart and drag the corresponding columns from the Fields section</p>

<p>So 34% of the customers prefer to pay for their groceries via their smartphone by using Apple Pay. Awesome, right?</p>

<p>Now that you have a good understanding on how to build basic dashboards, let’s practice with some hands-on exercises!</p>


#### Exercise: Choosing effective visuals for average delivery time evolution
id: multichoice-test-knowledge
url: multichoice-test-knowledge
type: quiz

##### Content

<p>In the past period you see a decrease in rating for several restaurants and you decide to look at their average delivery time evolution:<p>

<p align="middle"><img src="https://docs.google.com/spreadsheets/d/e/2PACX-1vStyV0dE74Z_9-X0lLky7e5MQlOfUGwwDA2RdL7iADARlWoZHuGHN4JFsxb0G6rqGF3zqofl2bQZbdR/pubchart?oid=1267966403&format=image" 
alt="recursion" align="middle" style="max-width: 100%"></p>


<p align="middle"><img src="https://docs.google.com/spreadsheets/d/e/2PACX-1vStyV0dE74Z_9-X0lLky7e5MQlOfUGwwDA2RdL7iADARlWoZHuGHN4JFsxb0G6rqGF3zqofl2bQZbdR/pubchart?oid=355589180&format=image" 
alt="recursion" align="middle" style="max-width: 100%"></p>


##### Task: Choose the most effective visual
type: multichoice
answer: 1

###### Question

<p>Which visual would you choose to focus the attention more on the the trend rather than on invidiual values?</p>

###### Option #1

<p>Option A</p>

####### Option Feedback

<p>Indeed, using lines makes it easier to identify trends.</p>

###### Option #2

<p>Option B</p>

####### Option Feedback

<p>This visual is not the best option if you want to concentrate on the trend.</p>

###### Option #3

<p>None</p>

####### Option Feedback

<p>Not quite, one of the charts makes it easier to concentrate on the trends.</p>

###### Hint

<p>Choose one of the provided options.</p>




#### Exercise: Analyze payment methods###########
id: elem-data-storys
url: elem-data-storys
type: powerbi
video: https://vimeo.com/670881417


##### Context

<p>Now that you are more familiar with the Rabobank data, let's generate some insights by building a chart and analyzing the data.</p>

##### Instructions

###### Step #1

<p>Go to the Visualization Panel and select the Pie chart icon</p>

####### Step Hint 

<p>Visualization Panel is located on the right-hand side of the screen. You can hoover the mose over each icon to better understand what they mean.</p>

###### Step #2

<p>Now let's add some data to the visual. Go to the Fields section, select the Payment method column  and drag it to Legend
</p>

####### Step Hint 

<p>Drag and drop the column in the Fields Pane</p>

###### Step #3

<p>Similary, select the Transactions column  and drag it to Values.
</p>

####### Step Hint 

<p>Drag and drop the column in the Fields Pane</p>

##### Task
type: multichoice
answer: 3

###### Question

<p>How many transactions (%) were made using Google Pay?</p>

###### Option #1

<p>22.27%</p>

####### Option Feedback

<p>Not quite, look cloosely at the pie chart.</p>

###### Option #2

<p>18.52%</p>

####### Option Feedback

<p>Try again! Only take into account the transactions made via Google Pay.</p>

###### Option #3

<p>29.14%</p>

####### Option Feedback

<p>Yes, indeed! Google Pay transactions account 29.14%!</p>

###### Hint

<p>Choose one of the provided options.</p>


#### Exercise: Open question###########
id: open-story
url: open-story
type: powerbi
video: https://vimeo.com/670881417

##### Context

<p>Now that you are more familiar with the FoodTiger supermarkets sales data, let's generate some insights by building a chart and analyzing the data.</p>

##### Instructions

###### Step #1

<p>Go to the Visualization Panel and select the Pie chart icon</p>

####### Step Hint 

<p>Visualization Panel is located on the right-hand side of the screen. You can hoover the mose over each icon to better understand what they mean.</p>

###### Step #2

<p>Now let's add some data to the visual. Go to the Fields section, select the Product Category column  and drag it to Legend.</p>

####### Step Hint 

<p>Drag and drop the column in the Fields Pane</p>

###### Step #3

<p>Similary, select the Profit column  and drag it to Values.
</p>

####### Step Hint 

<p>Drag and drop the column in the Fields Pane</p>

##### Task: Which product category generated the least profit?
type: open
answer: Dairy
 
###### Question

<p>Which product category generated the least profit?
</p>

###### Hint

<p>Look at the pie chart and identify which of the 3 product categories had the smallest contribution.</p>

###### Success Feedback

<p>That�s right! Dairy products had 26.44% contribution to the profit, which was the least among all 3 categories.</p>

###### Failure Feedback

<p>Not quite, look closely at the part coresponding to Dairy products only.</p>



#### Exercise: Compare with bar charts##################
id: comp-bar
url: comp-bar
type: video
video: https://vimeo.com/654067950


#### Exercise: Tables and heatmaps##################
id: tab-heatmap
url: tab-heatmap
type: video
video: https://vimeo.com/654067950

#### Exercise: Identify corelations with scatterplots ##################
id: ident-scatter
url: ident-scatter
type: video
video: https://vimeo.com/654067950



### Section: Customize simple visualizations
id: custom-simple
url: custom-simple

#### Exercise: Adding titles and legend##################
id: add-title
url: add-title
type: video
video: https://vimeo.com/654067950

#### Exercise: Filtering data##################
id: filter-data
url: filter-data
type: video
video: https://vimeo.com/654067950

### Section: Choosing an effective visual
id: choose-effective
url: choose-effective

#### Exercise: What is the message?##################
id: choose-effective
url: choose-effective
type: video
video: https://vimeo.com/654067950

#### Exercise: Match visuals with your data##################
id: match-data
url: match-data
type: video
video: https://vimeo.com/654067950
