# Part: Filtering and sorting rows
id: filtering-and-sorting-rows
url: filtering-and-sorting-rows


## Description

Discover how to select data from a single table.

## Welcome Message

In the next part, you will learn how to filter and sort rows.

## Summary Message

Now you know how to filter and sort rows.



### Section: Filtering rows
id: filtering-rows
url: filtering-rows




#### Exercise: Select only a few rows ############################################################
id: where
url: where
type: data_operations

##### Content

<p>Welcome to Part 2! In this part, you'll learn how to filter and sort data selected from a database.</p>

<p>When the table is small and we want to find some information for one specific row, we can just select all rows. <b>But what if the table consists of thousands of rows?</b></p>

<p class="comment">Change the query below to a query which uses one of your tables. Make sure that the condition in WHERE is a simple equality using a number.</p>

<pre class="TBA">
SELECT *
FROM user
WHERE id = 100;
</pre>

<p>Look what happened. We've used <code>WHERE</code> and a <b>condition</b>. The simplest condition looks like the one in our example – we want to retrieve information about <span class="TBA">a user with a specific ID (100), so we use the appropriate condition: <code>id = 100</code></span>.</p>

##### Task

<p class="comment">Modify the task. The WHERE condition should be an equality between an integer column and a number.</p>

<div class="TBA">

<p>Select all columns for those cars which were produced in 1999 (use the <code>production_year</code> column).</p>

</div>

##### Hint

<p>Use a <code>WHERE</code> clause.</p>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT *
FROM car
WHERE production_year = 1999;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
--TBA change
SELECT *
FROM car
WHERE production_year = 1999;
```




#### Exercise: Conditional operators ############################################################
id: comparison-operators
url: comparison-operators
type: data_operations

##### Content

<p>Good job! Now, besides the equality sign (<code>=</code>), there are also some other conditional operators which you can use. Look at the next example.</p>

<p class="comment">In this exercise the user learns how to write a WHERE condition with inequality. Make sure to use HTML entities here in text instead of < or > signs. Outside this text (in the solution and query) use < and >.</p>

<pre class="TBA">
SELECT *
FROM user
WHERE age &lt; 20.5;
</pre>

<p>Instead of the equality sign (<code>=</code>), we used the <span class="comment">change it if you used a different symbol in the above code</span> <span class="TBA">less than sign (<code>&lt;</code>)</span>. Now our instruction selects <span class="TBA">only those users who are below 20.5.</span> We can apply several operators in the same way:</p>

<ul>
  <li><code>&lt;</code> (less than).</li>
  <li><code>&gt;</code> (greater than).</li>
  <li><code>&lt;=</code> (less than or equal).</li>
  <li><code>&gt;=</code> (greater than or equal).</li>
</ul>

<p>Easy, right? Why don't we practice a bit?</p>

##### Task

<p class="comment">Modify the task. The WHERE should be a comparison (<code>&lt;</code>, <code>&gt;</code>, <code>&lt;=</code>, <code>&gt;=</code>) between a numeric column and a number.</p>

<div class="TBA">

<p>Select all columns for all cars with price above $10,000.</p>

</div>

##### Hint

<div class="TBA">

<p>Use:</p>

<pre>
WHERE price &gt; 10000
</pre>

</div>

##### Code Template

```sql
--TBA change
SELECT *
FROM ...
WHERE ... ;
```

##### Initial Result

##### Solution

```sql
--TBA change
SELECT *
FROM car
WHERE price > 10000;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
--TBA change
SELECT *
FROM car
WHERE price > 10000;
```




#### Exercise: The not equal sign (!=) ############################################################
id: not-equals
url: not-equals
type: data_operations

##### Content

<p>Fantastic! There is one more very important conditional operator, the <b>inequality sign</b> (<code>!=</code> or sometimes <code>&lt;&gt;</code>). Look at the example:</p>

<p class="comment">In this exercise the user learns the not-equal sign. In the code below use the sign that you prefer and use – <code>!=</code> or <code>&lt;&gt;</code>. In the WHERE clause, use a numeric column and a number. It's also important that you select all columns, not specific ones (use *).</p>

<pre class="TBA">
SELECT *
FROM user
WHERE age != 18;
</pre>

<div class="TBA">

<p>See how easy it is? We've used the inequality sign (<code>!=</code>) to select all users who aren't 18.</p>

</div>

##### Task

<p class="comment">Modify the task. The WHERE condition should be an inequality <code>!=</code> between a numeric column and a number. Make sure the task says to select <b>all</b> columns, not specific ones.</p>

<div class="TBA">

<p>Select all columns for those cars which weren't produced in 1999.</p>

</div>

##### Hint

<div class="TBA">

<p>Use a condition:</p>

<pre>
WHERE production_year != 1999
</pre>

</div>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT *
FROM car
WHERE production_year != 1999;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
--TBA change
SELECT *
FROM car
WHERE production_year != 1999;
```




#### Exercise: Conditional operators and selecting columns ############################################################
id: select-and-where
url: select-and-where
type: data_operations

##### Content

<p>You've got the hang of it already, haven't you? Let's combine what we know about conditional operators with selecting specific columns.</p>

<p class="comment">In this exercise we teach how to select specific columns and a WHERE clause with the inequality sign. Change the code below. Make sure that you select a few specific columns and that you write an inequality between the numeric column and a number in the WHERE clause.</p>

<pre class="TBA">
SELECT
  id,
  age
FROM user
WHERE age &lt;= 21;
</pre>

<p>Easy, right? Instead of the asterisk (<code>*</code>), we just name the specific columns we're interested in.</p>

##### Task

<p class="comment">Modify the task. Select a few columns. The WHERE condition should be a comparison between a numeric column and a number. Make sure the task asks to select only a few columns, not all columns.</p>

<div class="TBA">

<p>Select the <code>brand</code>, <code>model</code> and <code>production_year</code> columns of all cars <b>cheaper than or equal to $11,300</b>.</p>

</div>

##### Hint

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT
  brand,
  model,
  production_year
FROM car
WHERE price <= 11300;
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
  brand,
  model,
  production_year
FROM car
WHERE price <= 11300;
```




### Section: Logic
id: logic
url: logic




#### Exercise: Logical operators – AND ############################################################
id: and
url: and
type: data_operations

##### Content

<p>Excellent! Up until now, we were able to filter the rows in the previous examples using conditional operators (<code>=</code>, <code>!=</code>, <code>&lt;</code>, <code>&gt;</code>, <code>&lt;=</code>, <code>&gt;=</code>). But what about situations when we want to be really picky and combine a few conditions?</p>

<p class="comment">Write a query that selects a few columns and uses the AND keyword in the WHERE clause. It should join conditions with equalities or inequalities between numeric column(s) and numbers.</p>

<pre class="TBA">
SELECT
  id,
  name
FROM user
WHERE age &lt;= 70
  AND age &gt;= 13;
</pre>

<p>We've added a new <code>AND</code> clause which allows us to combine conditions.</p>

<p>In this case, <span class="TBA">only those users will be selected whose age is 13 or above <b>and</b> 70 or below.</span> In other words, both conditions must be fulfilled to retrieve a particular row.</p>

##### Task

<p class="comment">Modify the task. The WHERE condition should be a combination (AND) of two numerical comparisons.</p>

<div class="TBA">

<p>Select <code>vin</code>s of all cars which were produced after 1999 <b>and</b> are cheaper than $7,000.</p>

</div>

##### Hint

<div class="TBA">

<p>Use a condition:</p>

<pre>
WHERE production_year &gt; 1999
  AND price &lt; 7000
</pre>

</div>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT vin
FROM car
WHERE production_year > 1999
  AND price < 7000;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
--TBA change
SELECT vin
FROM car
WHERE production_year > 1999
  AND price < 7000;
```



#### Exercise: Logical operators – OR ############################################################
id: or
url: or
type: data_operations

##### Content

<p>Of course <code>AND</code> isn't the only logical operator out there. Take a look at the next example:</p>

<p class="comment">Write a query that selects a few columns and uses the OR keyword in the WHERE clause. The conditions should be equalities or inequalities between numeric column(s) and numbers.</p>

<pre class="TBA">
SELECT
  id,
  name
FROM user
WHERE age &gt; 50
  OR height &lt; 185;
</pre>

<p><code>OR</code> is another logical operator.</p>

<p>In this case, we only select <span class="TBA">those users who are above 50 years old <b>or</b> under 185 cm of height.</span> In other words, a row is displayed when the first condition or the second condition is true. Note that if both conditions are true, the row is also displayed.</p>

##### Task

<p class="comment">Modify the task. The WHERE condition should be an alternative (OR) of two numerical comparisons.</p>

<div class="TBA">

<p>Select <code>vin</code>s of all cars which were <b>produced before 2005</b> or whose <b>price is below $10,000</b>.</p>

</div>

##### Hint
 
##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT vin
FROM car
WHERE production_year < 2005
  OR price < 10000.00;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
--TBA change
SELECT vin
FROM car
WHERE production_year < 2005
  OR price < 10000.00;
```



#### Exercise: The BETWEEN operator ############################################################
id: between
url: between
type: data_operations

##### Content

<p class="comment">This exercise teaches the BETWEEN keyword. First we write a query using AND and then we write a modified query which uses BETWEEN. Make sure you use only numerical columns and numbers in the WHERE condition.</p>

<div class="TBA">

<p>Good. Now, if you want to find users whose age is between 13 and 70, you can of course use the previous example:</p>

</div>

<p class="comment">Use AND keyword here.</p>

<pre class="TBA">
SELECT
  id,
  name
FROM user
WHERE age &lt;= 70
  AND age &gt;= 13;
</pre>

<p>But there is also another way of writing the example above. Take a look:</p>

<p class="comment">Use the BETWEEN keyword. The column and tables names, and numbers should be the same as in the above query.</p>

<pre class="TBA">
SELECT
  id,
  name
FROM user
WHERE age BETWEEN 13 AND 70;
</pre>

<div class="TBA">

<p>We introduced a new keyword <code>BETWEEN</code> which simply means that we look for rows with the age column set to be anything between 13 and 70, <b>including</b> these values.</p>

</div>

##### Task

<p class="comment">Modify the task. In the WHERE condition, you should use columns with numbers (not text). Remember that the solution should use the BETWEEN keyword.</p>

<div class="TBA">

<p>Select the <code>vin</code>, <code>brand</code>, and <code>model</code> columns of all cars which were produced between 1995 and 2005.</p>

</div>

##### Hint

<p>Use a <code>BETWEEN</code> keyword.</p>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT
  vin,
  brand,
  model
FROM car
WHERE production_year BETWEEN 1995 AND 2005;
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
  vin,
  brand,
  model
FROM car
WHERE production_year BETWEEN 1995 AND 2005;
```




#### Exercise: Logical operators – NOT ############################################################
id: not
url: not
type: data_operations

##### Content

<p>Keep up the good work! There is one more logical operator worth mentioning: <code>NOT</code>. Basically speaking, whatever is stated after <code>NOT</code> will be negated:</p>

<p class="comment">This exercise teaches the NOT keyword. Write here a query using NOT BETWEEN. Then change the explanation.</p>

<pre class="TBA">
SELECT *
FROM user
WHERE age NOT BETWEEN 20 AND 30;
</pre>

<p>In the above example we placed <code>NOT</code> in front of a <code>BETWEEN</code> clause. As a result, we'll get <span class="TBA">all users except for those aged 20 to 30.</span></p>

##### Task

<p class="comment">Modify the task. In the WHERE condition you should use columns with numbers (not text).</p>

<div class="TBA">

<p>Select the <code>vin</code>, <code>brand</code>, and <code>model</code> columns of all cars except for those produced between 1995 and 2005.</p>

</div>

##### Hint

<div class="TBA">

<p>Use:</p>

<pre>
WHERE production_year NOT BETWEEN 1995 AND 2005
</pre>

</div>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT
  vin,
  brand,
  model
FROM car
WHERE production_year NOT BETWEEN 1995 AND 2005;
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
  vin,
  brand,
  model
FROM car
WHERE production_year NOT BETWEEN 1995 AND 2005;
```




#### Exercise: Join even more conditions ############################################################
id: multiple-conditions
url: multiple-conditions
type: data_operations

##### Content

<p class="comment">This exercise teaches how to combine a few conditions in the WHERE clause. Change the query so that it joins a few conditions and uses parentheses. Remember to change the description.</p>

<p>We can include even more conditions by using <b>parentheses</b>, according to our needs. <span class="TBA">If we want to find only those users who are above 70 years old or below 13 and who are at least 180 cm tall</span>, we can use the following expression:</p>

<pre class="TBA">
SELECT
  id,
  name
FROM user
WHERE (age &gt; 70 OR age &lt; 13)
  AND height &gt;= 180;
</pre>

##### Task

<p class="comment">Modify the task. Choose a WHERE condition that requires a combination of logical conditions and the use of parentheses.</p>

<div class="TBA">

<p>Select the <code>vin</code> of all cars which were produced before 1999 or after 2005 and whose price is lower than $4,000 or greater than $10,000.</p>

</div>

##### Hint

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT vin
FROM car
WHERE (production_year < 1999 OR production_year > 2005)
  AND (price < 4000 OR price > 10000);
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
--TBA change
SELECT vin
FROM car
WHERE (production_year < 1999 OR production_year > 2005)
  AND (price < 4000 OR price > 10000);
```




### Section: Text patterns
id: text-patterns
url: text-patterns




#### Exercise: Use text ############################################################
id: string
url: string
type: data_operations

##### Content

<p>Until now we have only worked with numbers in our <code>WHERE</code> clauses. Is it possible to use letters instead? Of course it is! Just remember to put your text in single quotes like this: <code>'example'</code>.</p>

<p>If you wanted to know <span class="TBA">the age of all Smiths in your table</span>, you could use the following code:</p>

<p class="comment">Make sure you use a column with text in the WHERE clause. The condition should be a simple equality. Remember to change the text above.</p>

<pre class="TBA">
SELECT age
FROM user
WHERE name = 'Smith';
</pre>

<div class="TBA">

<p>Note that the case of the letters matters, i.e., <span class="comment">Change 'Smith' to the text used in your WHERE condition and change 'SMITH' to the text used in the WHERE condition but with the appropriate case (lowercase or uppercase).</span> <span class="TBA"><code>'Smith'</code> is different than <code>'SMITH'</code>.</span></p> 

</div>

##### Task

<p class="comment">Modify the task. In the WHERE condition you should use a column with text.</p>

<div class="TBA">

<p>Select all columns for all Ford cars from the <code>car</code> table.</p>

</div>

##### Hint

<p>Use:</p>

<p class="comment">Change the condition to condition from your solution.</p>

<pre class="TBA">
WHERE brand = 'Ford'
</pre>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT *
FROM car
WHERE brand = 'Ford';
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
--TBA change
SELECT *
FROM car
WHERE brand = 'Ford';
```




#### Exercise: The percentage sign (%) ############################################################
id: string-wildcard
url: string-wildcard
type: data_operations

##### Content

<p>Great! Now, what happens if we don't know precisely what letters we're looking for? With text values, you can always use the <code>LIKE</code> operator instead of the equality sign. What change does it make? Well, take a look at the following example:</p>

<p class="comment">Change this code so that it uses LIKE and %. Remember to change the explanation.</p>

<pre class="TBA">
SELECT *
FROM user
WHERE name LIKE 'A%';
</pre>

<p><code>LIKE</code> allows for the use of the percentage sign (<code>%</code>). The percentage sign applied in the example <b>matches any number (zero or more) of unknown characters</b>.</p>

<p><span class="TBA">As a result, we'll obtain all users whose name begins with the letter <code>'A'</code>. We may not remember someone's exact name, but we know it begins with an A and that's enough. Convenient, isn't it?</span></p>

##### Task

<p class="comment">Modify the task. In the WHERE condition you should use a column with text, the LIKE keyword, and the % sign.</p>

<div class="TBA">

<p>Select the <code>vin</code>, <code>brand</code>, and <code>model</code> columns for all cars whose brand begins with an F.</p>

</div>

##### Hint

<div class="TBA">

<p>Use:</p>

<pre>
LIKE 'F%'
</pre>

</div>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT
  vin,
  brand,
  model
FROM car
WHERE brand LIKE 'F%';
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
  vin,
  brand,
  model
FROM car
WHERE brand LIKE 'F%';
```




#### Exercise: The percentage sign (%) continued ############################################################
id: string-wildcard-continued
url: string-wildcard-continued
type: data_operations

##### Content

<p>That's the way to go! Of course, the percentage sign (<code>%</code>) can be put anywhere between the single quotes and as many times as it's necessary:</p>

<p class="comment">Change the code so that it uses LIKE and at least two % signs. Change the explanation, but make sure not to remove the information that the percantage sign can also match zero characters.</p>

<pre class="TBA">
SELECT *
FROM user
WHERE name LIKE '%A%';
</pre>

<div class="TBA">

<p>That's right, the example above will select any user <b>whose name contains at least one 'A'</b>.</p>

<p>Remember that the percentage sign (<code>%</code>) can also match zero characters, so the name can also begin or end with the A.</p>

</div>

##### Task

<p class="comment">In the WHERE condition you should use a column with text. The solution should use a LIKE keyword and either one percantage sign at the beginning of the text or many percantage signs.</p>

<div class="TBA">

<p>Select the <code>vin</code> columns for all cars whose <code>model</code> <b>ends with an "s"</b>.</p>

</div>

##### Hint

<div class="TBA">

<p>Use:</p>

<pre>
LIKE '%s'
</pre>

</div>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT vin
FROM car
WHERE model LIKE '%s';
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
--TBA change
SELECT vin
FROM car
WHERE model LIKE '%s';
```




#### Exercise: The underscore sign (_) ############################################################
id: underscore-wildcard
url: underscore-wildcard
type: data_operations

##### Content

<p>Nice! Now, sometimes we may not remember just one letter of a specific name.</p>

<p class="comment">Write some simple code that uses the LIKE keyword and the underscore sign (_).</p>

<pre class="TBA">
SELECT *
FROM user
WHERE name LIKE '_atherine';
</pre>

<p>The underscore sign (<code>_</code>) matches exactly one character. <p class="comment">It's best if you give here some examples of texts matching the pattern you used in the WHERE condition. It can be a simple information like this:</p> <span class="TBA">The query returns rows in which names are Catherine, Katherine, or any other names matching the pattern.</span></p>

##### Task

<p class="comment">Modify the task. In the WHERE condition you should use a column with text. Make sure the condition is simple and uses the LIKE keyword and the underscore sign.</p>

<div class="TBA">

<p>Select all columns for cars which brand matches <code>'Volk_wagen'</code>.</p>

</div>

##### Hint

<div class="TBA">

<p>Use:</p>

<pre>
LIKE 'Volk_wagen'
</pre>

</div>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT *
FROM car
WHERE brand LIKE 'Volk_wagen';
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
--TBA change
SELECT *
FROM car
WHERE brand LIKE 'Volk_wagen';
```




### Section: To be or NULL to be
id: null
url: null




#### Exercise: Looking for NOT NULL values ############################################################
id: is-not-null
url: is-not-null
type: data_operations

##### Content

<p>In every row, there can be <code>NULL</code> values, i.e. fields with unknown, missing values. To check whether a column has a value, we use a special instruction <code>IS NOT NULL</code>.</p>

<p class="comment">Change the query so that it uses IS NOT NULL. The column you use in the WHERE condition can be of any type you want but make sure it has some NULL values. Remember to change the explanation.</p>

<pre class="TBA">
SELECT id
FROM user
WHERE middle_name IS NOT NULL;
</pre>

<div class="TBA">

<p>This code selects only those users who have a middle name, i.e., their <code>middle_name</code> column is <b>known</b>.</p>

</div>

##### Task

<p class="comment">Modify the task. In the WHERE condition you should use a column with numbers which has some NULL values. Make sure you use IS NOT NULL.</p>

<div class="TBA">

<p>Select all columns for each car whose <code>price</code> column isn't a <code>NULL</code> value.</p>

</div>

##### Hint

<div class="TBA">

<p>Use:</p>

<pre>
WHERE price IS NOT NULL
</pre>

</div>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT *
FROM car
WHERE price IS NOT NULL;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
--TBA change
SELECT *
FROM car
WHERE price IS NOT NULL;
```




#### Exercise: Looking for NULL values ############################################################
id: is-null
url: is-null
type: data_operations

##### Content

<p>Great! Remember, <code>NULL</code> is a special value. You can't use the equal sign to check whether something is <code>NULL</code>. <b>It simply won't work.</b> The opposite of <code>IS NOT NULL</code> is <code>IS NULL</code>.</p>

<p class="comment">It's a good idea to use the code from the previous exercise's Content and change IS NOT NULL to IS NULL. But if you prefer, you can write some new code using IS NULL with a column which has some NULL values. Remember to change the explanation.</p>

<pre class="TBA">
SELECT id
FROM user
WHERE middle_name IS NULL;
</pre>

<div class="TBA">

<p>This query will return only those users who don't have a middle name, i.e., their <code>middle_name</code> is unknown.</p>

</div>

##### Task

<p class="comment">Modify the task. In the WHERE condition you should use a column with numbers which has some NULL values.</p>

<div class="TBA">

<p>Select all columns for each car whose <code>price</code> column has a <code>NULL</code> value.</p>

</div>

##### Hint

<p>Use <code>IS NULL</code>.</p>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT *
FROM car
WHERE price IS NULL;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
--TBA change
SELECT *
FROM car
WHERE price IS NULL;
```




#### Exercise: Comparisons with NULL ############################################################
id: null-comparison
url: null-comparison
type: data_operations

##### Content

<p>Good job. Remember, <code>NULL</code> is a special value. It means that some piece of information is <b>missing</b> or <b>unknown</b>.</p>

<p class="comment">You can change the explanation below. Feel free to use here a column present in one of your tables, not <code>age</code>. It's best if you use a numeric column.</p>

<p>If you set a condition on a particular column, say <span class="TBA"><code>age &lt; 70</code>, the rows where the <code>age</code> column has a <code>NULL</code> value will always be <b>excluded</b> from the results.</span> Let's check that in practice.</p>

<p>In no way does <code>NULL</code> equal zero. What's more, the expression <code>NULL = NULL</code> is never true in SQL!</p>

##### Task

<p class="comment">Modify the task. Make sure to use a numeric column where it's evident that NULLs are not included in the result.</p>

<div class="TBA">

<p>Select all columns for cars whose <code>price</code> column is <b>greater than or equal to zero</b>.</p>

<p>Note that the Opel with an unknown price is <b>not</b> in the result.</p>

</div>

##### Hint

<div class="TBA">

<p>Use the condition:</p>

<pre>
WHERE price &gt;= 0
</pre>

</div>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT *
FROM car
WHERE price >= 0;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
--TBA change
SELECT *
FROM car
WHERE price >= 0;
```




### Section: A little bit of mathematics
id: basic-mathematics
url: basic-mathematics




#### Exercise: Basic mathematical operators ############################################################
id: basic-mathematics
url: basic-mathematics
type: data_operations

##### Content

<p>Nice! We may now move on to our next concept: <b>simple mathematics</b>. Can you add or multiply numbers in SQL? Yes, you can! Take a look at the example:</p>

<p class="comment">Write a query that uses some computations, like adding or multiplying, in the WHERE clause and only there (not in the SELECT command). Remember to change the explanation.</p>

<pre class="TBA">
SELECT *
FROM user
WHERE (monthly_salary * 12) &gt; 50000;
</pre>

<div class="TBA">

<p>In the above example, we multiply the monthly salary by 12 to get the annual salary by using the asterisk (<code>*</code>). We may then do whatever we want with the new value – in this case, we compare it with $50,000.</p>

</div>

<p>In this way, you can add (<code>+</code>), subtract (<code>-</code>), multiply (<code>*</code>) and divide (<code>/</code>) numbers.</p>

##### Task

<p class="comment">Modify the task. Use computations in WHERE and not in SELECT.</p>

<div class="TBA">

<p>Select all columns for <b>cars</b> with a tax amount over <b>$2000</b>. The tax amount for all cars is 20% of their price. Multiply the <code>price</code> <b>by 0.2</b> to get the <b>tax amount</b>.</p>

</div>

##### Hint

<div class="TBA">

<p>Use:</p>

<pre>
WHERE (price * 0.2) &gt; 2000
</pre>

</div>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT *
FROM car
WHERE (price * 0.2) > 2000;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
--TBA change
SELECT *
FROM car
WHERE (price * 0.2) > 2000;
```


### Section: Ordering
id: order-by
url: order-by



#### Exercise: Sort the rows – ORDER BY ############################################################
id: order-by
url: order-by
type: data_operations

##### Content

<p>Good, let's get down to work.</p>

<p>You're already pretty skilled when it comes to filtering rows – but have you wondered how they are <b>sorted</b> in the result of an SQL query? Well, the answer is simple – <b>by default, they are not sorted at all</b>. The sequence in which rows appear is arbitrary and every database can behave differently. You can even perform the same SQL instruction a few times and get a different order each time – unless you ask the database to sort the rows of course.</p>

<p class="comment">Change the example below. Use ORDER BY. Don't use ASC or DESC. Remember to change the explanation.</p>

<pre class="TBA">
SELECT *
FROM user
ORDER BY age;
</pre>

<p>In the above example, we've added a new clause: <code>ORDER BY</code>. After this expression, you can simply specify a column on which the data will be sorted.</p>

<div class="TBA">

<p>In this case, we want to sort by the users' age, so we put <code>age</code> in the <code>ORDER BY</code> clause.</p>

</div>

##### Task

<p class="comment">Modify the task. Sort the results by one column. This is the first example with ORDER BY. Note that each exercise using ORDER BY needs to have the <code>row_in_order</code> flag in Assertion set to <code>true</code>: <code>row_in_order: true</code></p>

<div class="TBA">

<p>Try it yourself. Select all columns from the <code>employees</code> table, and sort the result by the <b>salary</b>.</p>

</div>

##### Hint

<p>Use <code>ORDER BY</code>.</p>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT *
FROM employees
ORDER BY salary;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: true

###### Query

```sql
--TBA change
SELECT *
FROM employees
ORDER BY salary;
```




#### Exercise: ORDER BY with conditions ############################################################
id: where-order-by
url: where-order-by
type: data_operations

##### Content

<p>Excellent!</p>

<p>We can filter rows and sort them at the same time. Just have a look:</p>

<p class="comment">Change the code. Use both a simple WHERE condition and ORDER BY. Remember to change the explanation.</p>

<pre class="TBA">
SELECT *
FROM user
WHERE monthly_salary > 2000
ORDER BY age;
</pre>

<p>The <code>WHERE</code> clause and <code>ORDER BY</code> work well together.</p>

<div class="TBA">

<p>In this case, we'll only see the users whose salary is greater than $2,000. The users will be sorted by age – the youngest users will appear as the first result and the oldest users as the last one.</p>

</div>

##### Task

<p class="comment">Modify the task. Use a simple WHERE condition. Order by a single column.</p>

<div class="TBA">

<p>Select only the rows related to 2011 from the <code>employees</code> table. Sort the result by the salary.</p>

</div>

##### Hint

<p>Use <code>ORDER BY</code>.</p>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT *
FROM employees
WHERE year = 2011
ORDER BY salary;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: true

###### Query

```sql
--TBA change
SELECT *
FROM employees
WHERE year = 2011
ORDER BY salary;
```




#### Exercise: Ascending and descending orders ############################################################
id: asc-desc
url: asc-desc
type: data_operations

##### Content

<p>Good. As you can see, the lowest values were shown first and the highest values last. This <b>ascending</b> order of results is performed in SQL by default. If you want to be precise and make things clear, however, you can use the keyword <code>ASC</code> (short for ascending order) after the column name:</p>

<p class="comment">Change the code. Use ASC.</p>

<pre class="TBA">
SELECT *
FROM orders
ORDER BY total_sum ASC;
</pre>

<p>Adding the keyword <code>ASC</code> will change nothing, but it will show your intention in a very clear way.</p>

<p>We can also <b>reverse the order</b> and make the greatest values appear first.</p>

<p class="comment">Use the code you wrote above but change ASC to DESC. Also, change the column name in the explanation below the code.</p>

<pre class="TBA">
SELECT *
FROM orders
ORDER BY total_sum DESC;
</pre>

<p>As you can see, we've added the word <code>DESC</code> after the column name, which is short for the <b>descending</b> order. As a result, the highest values in the <span class="TBA">column <code>total_sum</code></span> will be shown first.</p>

##### Task

<p class="comment">Modify the task. Sort the results by a single column in descending order.</p>

<div class="TBA">

<p>Select all rows from the <code>employees</code> table and sort them in <b>descending order</b> by the column <code>last_name</code>.</p>

</div>

##### Hint

<p>Use the <code>DESC</code> keyword.</p>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT *
FROM employees
ORDER BY last_name DESC;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: true

###### Query

```sql
--TBA change
SELECT *
FROM employees
ORDER BY last_name DESC;
```




#### Exercise: Sort by a few columns ############################################################
id: order-by-multiple-columns
url: order-by-multiple-columns
type: data_operations

##### Content

<p>Good job. All right, one more thing before we move on: you can sort your results by <b>more than one column</b> and each of them can be sorted in a <b>different</b> order:</p>

<p class="comment">Change the code. Sort the results by two columns, one in ascending order, and the other one in descending order. Remember to change the explanation.</p>

<pre class="TBA">
SELECT *
FROM order
ORDER BY customer_id ASC, total_sum DESC;
</pre>

<div class="TBA">

<p>As you can see, the results will first be sorted by <code>customer_id</code> in ascending order (lowest values first) and then, for each <code>customer_id</code>, the orders will be sorted by the <code>total_sum</code> in descending order (greatest values first).</p>

</div>

##### Task

<p class="comment">Modify the task. Sort the results by two columns, one in ascending and one in descending order.</p>

<div class="TBA">

<p>Select all rows from the <code>employees</code> table and sort them in <b>ascending order</b> by the <b>department</b> and then in <b>descending</b> order by the <b>salary</b>.</p>

</div>

##### Hint

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT *
FROM employees
ORDER BY
  department ASC,
  salary DESC;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: true

###### Query

```sql
--TBA change
SELECT *
FROM employees
ORDER BY
  department ASC,
  salary DESC;
```


### Section: Let's practice
id: summary
url: summary




#### Exercise: Put your skills into practice ############################################################
id: practise
url: practise
type: data_operations

##### Content

<p>Very good! Now let's put together all the information we've learned so far.</p>

##### Task

<p class="comment">Modify the task. Provide many conditions using what the user has learned so far: <code>NULL</code>s, <code>BETWEEN</code>, <code>LIKE</code>, <code>AND</code>, <code>OR</code> etc. You can also use ORDER BY.</p>

<div class="TBA">

<p>Select all columns of those cars that:</p>

<ul>
  <li>Were produced between 1999 and 2003.</li>
  <li>Are not Volkswagens.</li>
  <li>Have a model that begins with either <code>'P'</code> or <code>'T'</code>.</li>
  <li>Have their price set.</li>
</ul>

</div>

##### Hint

<p>You need to combine multiple conditions in a <code>WHERE</code> clause. If you have any problems, review what you've learned in this part of the course.</p>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT *
FROM car
WHERE production_year BETWEEN 1999 AND 2003
  AND brand != 'Volkswagen'
  AND (model LIKE 'P%' OR model LIKE 'T%')
  AND price IS NOT NULL;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
--TBA change
SELECT *
FROM car
WHERE production_year BETWEEN 1999 AND 2003
  AND brand != 'Volkswagen'
  AND (model LIKE 'P%' OR model LIKE 'T%')
  AND price IS NOT NULL;
```

