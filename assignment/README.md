# HelloFresh Data Engineering Test

Thank you for your interest in joining HelloFresh! As part of our selection process, all of our candidates must take the following test.
The test is designed to assess key competencies required in your role as a data engineer at HelloFresh.

Please submit your answers in a different branch and create a pull request, then send a link to the recruiter. Please do not merge your own pull request.

_Note: While we love open source here at HelloFresh, please do not create a public repo with your test in! This challenge is only shared with people interviewing, and for obvious reasons we'd like it to remain this way._


# HelloFresh
At HelloFresh, our mission is to change the way people eat - forever. From our 2011 founding in Europe’s vibrant tech hub Berlin, we’ve become the global market leader in the meal kit sector and inspire millions of energized home cooks across the globe every week.
We offer our meal kit boxes full of exciting recipes and thoughtfully sourced, fresh ingredients in more than 15 countries, operating from offices in Berlin, New York City, Sydney, Toronto, London, Amsterdam and Copenhagen and shipped out more than 570 Million meals in 2020.

### Data Engineering at HelloFresh
We ingest events from our Kafka Stream and store them in our DataLake on s3. 
Events are sorted by arriving date. For example `events/recipe_changes/2019/11/29`.
During events processing we heavily rely on execution day to make sure we pick proper chunk of data and keep historical results.
We use Apache Spark to work with data and store it on s3 in parquet format. Our primary programming language is Python.

# Exercise
## Overview
At HelloFresh we have a big recipes archive that was created over the last 8 years. 
It is constantly being updated either by adding new recipes or by making changes to existing ones. 
We have a service that can dump archive in JSON format to selected s3 location. 
We are interested in tracking changes to see available recipes, their cooking time and difficulty level.

## Task 1
Using Apache Spark and Python, read, pre-process and persist rows to ensure optimal structure and performance for further processing.  
The source events are located on the `input` folder. 

## Task 2
Using Apache Spark and Python read processed dataset from Task 1 and: 
1. Extract only recipes that have `beef` as one of the ingredients.
2. Calculate average cooking time duration per difficulty level.
3. Persist dataset as CSV to the `output` folder.  
  The dataset should have 2 columns: `difficulty,avg_total_cooking_time`.

Total cooking time duration can be calculated by formula:
```bash
total_cook_time = cookTime + prepTime
```  
Hint: times represent durations in ISO format.

Criteria for levels based on total cook time duration:
- easy - less than 30 mins
- medium - between 30 and 60 mins
- hard - more than 60 mins.

## Deliverables
- A deployable Spark Application written in Python.
- A separate `ETL_README.md` file with a brief explanation of the approach, data exploration and assumptions/considerations. 
- CSV output dataset from Task 2.

## Requirements
- Well structured code: we expect maintainability, extensibility, readability and well defined abstractions with clear responsibilities.
- Resiliency and scalability: the application should be able to handle variability of the data, and to scale if data volume increases.
- Solution is runnable locally on an isolated environment (e.g. Python virtual env or Docker container) and also deployable on a cluster (including dependency packaging). An iPython notebook is not sufficient.
- Unit tests for the different components.
- Proper exception handling.
- Logging.
- Documentation.

NOTE: If you are using code in your submission that was not written by you, please be sure to attribute it to it's original author.

## Bonus points
- Config management.
- Data quality checks (like input/output dataset validation).
- How would you implement CI/CD for this application?
- How would you diagnose and tune the application in case of performance problems?
- How would you schedule this pipeline to run periodically?
- We appreciate good combination of Software and Data Engineering.

Good Luck!
