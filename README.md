# StudentsManagement
A student management application that will allow the school to track information on students, their information on students and their enrollment in the various courses of study.

# Technologies used:
Spring, STRUTS 2 with Annotation , Hibernate, JSP, Bootstrap.

# Database script:
Create Table 'school'.'filieres' ('Code_Fil' VARCHAR(20) NOT NULL, 'Nom_Fil' VARCHAR(45) NULL, PRIMARY KEY ('Code_Fil'));
Create Table 'school'.'eleves' ( 'cne' VARCHAR(20) NOT NULL, 
'nom' VARCHAR(45) NULL,'prenom' VARCHAR(45) NULL,'moyenne' DOUBLE NULL,
'Ref_Fil' VARCHAR(20) NULL,PRIMARY KEY('cne'), INDEX 'Ref_Fil_idx' ('Ref_Fil' ASC),
Constraint 'Ref_Fil' Foreign Key ('Ref_Fil') References 'school'.'filieres'('Code_Fil'));

![Capture d’écran (577)](https://user-images.githubusercontent.com/81829785/222283964-7338e738-010e-4d5b-b159-75e6e89b74c2.png)
![Capture d’écran (578)](https://user-images.githubusercontent.com/81829785/222337702-a38bd71b-a1e6-401d-b2b5-b607a48e7148.png)
![Capture d’écran (579)](https://user-images.githubusercontent.com/81829785/222337716-49afb40d-6cad-4b93-806c-f3e7c0961363.png)

# ...
