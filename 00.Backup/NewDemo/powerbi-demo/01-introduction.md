# Part: Introduction to exercise types
id: introduction
url: introduction

## Description

In this part you'll learn all types of the exercises available on the platform.

## Welcome Message

OK, so let's get going.

## Summary Message

Congrats! Now, wou have basic understending of all exercise types available on the platform.


### Section: Introduction
id: introduction
url: introduction

#### Exercise: A video exercise
id: video-demo
url: video-demo
type: video
video: https://vimeo.com/488974803

##### Content

<p>This is a <b>video</b> exercise. In exercise configuration, in the video field, you give the link to the video on Vimeo.</p>

<p>Here, you put the transcript (text) of the video. The user can then watch the video and look at the text of the video at the same time.</p>

<p>The transcript of this video:</p>

<p>2020 is slowly coming to an end. It was extremely difficult for everyone. We've therefore decided to end it with something positive. This Christmas, we want to help someone change their life. <a href="https://learnsql.com/">LearnSQL</a> will fund <b>50 SQL scholarships</b> for people who cannot afford SQL and who may find it helpful in a difficult situation. We'll hand out our flagship track, <a href="https://learnsql.com/track/sql-from-a-to-z">SQL from A to Z</a>, for free. </p>

<p>Are you going through a difficult time? Do you wish to learn SQL but can't afford courses? Perhaps you know someone else who could use a little help. Please let us know and share your story by writing to <a href="mailto:scholarships@learnsql.com">scholarships@learnsql.com</a>. We will choose 50 people to whom we'll give free access to our <a href="https://learnsql.com/track/sql-from-a-to-z">SQL from A to Z</a> track.</p>

<p> This is a real opportunity for career boost, professional development, and to help land a better job. Start 2021 by learning useful skills that are sought after by employers. Give yourself, or someone you know, a chance to change.</p>



#### Exercise: Quiz: Content + open-ended question
id: quiz-content-open-ended-demo
url: quiz-content-open-ended-demo
type: quiz

##### Content

<p>You can add an open-ended quiz question in the course. The question has some reading and then the proper question. For example</p>
<p>We're finally going to learn about window frames.</p>
<p><b>Window frames</b> define precisely which rows should be taken into account when computing the results and are always relative to the current row. In this way, we can create new kinds of queries.</p>
<p>For instance, you may say that for each row, 3 rows before and 3 rows after it are taken into account; or rows from the beginning of the partition until the current row. In a moment, you'll discover how such queries can come in handy. Take a look at the example window frame, where two rows before and two rows after the current row are selected:</p>
<img src="/static/window-functions-part5-ex5.png" alt="" style="max-width:100%">
<p>The are two kinds of window frames: those with the keyword <code>ROWS</code> and those with <code>RANGE</code> instead. The general syntax is as follows:</p>
<pre>
&lt;window function&gt; OVER (...
  ORDER BY &lt;order_column&gt;
  [ROWS|RANGE] &lt;window frame extent&gt;
)
</pre>
<p>Of course, other elements might be added above (for instance, a <code>PARTITION BY</code> clause), which is why we put dots <code>(...)</code> in the brackets. For now, we'll focus on the meaning of <code>ROWS</code> and <code>RANGE</code>. We'll talk about <code>PARTITION BY</code> later in the course.</p>
<p>Let's take a look at the example:</p>
<pre>
SELECT
  id,
  total_price,
  SUM(total_price) OVER(
    ORDER BY placed
    ROWS UNBOUNDED PRECEDING)
FROM single_order
</pre>
<p>In the above query, we sum the column <code>total_price</code>. For each row, we add the current row <b>AND</b> all the previously introduced rows (<code>UNBOUNDED PRECEDING</code>) to the sum. As a result, the sum will increase with each new order.</p>

##### Task:  Task title goes here
type: open
answer: RANGE

###### Question

<p>You can define window frames with <code>ROWS</code> and one more keyword. What is the other keyword to define window frames? Put the answer in ALL CAPS.</p>

###### Hint

<p>The other keyword is <code>RANGE</code>.</p>

###### Success Feedback

<p>That’s right! The other keyword is <code>RANGE</code>.</p>

###### Failure Feedback

<p>Sorry, this is not the correct aswer.</p>



#### Exercise: Quiz: Content + multiple choice question
id: quiz-content-multichoice-demo
url: quiz-content-multichoice-demo
type: quiz

##### Content

<p>You can add a multichoice quiz question in the course. The question has some reading and then the proper question. For example</p>

<p>You might, or might not, have heard about <b>recursion</b> before. In either case, it's good to clarify what it is first.</p>

<p>Is there recursion in real life? Yes, there is. Take a good look at the <b>Romanesco broccoli</b> shown below. Its cones are made of smaller cones which are, in turn, made of yet smaller cones that are made of even smaller cones...</p>

<p align="middle"><img src="/static/CTE-part4-ex3.png" alt="recursion" align="middle" style="max-width: 100%"></p>

<p>Another example could be the famous <b>Russian matryoshka dolls</b>. If you open the biggest doll, you will see a smaller one. Once the smaller one is opened, you can see yet a smaller one, which in turn has another smaller doll inside itself.</p>

<p align="middle"><img src="/static/CTE-part4-ex3_2.png" alt="recursion" align="middle" style="max-width: 100%"></p>

<p>In each case, we can say that a pattern repeats itself. Formally speaking, recursion takes place when something is defined in terms of itself. A Romanesco broccoli cone is a cone made of smaller Romanesco broccoli cones. A matryoshka doll is a doll which holds a smaller matryoshka doll inside.</p>

##### Task: Task title goes here
type: multichoice
answer: 3

###### Question

<p>Which of the following is NOT an example of real world recursion</p>

###### Option #1

<p>Matryoshka dolls</p>

####### Option Feedback

<p>Matryoshka dolls are an example of recursion. They can stack one into another.</p>

###### Option #2

<p>Romanesco broccoli</p>

####### Option Feedback

<p>Romanesco broccoli is an example of recursion. Each cone consists of smaller cones.</p>

###### Option #3

<p>A stick</p>

####### Option Feedback

<p>Good job! A stick is not an example of recursion.</p>

###### Hint

<p>Choose one of the provided options.</p>



#### Exercise: Quiz: Multiple choice question
id: quiz-multichoice-demo
url: quiz-multichoice-demo
type: quiz

##### Task: Task title goes here
type: multichoice
answer: 1

###### Question

<p>What's the result of the following equation: 0.25 : 0.125 = ?</p>

###### Option #1

<p>2</p>

####### Option Feedback

<p>Very good. You're good at math or fortune favours you.</p>

###### Option #2

<p>0.125</p>

####### Option Feedback

<p>Don't think so.</p>

###### Option #3

<p>4</p>

####### Option Feedback

<p>Don't think so.</p>

###### Hint

<p>Choose one of the provided options.</p>



#### Exercise: A PowerBI exercise with open-ended qestion
id: powerbi-demo-open-ended
url: powerbi-demo-open-ended
type: powerbi
video: https://vimeo.com/488974803

##### Context

<p>This is a <b>PowerBI</b> exercise. Here you put the context of the exercise: any preliminary information you want the user to have such as what you'll be doing in this exercise, how to load the report, etc.</p>

##### Instructions

###### Step #1

<p>Here you put the steps the user should perform in PowerBI. For example: We do this by going to File -> Browse Reports -> Select FoodTiger Supermarket.</p>

####### Step Hint 

<p>Example hint: File menu is located in the top left menu.</p>

###### Step #2

<p>Here you can put step #2. For example, you can tell them what they should see in the report they are creating.</p>

####### Step Hint 

<p>Power BI is very versatile in terms of data visualization options.</p>

##### Task
type: open
answer: Microsoft
 
###### Question

<p>At the end of PowerBI exercise, you put a quiz question. You can put either an open-ended or a multi-choice question. Here we show an open-ended question: </p>

<p>What company is the vendor of PowerBI?</p>

###### Hint

<p>Type in the name of the vendor company of PowerBI. It's the same company who created Windows, Word, and Excel.</p>

###### Success Feedback

<p>That’s right! PowerBI is created by Microsoft.</p>

###### Failure Feedback

<p>Sorry, this is not the correct answer.</p>



#### Exercise: A PowerBI exercise with multiple choice question
id: powerbi-demo-multichoice
url: powerbi-demo-multichoice
type: powerbi
video: https://vimeo.com/488974803

##### Context

<p>In this PowerBI exercise we show you a multichoice quiz question.</p>

##### Instructions

###### Step #1

<p>There is just one empty step. Go to the next step to see the multi-choice question.</p>

####### Step Hint 

##### Task
type: multichoice
answer: 1

###### Question

<p>What is SQL?</p>

###### Option #1

<p>Structured Query Language, a language to talk to databases.</p>

####### Option Feedback

<p>Good job! SQL stands for Structured Query Language and it's a language to talk to databases.</p>

###### Option #2

<p>A type of squirrel</p>

####### Option Feedback

<p>No, SQL is not a type of squirrel</p>

###### Option #3

<p>A delicious cake from Vietnam</p>

####### Option Feedback

<p>Sadly, SQL is not a cake.</p>

###### Hint

<p>Choose one of the provided options.</p>


