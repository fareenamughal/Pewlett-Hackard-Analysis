# Pewlett-Hackard-Analysis
## Overview of Pewlett-Hackard-Analysis
---

The overview of this analysis is to enable Pewlett-Hackard to plan and prepare for the upcoming retirements. To be specific, the new analysis sought to findout the number of current employees that will be retiring analysed by their title. In addition to this the analysis aims to find out the number of employees presently employed and grouped based on thier title at the start of their employment, to ensure that duplicate or multiple titles as a result of e.g. promotions are eliminated to provide a more meaningful analysis of the retirements per department or title. The analysis also aims to provide insights about the current employees who would be eligible for mentorship which would help with the succession planning. 

---

## Results
There is a bulleted list with four major points from the two analysis deliverables. (6 pt)
The results of the analysis are as follows:
A. Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955.
  
  1. The Retirement Titles table - exported as retirement_titles.csv
     [Analysis Projects Folder/Pewlett-Hackard-Analysis Folder/Data/retirement_titles.csv](https://github.com/fareenamughal/Pewlett-Hackard-Analysis/blob/615cd04da28b7da500f5c9d4975cd7f1a0103f87/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/Data/retirement_titles.csv)


  2. Retirement_titles table extract

     ![Retirement_titles_tbl_extract](https://github.com/fareenamughal/Pewlett-Hackard-Analysis/blob/6d69c05ce9c706aa7208f264d8ea372d8ea86587/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/Queries/Retirement_titles_tbl_extract.PNG)
  
   The retirement titles table lists down all the titles in Pewlett Hackard (PH). The table indicates that there are 133,776 records or staff close to retirement. This    table, however, fails to account for the employees who have already left Pewlett or the duplicated records as a result of promotions or transfers. Further analysis    should be carried out to eliminate duplication of records or titles and redundand records or records of employees who have already left PH.


B. Unique Titles table that contains the employee number, first and last name, and most recent title.
  
  1. The Unique Titles table - exported as unique_titles.csv. 
    
     https://github.com/fareenamughal/Pewlett-Hackard-Analysis/blob/main/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/Data/unique_titles.csv

  2. Unique_titles table extract
     
      ![Unique_titles_tbl_extract](https://github.com/fareenamughal/Pewlett-Hackard-Analysis/blob/a34976e293e6b5807e77e861353a2db0889f24c1/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/Queries/Unique_titles_tbl_extract.PNG)
     
     
   The unique titles table is similar to the Retirement titles table with further filtering to eliminate the duplicated records due to e.g. promotions and records for    staff who have already left. The analysis indicates that there are 72,458 records or employees who are nearing retirement, a difference of 61,318 records as            compared to the retirement titles table. This signifies how important it is to have accurate analysis.  


C. Retiring Titles table that contains the number of titles filled by employees who are retiring
  
  1. The Retiring Titles table is exported as retiring_titles.csv.
    
      https://github.com/fareenamughal/Pewlett-Hackard-Analysis/blob/61e94e80dbeb64f41ba6c04d4c8bad9e7cf4523e/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/Data/retiring_titles.csv

  2. Retiring titles table
  
     ![Retiring_titles_tbl](https://github.com/fareenamughal/Pewlett-Hackard-Analysis/blob/852a257caa3a769e8800763f500b8b5cca568256/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/Queries/Retiring_titles_tbl.PNG)     
     
  3. Retiring titles graph
   
      ![Retiring_titles_tbl](https://github.com/fareenamughal/Pewlett-Hackard-Analysis/blob/176b4efaf7259b060b1343121aec7e15b40b7b09/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/Queries/Unique_titles_graph.png)
      
   The retiring titles table provide a much more meaning full analysis by summarizing the number of employees retiring by title after eliminating any duplicate records    and after factoring in the employees who have already left PH. As can be seen in the graph as, there is a problem in so far as PH does not have a good succession      plan. Approx.26K Senior engineers and approx. 25K Senior staff are approaching retirement age. PH will need to train and or replace these staff by recruitment, or      come up with another plan such as outsourcing some functions. This will need further analysis and discussion.   
      
D. Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965.
  
  1. The Mentorship Eligibility table is exported and saved as mentorship_eligibilty.csv.
      
      https://github.com/fareenamughal/Pewlett-Hackard-Analysis/blob/main/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/Data/mentorship_eligibilty.csv
      
  2. The Mentorship Eligibility table.

       ![Mentorship Eligibility_tbl](https://github.com/fareenamughal/Pewlett-Hackard-Analysis/blob/7e4671956572e0f6b38f89d6b37f68b4ebf72ea8/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/Queries/Mentorship_eligibility_tbl_extract.PNG) 
   
   The mentorship eligibility table provides useful information to enable PH identify staff for mentorship and career grwoth. This is likely to be helpful in filling      some of the vacancies arising due to retirements. It is worth noting that there are only 1549 employees who are eligible for mentorship, compared to the apprx.72K 
   retirements.
    
       
       
## Summary

To summarize, the analysis provides a rather gloomy outlook which may have resulted from poor succession planning amoungst other things. Further analysis would be required to determine which staff will actually retire as some may decide to work one or two more years which would work well for PH. In otherwords, analysis for phased or delayed retirement should be done. Furthermore, rather than lumping all the staff who were borh in 1952 to 1955, it would be helpful to know how many are retiring in 1 year, 2 years and 3 years. In otherwords, spread the analysis for each year individually i.e. 1952 data compared to 1953, 1954 and 1955. This will give a better picture of how soon and how many retirements are likely to happen. A further analysis to identify staff who can be promoted to higher positions. The performance record, absence records etc would help in identifying staff that can promoted or easily fill some of potential vacancies.







