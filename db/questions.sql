-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT geography FROM data ORDER BY population_senior_2005 DESC LIMIT 3;

-- What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT geography FROM data ORDER BY population_youth_2005 DESC LIMIT 3;

-- What 5 towns have the lowest per capita income?
SELECT geography FROM data ORDER BY per_capita_income_2000 ASC LIMIT 5;

-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT geography FROM data WHERE geography NOT LIKE 'Becket' AND geography NOT LIKE 'Boston' AND geography NOT LIKE 'Beverly' ORDER BY teen_births_2005_2008 DESC LIMIT 1;

-- Ommitting Boston, what town has the highest number of infant mortalities?
SELECT geography FROM data WHERE geography NOT LIKE 'Boston' ORDER BY infant_deaths_2005_2008 DESC LIMIT 1;

