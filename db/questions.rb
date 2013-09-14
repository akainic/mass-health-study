# What 3 towns -- What 3 towns have the highest population of citizens that are 65 years and older?
Datum.select('geography').order('population_senior_2005 DESC').limit(3)

# What 3 towns have the highest population of citizens that are 19 years and younger?
Datum.select('geography').order('population_youth_2005 DESC').limit(3)

# What 5 towns have the lowest per capita income?
Datum.select('geography').order('per_capita_income_2000 ASC').limit(5)

# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
Datum.select('geography').where('geography != ?', 'Becket').where('geography != ?', 'Boston').where('geography != ?', 'Beverly').order('teen_births_2005_2008 DESC').limit(1)

# Ommitting Boston, what town has the highest number of infant mortalities?
Datum.select('geography').where('geography != ?', 'Boston').order('infant_deaths_2005_2008 DESC').limit(1)