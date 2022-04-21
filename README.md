# Pewlett-Hackard-Analysis

## Overview of the analysis: Explain the purpose of this analysis.
Assist the manager at Pewlett-Hackard determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. And help prepare them for the “silver tsunami” as many current employees reach retirement age.

## Results:  a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
  - The majority of retirees are Senior Staff and Senior Engineers.
  - More than half of thier retirees are Engineers.
  
![image](https://user-images.githubusercontent.com/97486216/164564423-b9a811ec-e3b5-4ef4-a74d-3d1e5984d296.png)
 
 - Approximently 2% of the retiring employees are eligilbile for the new Mentorship program due to the limited criteria of  current employees who were born between January 1, 1965 and December 31, 1965.
 - There are more poosible mentors if the criteria is changed.

![Mentorship eligibility](https://user-images.githubusercontent.com/97486216/164566415-6255c6c5-a0dd-4031-8ffe-d5ff26349c35.png)


## Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."


### How many roles will need to be filled as the "silver tsunami" begins to make an impact?

72458 roles will need to be filled as the "silver tsunami" begins to make an impact.

```
SELECT 
count(*) 
FROM
unique_titles
```

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

No, approximently 2% of the retiring employees are eligilbile for the new Mentorship program. 

```
SELECT
count(*)
FROM
mentorship_eligibilty
```
