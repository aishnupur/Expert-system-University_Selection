(defrule Umich_AnnArbor
   (gpa 4) (work_exp 3) (entrance_exam_scores 5) (technical_papers 3) (community_service 1) (course 1|2|3|4|5)
   =>
   (printout t "University of Michigan- Ann Arbor" crlf))

(defrule Mich_state
   (gpa 3|4) (work_exp 1|2) (entrance_exam_scores 4|5) (technical_papers 2|3) (community_service 1) (course 1|2|3|4)
   =>
   (printout t "Michigan State University" crlf))

(defrule Mich_tech
   (gpa 2|3) (work_exp 0|1) (entrance_exam_scores 3|4) (technical_papers 0|1) (community_service 1) (course 2|3|4)
   =>
   (printout t "Michigan Technological University" crlf))

(defrule Andrews_univ
   (gpa 2|3) (work_exp 0|1) (entrance_exam_scores 3|4) (technical_papers 0|1) (community_service 2) (course 1|2|3|4)
   =>
   (printout t "Andrews University" crlf))
(defrule Wayne_state
   (gpa 2|3) (work_exp 0|1) (entrance_exam_scores 2|3) (technical_papers 0|1) (community_service 2) (course 1|2|3|4|5)
   =>
   (printout t "Wayne State University" crlf))
(defrule central_mich
   (gpa 2|3) (work_exp 0|1) (entrance_exam_scores 1|2|3) (technical_papers 0|1) (community_service 2) (course 1|2|3)
   =>
   (printout t "Central Michigan University" crlf))
(defrule oakland_univ
   (gpa 1|2) (work_exp 0) (entrance_exam_scores 1|2) (technical_papers 0|1) (community_service 2) (course 1|3|4|5)
   =>
   (printout t "Oakland University" crlf))

(defrule eastern_mich_univ
   (gpa 1|2) (work_exp 0) (entrance_exam_scores 1) (technical_papers 0) (community_service 2) (course 1|3|4|5)
   =>
   (printout t "Eastern Michigan university" crlf))

(defrule western_mich_univ
   (gpa 1) (work_exp 0) (entrance_exam_scores 1) (technical_papers 0) (community_service 2) (course 1|3|4|5)
   =>
   (printout t "Western Michigan university" crlf))

(defrule input
(initial-fact)
=>
(printout t crlf "What is your gpa? (1: <3, 2: 3-3.49, 3: 3.5-3.79, 4: 3.8-4) ")
(assert (gpa =(read))) ; Asks the user to enter the gpa
(printout t crlf "What is your work experience? (1: 0 years, 2: 1 year, 3: >= 2 years) ")
(assert (work_exp =(read))) ; Asks the user to enter the work experience
(printout t crlf "How much did you score in GRE? (1: <300, 2: 300-309, 3: 310-319, 4: 320-329, 5: 330-340) ")
(assert (entrance_exam_scores =(read))) ; Asks the user to enter the marks of the entrance exam
(printout t crlf "Any technical papers published? (1: 0, 2: 1, 3: > 2) ")
(assert (technical_papers =(read))) ; Asks the user if he has published any technical paper and if yes, how many were published?
(printout t crlf "Have you offered any community service ? (1: yes, 2: no) ")
(assert (community_service =(read))) ; Asks the user if he has done any community service?
(printout t crlf "Which course do you wish to take? (1: Computer_Science, 2: Mechanical, 3: Chemical , 4: Industrial, 5. Data_Science) ")
(assert (course =(read))) ; Asks the user to enter the course
(printout t crlf "The university suitable for you are:" crlf)) ; takes the value for all the attributes from the user and checks the database and prints the output.