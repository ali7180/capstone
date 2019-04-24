library(tidyverse)
library(ggplot2)

school_safety_audits <- read_csv("/Users/aliciaortiz/Downloads/School Safety Audits.csv")
school_safety_drills <- read_csv('/Users/aliciaortiz/Downloads/School Safety Drills.csv')
school_safety_plans <-read_csv('/Users/aliciaortiz/Downloads/School Safety Plans.csv')
school_resource_officers <- read_csv('/Users/aliciaortiz/Downloads/School Resource Officers.csv')
weapons_in_schools <- read_csv('/Users/aliciaortiz/Downloads/Weapons in Schools.csv')
securitymeasures <- read_csv('/Users/aliciaortiz/Desktop/securitymeasures.csv')

#cleansecuritymeasures

securitymeasures <- securitymeasures %>% select(`Security measure`, "1999", "2001", "2003", "2005","2007", "2009","2011", "2013")
securitymeasures <- securitymeasures %>% gather(type, rate, c(2:9))



saveRDS(school_shooting, 'Documents/capstone_ortiz/data/schoolshootings.RDS')
saveRDS(k127018, '/Users/aliciaortiz/Documents/capstone_ortiz/data/k12schoolshooting.RDS')
saveRDS(school_safety, 'data/schoolsafety.RDS')
saveRDS(school_safety_audits, '/Users/aliciaortiz/Documents/capstone_ortiz/data/schoolsafetyaudits.RDS')
saveRDS(school_safety_drills, '/Users/aliciaortiz/Documents/capstone_ortiz/data/schoolsafetydrills.RDS')
saveRDS(school_safety_plans, '/Users/aliciaortiz/Documents/capstone_ortiz/data/schoolsafetyplans.RDS')
saveRDS(school_resource_officers, '/Users/aliciaortiz/Documents/capstone_ortiz/data/schoolresourceofficers.RDS')
saveRDS(weapons_in_schools, '/Users/aliciaortiz/Documents/capstone_ortiz/weaponsinschools.pdf')


#count which day of the week it occured the most 
dayofweek <-ggplot(data=school_shooting, aes(x=day_of_week)) +
  geom_bar() +
  geom_text(stat='count', aes(label=..count..), vjust=-1)

#daysoftheweek - 
a <- ggplot( data = school_shooting, aes (x= state, y= casualties)) + 
  geom_point(aes(color = shooting_type),alpha = 0.5)

a + scale_color_hue(guide = FALSE)

#Casulties over the years 

  






#map of school shootings since Columbine











#data of time overview 
library(googleVis)
demo(googleVis)



#notesonshinyapp




#(1) Dashboard page - This page will contain an overview of the shooting data that has occured from the 1970's to today. There will ben additional tab that will contain a map of the shootings that have taken place since Columbine 
#(2) - Security Measures that have taken place s
#(3) State Profile Page on policies 


