# Part: Querying more than one table
id: multiple-tables
url: multiple-tables


## Description

Learn how to select data from multiple tables.

## Welcome Message

In the next part, you will learn how to query more than one table.

## Summary Message

Now you know how to join two tables.




### Section: How to query more than one table
id: multiple-tables
url: multiple-tables




#### Exercise: Data from multiple tables ############################################################
id: introduction
url: introduction
type: informational

##### Content

<p>Hey there! In the previous part, you've learned how to get data from a single table. You've also learned how to filter rows to get only those which you really need and how to sort them. Superb!</p>

<p>Single tables might seem handy at first, but in big databases we always use <b>multiple tables</b>. This also means that we often want to get data from more than one table at a time. By the end of this part, you'll know how to join results from multiple tables.</p>

##### Task

<p>Click <span class="run-button">Next exercise</span> to proceed.</p>

##### Hint

##### Code Template

##### Initial Result




#### Exercise: JOIN – example ############################################################
id: join-example
url: join-example
type: data_operations

##### Content

<p class="comment">Modify the instructions to match your example. Use two tables that can be joined on columns with different names (e.g., here we join the tables on the id and owner_id columns.)</p>

<div class="TBA">

<p>Let's begin with an example. Suppose you want to see the name of the person and the model of their car.</p>

<p>The <code>car</code> table stores each car's ID, brand, model, price, and the ID of the owner of the car.</p>

</div>

<p class="comment">Display a few rows of your first table here. </p>

<div class="TBA">

<div class="table-container">
<table>
  <thead><th>id</th><th>brand</th><th>model</th><th>price</th><th>owner_id</th></thead>
  <tbody>
    <tr>
      <td>1</td><td>Ford</td><td>Explorer</td><td>1500</td><td>1</td>
    </tr>
    <tr>
      <td>2</td><td>Kia</td><td>Telluride</td><td>3500</td><td>2</td>
    </tr>
    <tr>
      <td>3</td><td>Jeep</td><td>Gladiator</td><td>2500</td><td>2</td>
    </tr>
  </tbody>
</table>
</div>

<p>There is no owner name in the <code>car</code> table – only an owner id. The name of the owner is in another table named <code>person</code>:</p>

</div>

<p class="comment">Display a few rows of your second table here.</p>

<div class="TBA">

<div class="table-container">
<table>
  <thead><th>id</th><th>name</th><th>age</th></thead>
  <tbody>
    <tr>
      <td>1</td><td>Alfred Hitch</td><td>65</td>
    </tr>
    <tr>
      <td>2</td><td>Steven Berg</td><td>46</td>
    </tr>
    <tr>
      <td>3</td><td>James Allen</td><td>35</td>
    </tr>
  </tbody>
</table>
</div>

<p>To get the model of the car together with the name of the owner, you need to combine (join) data from these two tables.</p>

</div>

<p class="comment">Display the joined tables. You should display both columns on which you join tables and they should have the same values.</p>

<div class="TBA">

<div class="table-container">
<table>
  <thead><th>id</th><th>brand</th><th>model</th><th>price</th><th>owner_id</th><th>id</th><th>name</th><th>age</th></thead></thead>
  <tbody>
    <tr>
      <td>1</td><td>Ford</td><td>Explorer</td><td>1500</td><td>1</td><td>1</td><td>Alfred Hitch</td><td>65</td>
    </tr>
    <tr>
      <td>2</td><td>Kia</td><td>Telluride</td><td>3500</td><td>2</td><td>2</td><td>Steven Berg</td><td>46</td>
    </tr>
    <tr>
      <td>3</td><td>Jeep</td><td>Gladiator</td><td>2500</td><td>2</td><td>2</td><td>Steven Berg</td><td>46</td>
    </tr>
  </tbody>
</table>
</div>

<p>The template query does exactly that: it joins the <code>car</code> and <code>person</code> tables to get the model of the car together with the name of its owner.</p>

</div>

##### Task

<p>Look at the template query. Don't worry if you don't understand it yet. We'll explain it in detail in the next exercise.</p>

<p>Run the template code to see the result.</p>

##### Hint

##### Code Template

```sql
-- TBA Change the query to match your example
SELECT 
  name,
  model
FROM car
JOIN person
  ON car.owner_id = person.id;
```

##### Initial Result

##### Solution

```sql
-- TBA Change the query to match your example
SELECT 
  name,
  model
FROM car
JOIN person
  ON car.owner_id = person.id;
```

##### Assertion #1
comment: correct query
type: exact_columns_data_by_defined_query
column_in_order: false
row_in_order: false

###### Query

```sql
-- TBA Change the query to match your example
SELECT 
  name,
  model
FROM car
JOIN person
  ON car.owner_id = person.id;
```





#### Exercise: JOIN – syntax ############################################################
id: join-syntax
url: join-syntax
type: data_operations

##### Content

<p>Here is our example query again:</p>

<p class="comment">Paste here the code from the template from the previous exercise.</p>

<pre class="TBA">
SELECT 
  name,
  model
FROM car
JOIN person
  ON car.owner_id = person.id;
</pre>

<p>As you can see, the syntax for combining two tables in one query uses the keyword <code>JOIN</code>:</p>

<p class="comment">While changing the code and text below, use the parts of the code you wrote above.</p>

<pre class="TBA">
...
FROM car
JOIN person
  ON car.owner_id = person.id;
</pre>

<div class="TBA">

<p>First we list the tables we want to join, which are <code>car</code> and <code>person</code> in our example.</p>

<p>Then we tell the database how to join the tables:</p>

<pre>ON car.owner_id = person.id</pre>

<p>The <code>ON</code> condition filters this joined result set to display only those rows where the value of <code>owner_id</code> equals <code>person.id</code>. Every other row from the <code>JOIN</code> is ignored. Note how a dot (<code>.</code>) binds the table name and the column name (e.g., <code>car.owner_id</code>). We'll explain that later.</p>

</div>

##### Task

<p>Now it's your turn to write a <code>JOIN</code> query!</p>

<p class="comment">Modify the task. Ideally the task should be a slight modification of the example.</p>

<div class="TBA">

<p>Select all columns from tables <code>movie</code> and <code>director</code> in such a way that a movie is shown together with its director.</p>

</div>

##### Hint

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT 
  *
FROM movie
JOIN director
  ON movie.director_id = director.id;
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
  *
FROM movie
JOIN director
  ON movie.director_id = director.id;
```





#### Exercise: JOIN – identify columns ############################################################
id: join-identify-columns
url: join-identify-columns
type: data_operations

##### Content

<p class="comment">Modify the instructions to match your tables and your example.</p>

<div class="TBA">

<p>Okay. How do we know how to connect the tables? Well, each table will have a main identifier (primary key) that will typically have <code>id</code> in the column name, such as:</p>

<ul>
  <li><code>id</code> in the <code>person</code> table.</li>
  <li><code>city_id</code> in the <code>city</code> table.</li>
  <li><code>user_id</code> in <code>user</code> table, etc.</li>
</ul>

<p>The main identifier of the <code>person</code> table is <code>id</code>:</p>

<div class="table-container">
<table>
  <thead><th>id</th><th>name</th><th>age</th></thead>
  <tbody>
    <tr>
      <td>1</td><td>Alfred Hitch</td><td>65</td>
    </tr>
    <tr>
      <td>2</td><td>Steven Berg</td><td>46</td>
    </tr>
    <tr>
      <td>3</td><td>James Allen</td><td>35</td>
    </tr>
  </tbody>
</table>
</div>

<p>Now, take a look at some rows from <code>car</code>:</p>

<div class="table-container">
<table>
  <thead><th>id</th><th>brand</th><th>model</th><th>price</th><th>owner_id</th></thead>
  <tbody>
    <tr>
      <td>1</td><td>Ford</td><td>Explorer</td><td>1500</td><td>1</td>
    </tr>
    <tr>
      <td>2</td><td>Kia</td><td>Telluride</td><td>3500</td><td>2</td>
    </tr>
    <tr>
      <td>3</td><td>Jeep</td><td>Gladiator</td><td>2500</td><td>2</td>
    </tr>
  </tbody>
</table>
</div>

<p>The <code>id</code> column is the main identifier of the <code>car</code> table. There is also the column <code>owner_id</code>, which contains the ID of the owner. If you want to join cars with their owner, you should use the condition:</p>

<pre>ON car.owner_id = person.id</pre>

<p>As a result, you'll get something like this:</p>

<div class="table-container">
<table>
  <thead><th>id</th><th>brand</th><th>model</th><th>price</th><th>owner_id</th><th>id</th><th>name</th><th>age</th></thead>
  <tbody>
    <tr>
      <td>1</td><td>Ford</td><td>Explorer</td><td>1500</td><td>1</td><td>1</td><td>Alfred Hitch</td><td>65</td>
    </tr>
    <tr>
      <td>2</td><td>Kia</td><td>Telluride</td><td>3500</td><td>2</td><td>2</td><td>Steven Berg</td><td>46</td>
    </tr>
    <tr>
      <td>3</td><td>Jeep</td><td>Gladiator</td><td>2500</td><td>2</td><td>2</td><td>Steven Berg</td><td>46</td>
    </tr>
  </tbody>
</table>
</div>

</div>

<p>So when you join two tables, you usually (but not always) join the main identifier of one table (typically named <code>id</code> or <code>uuid</code>) with a column in the other table (typically named <code>table1_id</code>, or <code>table1_uuid</code>) that refers to the main identifier. When you're working on your own to create a join query, first try to figure out what the join condition is: which tables and columns are involved?</p>

<p>The <code>JOIN</code> condition typically joins the main identifier of one table with its reference in another table. However you may use whatever condition you want in a <code>JOIN</code>. So in theory, you could specify a <code>JOIN</code> condition between completely unrelated columns (though you shouldn't).</p>

##### Task

<p class="comment">Modify the task. Use different tables than in the previous exercise.</p>

<div class="TBA">

<p>Select all columns from tables <code>movie</code> and <code>director</code> in such a way that a movie is shown together with its director.</p>

</div>

##### Hint

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT 
  *
FROM movie
JOIN director
  ON movie.director_id = director.id;
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
  *
FROM movie
JOIN director
  ON movie.director_id = director.id;
```


### Section: Referencing columns
id: referencing-columns
url: referencing-columns




#### Exercise: Display specific columns ############################################################
id: full-column-name
url: full-column-name
type: data_operations

##### Content

<p>Splendid! So far we only provided column names (without table names) in the <code>SELECT</code> and <code>ON</code> clauses. Is this always enough when there are two tables? It depends. Take a look at this example:</p>

<p class="comment">Change the example. The query should select two (or more) columns, at least one column from each table. Each selected column should be preceded by the name of the table to which it belongs.</p>

<pre class="TBA">
SELECT
  person.name,
  car.model
FROM person
JOIN car
  ON person.id = car.owner_id;
</pre>

<p>As we now have more than one table, we can put the table name in front of the column name and we separate them with a dot (<code>.</code>). In this way, SQL knows that the <span class="TBA">column <code>model</code> belongs to the <code>car</code> table</span>, etc. This can be helpful when tables share column names.</p>

##### Task

<p class="comment">In this task, the user should select at least two columns from the different tables. Make sure to precede the column names with the table names.</p>

<div class="TBA">

<p>Select <b>director name</b> and <b>movie title</b> from tables <code>movie</code> and <code>director</code> in such a way that a movie is shown together with its director.</p>

</div>

##### Hint

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT
  director.name,
  movie.title
FROM movie
JOIN director
  ON movie.director_id = director.id;
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
  director.name,
  movie.title
FROM movie
JOIN director
  ON movie.director_id = director.id;
```




#### Exercise: Refer to columns without table names ############################################################
id: omit-table-name
url: omit-table-name
type: data_operations

##### Content

<p>Great! In the previous example, we provided column names together with the table names they are a part of. It's good practice, but you only <b>need</b> to do it when there is <b>a chance of confusing them</b>. If there are two different columns with the same name in two different tables, then you have to specify the tables. <b>If the name of the column is unique, though, you may omit the table name.</b></p>

<p class="comment">In this exercise, the user learns that when the column names are unique, we can omit the table names when selecting columns. Modify the query. You should select columns that have unique names. Don't use the table names before the column names in the SELECT list.
Also, if possible, join tables on such columns so that at least one of them (and preferably only one of them) has a unique name so that you can omit table name before the column name in the ON condition (in the code below such a column is owner_id).
<br/>Remember to modify the explanation. Depending on what tables you use, some of the explanation may need to be removed, not modified. It's best if you read the explanation carefully before modifying the code.</p>

<pre class="TBA">
SELECT
  name,
  model
FROM person
JOIN car
  ON person.id = owner_id;
</pre>

<div class="TBA">

<p>There is only one column named <code>name</code> and only one column named <code>model</code> in the <code>person</code> and <code>car</code> tables, so we can provide their names without referencing the tables they come from. Similarly, there is only one column named <code>owner_id</code> – it is only in the <code>car</code> table, so we can omit the name of the table.</p>

<p>When we refer to column <code>id</code> from table <code>person</code>, though, we must write the table name as well (<code>person.id</code>), because there is another column with the name <code>id</code> in table <code>car</code>.</p>

</div>

##### Task

<p class="comment">It's best if the solution of this task fulfills the same conditions as required for the query used in the Content. Join tables on columns such that at least one of them has a unique name. Also, select columns with unique names.</p>

<div class="TBA">

<p>Select <b>director name</b> and <b>movie title</b> from the <code>movie</code> and <code>director</code> tables in such a way that a movie is shown together with its director. Don't write table names in the <code>SELECT</code> clause.</p>

</div>

##### Hint

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT
  title,
  name
FROM movie
JOIN director
  ON director_id = director.id;
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
  title,
  name
FROM movie
JOIN director
  ON director_id = director.id;
```




#### Exercise: Rename columns with AS ############################################################
id: as
url: as
type: data_operations

##### Content

<p>Good job! We can do one more thing with our columns: rename them. Up till now, the column named <code>id</code> was always shown as <code>id</code> in the result. Now we will change it:</p>

<p class="comment">Modify the code below. It's best if you select two columns with the same names but from different tables. Write meaningful aliases of the columns in the SELECT list. Remember to modify the explanation.</p>

<pre class="TBA">
SELECT
  person.id AS person_id,
  car.id AS car_id
FROM person
JOIN car
  ON person.id = car.owner_id;
</pre>

<div class="TBA">

<p>After the column name, e.g. <code>person.id</code>, we use the new keyword <code>AS</code> and we put the new name after it (<code>person_id</code>). We can repeat this process with every column.</p>

</div>

<p>The new name is just an <b>alias</b>, which means it's temporary and doesn't change the actual column name in the database. It only influences the way the column is shown in the result of the specific query. This technique is often used when there are a few columns with the same name which come from different tables. Normally, when SQL displays columns in the result, there is no information about the table that a specific column is part of.</p>

<div class="TBA">

<p>In our example, we had two columns <code>id</code>, so we renamed them to <code>person_id</code> and <code>car_id</code> respectively. Now, if we see the columns in the result, we will know which column comes from which table.</p>

</div>

##### Task

<p class="comment">Copy the code from the previous exercise to the Code Template. The task should ask the user to rename one of the columns present in the SELECT list in the template. Make sure the alias is meaningful.</p>

<div class="TBA">

<p>In this exercise, show the <code>title</code> column as <code>movie_title</code>. We wrote the query from the previous exercise in the template, so you just have to add a proper alias.</p>

</div>

##### Hint

##### Code Template

```sql
--TBA Copy the solution to the previous exercise here:
SELECT
  title,
  name
FROM movie
JOIN director
  ON director_id = director.id;
```

##### Initial Result

##### Solution

```sql
--TBA change
SELECT
  title AS movie_title,
  name
FROM movie
JOIN director
  ON director_id = director.id;
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
  title AS movie_title,
  name
FROM movie
JOIN director
  ON director_id = director.id;
```




#### Exercise: Filter the joined tables ############################################################
id: join-where
url: join-where
type: data_operations

##### Content

<p>Amazing job! Now that we know how to work with columns, let's find out how to filter the results even further:</p>

<p class="comment">Change the code below. You can select any columns you want and join any tables you want. Just make sure you write a simple WHERE condition using a numeric comparison. Remember to modify the explanation.</p>

<pre class="TBA">
SELECT
  person.id,
  car.model
FROM person
JOIN car
  ON person.id = car.owner_id
WHERE person.age &lt; 25;
</pre>

<div class="TBA">

<p>The new part here is the <code>WHERE</code> clause. Now we only look for connections of cars and their owners where the owner is below 25. Be sure to include the table name in the condition (<code>person.age</code>).</p>

</div>

##### Task

<p class="comment">Make sure the user will need to write a simple WHERE condition using a numeric comparison. It's best if you don't ask the user to rename the columns in this exercise.</p>

<div class="TBA">

<p>Select all columns from tables <code>movie</code> and <code>director</code> in such a way that a movie is shown together with its director. Select only those movies which were made after 2000.</p>

</div>

##### Hint

<p>Use the following <code>WHERE</code> condition:</p>

<pre class="TBA">
WHERE movie.production_year &gt; 2000
</pre>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT *
FROM movie
JOIN director
  ON director_id = director.id
WHERE production_year > 2000;
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
FROM movie
JOIN director
  ON director_id = director.id
WHERE production_year > 2000;
```




#### Exercise: Filter the joined tables continued ############################################################
id: join-where-continued
url: join-where-continued
type: data_operations

##### Content

<p>Excellent! Filtering the results is very important, so let's do another exercise on that. Do you still remember how text values work in SQL?</p>

<p class="comment">Change the code below. You can select any columns you want and join any tables you want. Just make sure you write a simple WHERE condition using a text comparison. Remember to modify the explanation.</p>

<pre class="TBA">
SELECT
  person.id,
  car.model
FROM person
JOIN car
  ON person.id = car.owner_id
WHERE car.brand = 'Fiat';
</pre>

<div class="TBA">

<p>In the above query, we only select cars with the brand <code>'Fiat'</code>. Piece of cake, right? Let's practice.</p>

</div>

##### Task

<p class="comment">Make sure the user will need to write a simple WHERE condition using a text comparison. It's best if you don't ask the user to rename the columns in this exercise.</p>

<div class="TBA">

<p>Select all columns from tables <code>movie</code> and <code>director</code> in such a way that a movie is shown together with its director. Select only those movies which were directed by Steven Spielberg.</p>

</div>

##### Hint

<p>Use the following condition:</p>

<pre class="TBA">
WHERE director.name = 'Steven Spielberg'
</pre>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT *
FROM movie
JOIN director
  ON director_id = director.id
WHERE director.name = 'Steven Spielberg';
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
FROM movie
JOIN director
  ON director_id = director.id
WHERE director.name = 'Steven Spielberg';
```




### Section: Let's practice
id: practice
url: practice




#### Exercise: Put your skills into practice ############################################################
id: practice
url: practice
type: data_operations

##### Content

<p>Nice! Let's put into practice everything we've learned so far. Are you ready? This example is going to be slightly more complicated, so make sure you remember everything from this part of the course.</p>

##### Task

<p class="comment">This task should be more difficult than the previous one. Here it's best if you ask the user to select a few columns, rename them, and write a little bit more difficult WHERE condition.</p>

<div class="TBA">

<p>Select the <code>title</code> and <code>production_year</code> columns from the <code>movie</code> table, and the <code>name</code> and <code>birth_year</code> columns from the <code>director</code> table in such a way that a movie is shown together with its director.</p>

<p>Show the column <code>birth_year</code> as <code>born_in</code>. Select only those movies which were filmed when their director was younger than 40 (i.e., the difference between <code>production_year</code> and <code>birth_year</code> must be less than 40).</p>

</div>

##### Hint

<p>Use the condition:</p>

<pre class="TBA">
WHERE (production_year - birth_year) &lt; 40
</pre>

<p>Remember to rename the columns.</p>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT
  title,
  production_year,
  name,
  birth_year AS born_in
FROM movie
JOIN director
  ON director_id = director.id
WHERE (production_year - birth_year) < 40;
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
  title,
  production_year,
  name,
  birth_year AS born_in
FROM movie
JOIN director
  ON director_id = director.id
WHERE (production_year - birth_year) < 40;
```




#### Exercise: Further practice ############################################################
id: further-practice
url: further-practice
type: data_operations

##### Content

<p>Excellent! We have one more exercise for you before the end of this part. You are going to write your longest SQL query ever and you'll apply information from both of the parts you've mastered so far. Are you ready?</p>

##### Task

<p class="comment">Ask the user to write a more complex query. The user should join two tables, select a few columns, some of which should have non-unique names and therefore require using a table name. You should ask the user to rename some columns. The user should filter rows based on multiple conditions. Don't ask the user to sort the rows.</p>

<div class="TBA">

<p>Select the <code>id</code>, <code>title</code>, and <code>production_year</code> columns from the <code>movie</code> table, and the <code>name</code> and <code>birth_year</code> columns from the <code>director</code> table in such a way that a movie is shown together with its director. Show the column <code>birth_year</code> as <code>born_in</code> and the column <code>production_year</code> as <code>produced_in</code>. Select only those movies:</p>

<ul>
  <li>whose title contains a letter <code>'a'</code> and which were <b>filmed after 2000</b>.<br /><b>or</b></li>
  <li>whose director was born <b>between 1945 and 1995</b>.</li>
</ul>

</div>

##### Hint

<div class="TBA">

<ol>
  <li>Select the proper columns from the <code>movie</code> and <code>director</code> tables.</li>
  <li>
    Start by writing the construction for the <code>WHERE</code> condition, like so:<br />
    <pre>WHERE (...)<br />   OR (...)</pre>
  </li>
  <li>
    Enter conditions within the parenthesis:
    <ul>
      <li><code>title LIKE '%a%' AND production_year &gt; 2000</code></li>
      <li><code>birth_year between 1945 AND 1995</code></li>
    </ul>
  </li>
</ol>

</div>

##### Code Template

##### Initial Result

##### Solution

```sql
--TBA change
SELECT
  movie.id,
  title,
  production_year AS produced_in,
  name,
  birth_year AS born_in
FROM movie
JOIN director
  ON director.id = director_id
WHERE (title LIKE '%a%' AND production_year > 2000)
  OR (birth_year BETWEEN 1945 AND 1995);
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
  movie.id,
  title,
  production_year AS produced_in,
  name,
  birth_year AS born_in
FROM movie
JOIN director
  ON director.id = director_id
WHERE (title LIKE '%a%' AND production_year > 2000)
  OR (birth_year BETWEEN 1945 AND 1995);
```



#### Exercise: Congratulations! ############################################################
id: congratulations
url: congratulations
type: informational

##### Content

<p>Absolutely amazing! You've answered all of our questions and have mastered the basics of SQL. Congratulations!</p>

<p>With this informational, you'll be able to write simple SQL queries at work. Of course there is lots more to discover. We encourage you to take other SQL courses:</p>

<p class="comment">Link here to other relevant SQL courses.</p>

<div class="TBA">

<ul>
  <li><a href="https://learnsql.com/course/template-joins">JOINs</a> – practice selecting data from multiple tables. In this course you'll learn other JOIN types (<code>LEFT JOIN</code>, <code>FULL JOIN</code>), and you'll practice various ways to select data from multiple tables.</li>
  <li><a href="https://learnsql.com/course/template-group-by">GROUP BY</a> – learn how to prepare reports and statistics in SQL.</li>
</ul>

</div>

<p>You can learn new functions that will calculate sophisticated values or maybe some unusual SQL constructions that come in handy from time to time. This course has given you the powerful foundation you need to further expand your knowledge on your own.</p>

<p>Thank you for spending so much time with us! We hope you've enjoyed your journey. And if you ever feel like your knowledge of SQL could use some refreshing, you're always welcome to return. Take care!</p>

##### Task

<p>Click <span class="run-button">Next exercise</span> to finish.</p>

##### Hint

##### Code Template

##### Initial Result
