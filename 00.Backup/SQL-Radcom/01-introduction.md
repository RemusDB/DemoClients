# Part: Introduction
id: introduction
url: introduction


## Description

Find out what relational databases are and get to know SQL – a language to interact with databases.

## Welcome Message

–

## Summary Message

Knowing the basic theory and how to select data from a table, let's start with a little bit of practice.




### Section: Introduction
id: introduction
url: introduction




#### Exercise: Introduction ############################################################
id: introduction
url: introduction
type: informational

##### Content


<p>Hello, and welcome to our "Radcom Acquiring Data With SQL" course! We'll be your guide in the world of SQL. SQL is an extremely useful language for getting information from databases.</p>

<p>SQL can be used to find:</p>


<ul>
  <li>How many customers registered this week.</li>
  <li>How much traffic they generated.</li>
  <li>Which are the most used network stations</li>
</ul>


<p>Before we start, take a look at the template code we've prepared for you.</p>




<p>This query retrieves customer names and their city of residence but only for those who enrolled after 2018. The result table is sorted by first name in alphabetical order.</p> 



<p>Impressive, right?</p>

<p>After you finish the course, you're going to write queries like this on your own!</p>

##### Task

<p>Click <span class="run-button">Next exercise</span> to continue.</p>

##### Hint

##### Code Template

```sql
SELECT
  first_name,
  last_name,
  phone_number,
  city_address
FROM customers
WHERE year >= 2018
ORDER BY first_name ASC;
```

##### Initial Result

```sql
SELECT
  first_name,
  last_name,
  phone_number,
  city_address
FROM customers
WHERE year >= 2018
ORDER BY first_name ASC;
```




#### Exercise: Tables ############################################################
id: tables
url: tables
type: informational

##### Content

<p>At Radcom you're going to query many tables, but in this course, we'll only use the most important ones. They are: <code>customers</code>, <code>subscriptions</code>, <code>networks</code>.</p>

<p>Each of these tables contains many columns. You can take a look at the tables on the right side of the screen – just click on DATABASE. For now, just try to remember the most important features you can find in each table:</p>


<ul>
  <li><code>customers</code> contains information about customer names, phone numbers and address</li>
  <li><code>subscriptions</code> contains data on all available subscriptions</li>
  <li><code>networks</code> describes all hardware stations from our netwrok</li>
</ul>


<p>Now, you should be aware of one thing – here, in this educational course, you won't have access to all the data. We've only got a small excerpt of your company's data stored here. Don't be surprised if you write a query and find some data incomplete; this may not be your fault. Each time you write a query, we'll let you know whether it was written correctly or not.</p>

<p>When you're done analyzing the tables, click on the button to move on.</p>

##### Task

<p>Click <span class="run-button">Next exercise</span> to continue.</p>

##### Hint

##### Code Template

```sql
-- Read the instructions on the left.
-- Then click the "Next exercise" button to continue.
```



#### Exercise: SQL Queries ############################################################
id: sql-queries
url: sql-queries
type: informational

##### Content

<p>So, how do we connect with our database? We use the so-called <b>Structured Query Language</b>. Of course, no one uses the full name, we just call it <b>SQL</b> for short.</p>

<p>The instructions that we'll learn in this course are called <b>queries</b>. Just as the name suggests, queries are questions that we ask to find out some information about the data stored in the database.</p>

<p>Databases can do amazing things – they don't only return the data you ask for, they can actually do advanced calculations on the tables. You'll see for yourself!</p>

<p>We'll start with very simple instructions and we'll introduce new things one by one. By the end of this course, you'll be able to write fairly complex queries.</p>

##### Task

<p>Click <span class="run-button">Next exercise</span> to continue.</p>

##### Hint

##### Code Template

```sql
-- Read the instructions on the left.
-- Then click the "Next exercise" button to continue.
```

### Section: See the whole table
id: table
url: table




#### Exercise: Get all data ############################################################
id: select-from-table
url: select-from-table
type: data_operations

##### Content

<p>It's time to run your first SQL query! As you remember, the data in a database is stored in <b>tables</b>.</p>
  
<p>You can see all the data in the <code>networks</code> table with this query:</p>

<p><code>
SELECT *
FROM networks;
</code>
</p>

<p><code>SELECT</code> tells your database that you want to select data. <code>FROM networks</code> tells the database to select data from the <code>networks</code> table.</p>

<p>Finally, the asterisk (<code>*</code>) tells the database that you want to see <b>all columns</b> in this table.</p>

<p>Remember that it is a good practice to always end your SQL command with a semicolon (<code>;</code>). A semicolon is like a period at the end of the sentence. It tells the database that you're done with your command. Our platform accepts your query submissions both with and without a semicolon, so you can leave it out completely in this course.</p>

##### Task

<p>Select all the data from the <code>customers</code> table and click <span class="run-button">Run and check code</span>.</p>

##### Hint

##### Code Template


##### Solution

```sql
SELECT *
FROM customers;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
SELECT *
FROM customers;
```


#### Exercise: Read the result ############################################################
id: result
url: result
type: informational

##### Content

<p class="comment">Change the table to the table from the previous task and change the description.</p>

<div class="TBA">

<p>As you can see, the <code>car</code> table has 5 columns:</p>

<ol>
  <li><code>vin</code> – short for vehicle identification number.</li>
  <li><code>brand</code>.</li>
  <li><code>model</code>.</li>
  <li><code>price</code>.</li>
  <li><code>production_year</code>.</li>
</ol>

</div>

<p>The names of the columns are at the top of the result.</p>

<div class="TBA">

<p>There are 8 cars in our table: two Ford cars, one Toyota, three Volkswagens, one Fiat and one Opel. You can see that the price of a Toyota is $11,300 and the prices for Fords are $8,000 and $12,500. Note that the price for Opel is not specified – we'll explain that later.</p>

</div>

##### Task

<p>Examine the result. When you're done, click <span class="run-button">Next exercise</span> to continue.</p>

##### Hint

##### Code Template

```sql
--TBA Change the table name to match the previous exercise.
SELECT *
FROM car;
```

##### Initial Result

```sql
--TBA change
SELECT *
FROM car;
```




### Section: Select some columns
id: select-columns
url: select-columns




#### Exercise: Select one column ############################################################
id: select-one-column
url: select-one-column
type: data_operations

##### Content

<p>What if you don't want to select all columns from a table? No problem. Just type the <b>column name</b> instead of the asterisk. If you want to get the <b>names</b> of all users, type:</p>

<p class="comment">In this exercise the user learns how to select one column from a table. Change the column and table names.</p>

<pre class="TBA">
SELECT name
FROM user;
</pre>

##### Task

<p class="comment">Modify the task. You want the user to select a single column from a single table.</p>

<div class="TBA">

<p>Select brand names from the <code>car</code> table.</p>

</div>

##### Hint

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT brand
FROM car;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
--TBA change
SELECT brand
FROM car;
```




#### Exercise: Select many columns ############################################################
id: select-many-columns
url: select-many-columns
type: data_operations

##### Content

<p class="comment">In this exercise the user learns how to select two columns from a table. Change the description and column and table names.</p>

<p>Great! If you want to get <b>a couple of columns</b>, give the names of the desired columns before the <code>FROM</code> clause. So to get <span class="TBA">names and ages of all users</span>, type:</p>

<pre class="TBA">
SELECT
  name,
  age
FROM user;
</pre>

<p>Note that you separate the names of the columns with a comma (<code>,</code>).</p>

##### Task

<p class="comment">Modify the task. You want the user to select two columns from one table.</p>

<div class="TBA">

<p>Select model and price from the <code>car</code> table.</p>

</div>

##### Hint

<p>Remember to separate the names of the columns with a comma.</p>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT
  model,
  price
FROM car;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
--TBA change
SELECT
  model,
  price
FROM car;
```

