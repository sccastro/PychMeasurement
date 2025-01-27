---
knit: "bookdown::render_book"
title: "Data Analysis and Optimization in R"
author: ["[Spencer Castro](https://www.spencercastro.com)"]
date: "Mon Jan 27 2025"
description: 'As modern Data Scientists, we cannot be content with untested assumptions, decisions based on the "gut feelings" of a CEO, poorly leveraged data insights, or small sample sizes; now we must strive to be methodologically sound, balance experimental design against convenient populations, keep up with the ever-changing landscape of statistical tests and their caveats, and learn rudimentary computer programming on top of that! Therefore we need a tool that balances the comprehensibility of human language with the flexibility to keep up with developing statistical methods and the power to analyze and vizualize any dataset. Enter R, the open-source statistical computing and graphics language with a powerful Integrated Development Environment (the Rstudio IDE), a robust community of developers, data scientists, and experts (who respond to questions!), and too many reputable online resources to read in a lifetime. The impetus to learn something new on top of your ongoing research may be hard to summon, but this course is designed to integrate your ongoing projects and goals into mastering R, and to provide tools for streamlining projects in the future.'
url: 'https\://spencercastro.com'
github-repo: sccastro/PsychMeasurement
cover-image: assets/image/ucmSeals/UCM_Seal_FullColor_2019.png
site: bookdown::bookdown_site
documentclass: book
always_allow_html: true
---

# Welcome {.unnumbered}

<a href="assets/image/ucmSeals/UCM_Seal_FullColor_2019.png"><img src="assets/image/ucmSeals/UCM_Seal_FullColor_2019.png" alt="Cover image" width="300" height="300" align="left" style="margin: 0 1em 0 1em"/></a> As modern Data Scientists, we cannot be content with untested assumptions, decisions based on the "gut feelings" of a CEO, poorly leveraged data insights, or small sample sizes; now we must strive to be methodologically sound, balance experimental design against convenient populations, keep up with the ever-changing landscape of statistical tests and their caveats, and learn rudimentary computer programming on top of that! Therefore we need a tool that balances the comprehensibility of human language with the flexibility to keep up with developing statistical methods and the power to analyze and vizualize any dataset. Enter R, the open-source statistical computing and graphics language with a powerful Integrated Development Environment (the Rstudio IDE), a robust community of developers, data scientists, and experts (who respond to questions!), and too many reputable online resources to read in a lifetime. The impetus to learn something new on top of your ongoing research may be hard to summon, but this course is designed to integrate your ongoing projects and goals into mastering R, and to provide tools for streamlining projects in the future.

::: {style="text-align: center"}
> "I know R but I don't know Y." ---Alan Moore
:::

# Syllabus



Spring, 2025

*This syllabus is not a binding legal contract. With reasonable notice to students, the instructor may modify the syllabus and course schedule at any time, to accommodate the needs of the class. Should you have any questions or concerns, it is your responsibility to contact the instructor for clarification.*

## Instructor Information

Professor - Spencer Castro

Office - SSM 204B, hours: Wednesdays, 3:45pm-4:45pm

scastro39\@ucmerced.edu

TA - Zoe Loh

Office - SSM 235, hours: Thursdays, 3:30pm-4:30pm

Lecture: M 10:30-11:20am, COB 1 286 Labs: 02L M 11:30am-1:20pm, Kolligan 202

## Books

-   R for Data Science - Hadley Wickham - <https://r4ds.hadley.nz/>
-   Learning Statistics with R - Danielle Navarro - <https://learningstatisticswithr.com/>

## Course Overview

> "Visualization can surprise you, but it doesn't scale well. Modelling scales well, but it can't surprise you."
>
> ::: {style="text-align: right"}
> --- Hadley Wickham
> :::

In this course we will cover an introduction to:

1.  Installation of R, R studio, and the most used packages
2.  How to use StackOverflow, Rstudio Community, Cross Validated, and other sources for help
3.  The "art" of debugging
4.  designing an experiment for desired output of data
5.  Data wrangling with the Tidyverse
6.  Data visualization/graphing techniques with ggplot
7.  Potential guest lectures for basic stats and packages to use (correlation/regression).
8.  Writing reports with R Markdown

We will also attempt to instill some best practices such as creating a file of personal functions that perform analyses you perform often, naming files properly, and keeping your directory trees organized within a project. This course is also designed to allow more advanced students to challenge themselves with more material. Here are some bonus goals to attempt:

1.  Creating a file of personal functions. (including Morey (2008) confidence intervals for plots of repeated measures designs, turning date of birth to age, creating a "not in" search function, etc.)
2.  Scenario development and analysis, sensitivity analysis, simulations, and optimization.
3.  Meta data with Attributes
4.  Incorporating html with Rmarkdown
5.  Introduction to making a Shiny application
6.  Workshops after class for help with projects (Lab time)

## Learning Outcomes & Course Objectives

By the end of this course, students should be able to design a study with the desired data output in mind, process that data into a "tidy" format, analyze that data with desired statistical methods, and visualize that data in a formatted report using R. Students should also be able to apply concepts and strategies, such as debugging and trouble shooting basic R functions, searching data frames with regular expressions, and utilizing online resources to tackle challenges with their own data. Finally, students should be able to individually create a project that:

1.  Converts a raw dataset into a "tidy" format
2.  Applies Desired Analyses
3.  Produces publishable visualizations
4.  And reports these analyses in a polished Rmarkdown format

The end result of this class should be an Rmarkdown report or an Rmarkdown website with analyses and visualizations. The most apt way to organize this report would be to write it as the Methods and Results section of an American Psychological Association (APA) paper.

## Course Format

This will be a workshop-styled course, with many of the lectures requiring students to follow along in Rstudio on their personal computers. If you do not have access to a computer, we will have to either check one out from the library for classes or find another solution for providing a computer. During lab, there will be tutorials to complete, quizzes on course and R knowledge, and time to ask for personal help.

**Schedule**: This syllabus outlines the deadlines for project milestones and the Final Project due date. There will be weekly problem set practices and quizzes. For project milestones, the day the assignment is listed is the day the assignment is due. All assignments will be due by midnight, 12:00am. The schedule is subject to change. Stay tuned for announcements on assignment due dates and changes.

**Class Website**: There is a website for the class on Catcourses. Log on to the site through your web browser or Connect app. The link is here: <https://catcourses.ucmerced.edu/>. I will post code, links to R resources, and other tutorials online. We will use the class website to turn in and return assignments. In addition, there will be a discussion board available for questions/comments. Finally, we will begin and update a Frequently Asked Questions (FAQ) page for the class on the website.

Check that you have access to the website by using the link above, typing in your student ID and password, and checking that the tab for the class is present. If it is not, please let me know by E-mail. If you have technical problems with the website (or other issues), you can go either to the Office of Information Technology (<https://it.ucmerced.edu/service-desk>) or The Student First Center (<https://studentsfirst.ucmerced.edu/>). If that does not help, please contact them at 209-228-HELP(4357) or 209-228-7178 (9:00AM - 12:00PM and 1:00PM - 4:00PM M-Th).

**Contacting the Professor**: This is more a general rule, but I'm keeping it in here as a best practice. When contacting a TA or Professor, your email must have proof that you attempted to access the desired information in question in 3 ways in order to expect a response. These ways should include looking through this syllabus, exploring the website, and finally using the FAQ page or using Google. Once you include proof of these attempts in your email your question will be answered. Please put your full name either in the "From" line (instead of just your student ID) or at the end of your message. It may take up to **72 hours** for me to respond to e-mail (and marking something as "urgent" will have no effect in response time).

## Evaluation Methods/Assignments

Assignments will be graded within 1 week of their due date, allowing for adequate feedback as the class moves forward. You will receive a check+ for successfully completing the milestone, a check for turning in your project as it has progressed, and a check- for failing to meet the milestone deadline or otherwise turning in late work. The Final Project and the Final Paper will receive an actual grade out of 100 points each. The Final Project consists of successfully creating an Rmarkdown report or website, and the Final Paper will be the Methods and Results section of an APA formatted manuscript.

**Class Participation**: Activities that fall under class participation include activities online. There will be assignments such as registering for a Stack Overflow account and asking a question. Class participation also includes contributing to lecture time and helping with other students' projects during workshop time. If you plan to miss a class, please send me an email so I can provide extra materials or information about what we'll be covering. This is a small class so we should be able to accommodate everyone and optimize completion of your personal projects.

**Project Milestones**: Project milestones will consist of:

1.  Obtaining a dataset and uploading the raw file to Catcourses
2.  Reading this file into R with the Rstudio IDE
3.  Converting this file to a "tidy" format
4.  Creating visualizations and determining why one is the best way to visualize the data
5.  Performing desired analyses

Each milestone will be 20 points, full points for successful completion, 18 for turning in a project as it has progressed, and 15 for late work.

**Quizzes and Midterm**: There are 14 quizzes worth a total of 40 points and one midterm worth a total of 20 points. These quizzes and the midterm will be on Catcourses with a 24-hour, open-everything, multiple-choice format. The quizzes will be 5 questions each and the midterm will be 50 questions.

**Presentation**: Everyone will sign up for a time to present their dataset and what they have learned about it up to that point. Depending on where we are in the class, this may be just describing the participant number, demographics, and experimental design, or it could be a completed analysis. Completing the presentation will receive full points (20).

**Final Project**: Successfully creating an Rmarkdown file or Rmarkdown website with a description of the data, a visualization, some analysis, and any interesting conclusions will receive full points (100). Submitting a file in progress by the deadline will receive a minimum of 80 points, and submitting late work will receive 50 points maximum.

**Final Paper**: Creating an APA methods and results section for your data and submitting it on time will receive full points (100). Submitting a paper in progress by the deadline will receive a minimum of 80 point, and submitting late work will receive 50 points.

## Grading Policy

Points are allocated to each assignment and test, with the point total of 400. The highest score under 400 in the class will be 100%. 90% of that score will be in the A range, 80% in the B range, etc. [See lower limit for grades below].

::: {align="center"}
::: {style="width: 100%; margin:0 left;text-align: left;"}
| Evaluation Method  | Points | Weight |
|--------------------|--------|--------|
| Participation      | 20     | 5%     |
| Quizzes            | 40     | 10%    |
| Project Milestones | 100    | 25%    |
| Midterm            | 20     | 5%     |
| Presentation       | 20     | 5%     |
| Final Project      | 100    | 25%    |
| Final Paper        | 100    | 25%    |
:::
:::

**Lower limit for grades**: A (93%), A- (90%), B+ (87%), B (83%), B- (80%), C+ (77%), C (73%), C- (70%), D+ (67%), D (63%), D- (60%), E (\<60%)

## Student Rights and Responsibilities

All students are expected to maintain professional behavior in the classroom setting, according to the Code or Student Conduct (<https://osrr.ucmerced.edu/sites/osrr.ucmerced.edu/files/documents/code_of_conduct_600_and_700.pdf>), detailed in the link. Students have specific rights in the classroom as detailed in 701.00 of the Code. Here is an excerpt:

"Students are members of both society and the University community, with attendant rights and responsibilities. Students are expected to comply with all laws and with University policies and campus regulations. The standards of conduct apply to students as the term 'student' is defined in Section 14.40 of these Policies. They also apply to:

-A. Applicants who become students, for offenses committed as part of the application process. -B. Applicants who become students, for offenses committed on campus and/or while participating in University-related events or activities that take place following a student's submittal of the application through his or her official enrollment; and -C. Former students for offenses committed while a student.

If specified in implementing campus regulations, these standards of conduct may apply to conduct that occurs off campus and that would violate student conduct and discipline policies or regulations if the conduct occurred on campus."

The Code also specifies proscribed conduct that involves cheating on tests, plagiarism, and/or collusion, as well as fraud, theft, etc. in 702.00. Students should read the Code carefully and know they are responsible for the content. According to the code, each Chancellor may appoint faculty, student, or other advisory committees, or hearing officers, as specified in campus regulations to enforce responsible classroom behaviors, but the final authority for administration of student discipline rests with the Chancellor. The UC Merced Chancellor has delegated the administration of student discipline to the Office of Student Conduct within the Division of Student Affairs. For student rights and responsibilities, see <https://osrr.ucmerced.edu/sites/osrr.ucmerced.edu/files/documents/code_of_conduct_600_and_700.pdf>

If you are suspected of academic misconduct, the process proceeds according to the rules found in the Student Code. **If you are found responsible for misconduct, consequences range from failure on the assignment to dismissal from the University**, consistent with both University and Department Policy.

Minor offenses (plagiarism in written work) include failure to use citations correctly, because of lack of understanding of proper procedures for crediting ideas, rather than intention to cheat (with no evidence of lifted/stolen text. Major Offenses include: 1. Cheating on a test, quiz, problem set, or other independent work 2. Plagiarism in written work: Copying any quantity of text from another source or another student without quoting and citing the copied text. 3. Plagiarism in written work: Flagrant misuse of citations, such that a student clearly attempted to represent ideas that were not his/hers as if they were, even if the ideas were presented in the student's own words. Both minor and major offenses will have consequences, as outlined in the Student Code.

Assignments turned in on Catcourses can be screened using Turnitin, and the above policy will be followed when misconduct is found. This is important for the scope of the final papers in this class, especially if students plan to submit their final papers for publication.

## Course Policies

This course will involve a large portion of working on projects in class. This means students' attendance and participation is very important to successfully completing the objectives of the course.

-   Attendance & Punctuality: There will be no attendance.
-   Food & Drink. Please bring it. However, please consume it outside the classroom during scheduled breaks.
-   Cell Phones & Computers: Cell phones should be off, just like when you are in a movie theater. Computers should be on and running Rstudio.
-   Electronic/equipment failure: In the case of a loss of powerpoint video or audio for examples, concepts will be demonstrated on the board and project work can be done on personal computers.
-   CatCourses: please log in to CatCourses for course changes and announcements. The syllabus, project milestones, and other assignments will all be on CatCourses.
-   Please follow University Policy with regard to masks in the classroom. If you are not properly wearing a mask, you will not be able to attend the in-person classes.

## University Attendance Requirements

The University expects regular attendance at all class meetings. Instructors must communicate any particular attendance requirements of the course to students in writing on or before the first class meeting. Students are responsible for acquainting themselves with and satisfying the entire range of academic objectives and requirements as defined by the instructor.

Students absent from class to participate in officially sanctioned University activities (e.g., band, debate, student government, intercollegiate athletics) or religious obligations, or with instructor's approval, shall be permitted to make up both assignments and examinations. The University expects its departments and programs that take students away from class meetings to schedule such events in a way that will minimize hindrance of the student's orderly completion of course requirements. Such units must provide a written statement to the students describing the activity and stating as precisely as possible the dates of the required absence. The involved students must deliver this documentation to their instructors, before the absence.

Except in cases of sudden illness or emergency, students shall in advance of the absence arrange with the instructor to make up assignments.

Unexpected University facility closures due to weather, emergency or disaster may occur from time to time. Students may be required to complete coursework missed due to these or other class cancellations; however, instructors requiring mandatory make-up sessions may not penalize students if they are unable to attend due to time conflicts, etc.

## Student Support & Accommodations

**Americans with Disabilities Act (ADA) Statement** The University of California seeks to provide equal access to its programs, services and activities for people with different abilities. If you will need accommodations in the class, reasonable prior notice needs to be given to the Student Accessibility Services (<https://access.ucmerced.edu/>). SAS will work with you and the instructor to make arrangements for accommodations. All information in this course can be made available in alternative format with prior notification to the Student Accessibility Services.

Requests for accommodation should be filled out with a SAS Service Request Form (<https://access.ucmerced.edu/node/14>).

**Scheduling Accommodations** *Example*: Consistent with Section Q of the University's Policy for Instruction and Evaluation, I am willing to accommodate university activities as well as values-based obligations (including religious or other values-based activities) that conflict with course activities. No later than the end of the second week of the semester, please send me an e-mail with the nature and date of your anticipated absence (earlier if your conflict occurs before that deadline). That will give us time to work out a way for you to make up any missed work.

**Content Accommodations** There will be no content accommodations in this class. Please review the syllabus and topics carefully and be sure that you are able to engage all of the topics we will be covering this semester.

**Wellness Statement** Personal concerns such as stress, anxiety, relationship difficulties, depression, cross-cultural differences, etc., can interfere with a student's ability to succeed and thrive at the University of California. For helpful resources contact Health Services - <https://health.ucmerced.edu/>. The UC Merced Counseling and Psychological Services (CAPS) is another excellent resource, offering services that include counseling and a mindfulness clinic (see <https://counseling.ucmerced.edu/services/counseling-services>).

**Veterans Services** If you are a student veteran, I want you to know that UC Merced has Veterans services available. Veteran Services is responsible for submitting entitlement requests for new and continuing students to the U.S. Department of Veterans Affairs, answering questions from veteran students or dependents concerning educational benefits, and providing resources and programs to assist veterans in navigating their transition to civilian and student life. Please visit their website for more information about what support they offer, a list of ongoing events and links to outside resources: <https://veteranservices.ucmerced.edu/>. Please also let me know if you need any additional support in this class for any reason.

**Office of Student Life LGBTQ+ Initiatives** The purpose of LGBTQ+ Initiatives, within the Office of Student Life, is to affirm the unique lives, identities and intersectionalities of our Lesbian, Gay, Bisexual, Trans\*, Two-Spirit, Queer, Questioning, Asexual, Intersex, Pansexual, Omnisexual, same gender loving people and ally students, and faculty and staff members. We encourage a supportive and inclusive environment by providing education, outreach and advocacy opportunities that assist our LGBTQ+ and ally students and faculty and staff members to achieve personal and academic excellence (<https://studentinvolvement.ucmerced.edu/>).

**Learners of English as an Additional/Second Language** If you are an English language learner, please be aware of several resources on campus that will support you with your language development and writing. These resources include: Writing and Grammar resources; Reading help; Speaking and Pronunciation resources; Teaching resources for Non-Native spearkers; and U.S. classroom vocabulary and expressions (<https://teach.ucmerced.edu/EnglishResources>). Please let me know if there is any additional support you would like to discuss for this class.

## Academic Calendar

<https://registrar.ucmerced.edu/schedules/academic-calendar/academic-calendar-2024-2025>

## Course Schedule

<table class="table table-striped table-hover table-responsive" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Dates </th>
   <th style="text-align:left;"> Topic/Description </th>
   <th style="text-align:left;"> Reading/Work </th>
   <th style="text-align:left;"> Project Milesone/task </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;width: 7em; "> Jan 27 </td>
   <td style="text-align:left;"> Introduction/Installation </td>
   <td style="text-align:left;"> syllabus Swirl tutorial/[base-R](https://github.com/rstudio/cheatsheets/blob/main/base-r.pdf) </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 7em; "> Feb 03 </td>
   <td style="text-align:left;"> R commands/tricks </td>
   <td style="text-align:left;"> Swirl tutorial/[data-import](https://evoldyn.gitlab.io/evomics-2018/ref-sheets/R_data-import.pdf) </td>
   <td style="text-align:left;"> Obtaining a Dataset </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 7em; "> Feb 10 </td>
   <td style="text-align:left;"> Intro to reading data/Data Workshop </td>
   <td style="text-align:left;"> Swirl tutorial/[data-wrangling](https://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf) </td>
   <td style="text-align:left;"> Ask your first question on StackOverflow </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 7em; "> Feb 24 </td>
   <td style="text-align:left;"> Cleaning data/Data Workshop </td>
   <td style="text-align:left;"> Swirl tutorial/[data-transformation](https://nyu-cdsc.github.io/learningr/assets/data-transformation.pdf) </td>
   <td style="text-align:left;"> Dataset Read into R </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 7em; "> Mar 03 </td>
   <td style="text-align:left;"> Dplyr and Tidyr </td>
   <td style="text-align:left;"> Swirl tutorial/[data-vizualization-2.1](https://www.maths.usyd.edu.au/u/UG/SM/STAT3022/r/current/Misc/data-visualization-2.1.pdf) </td>
   <td style="text-align:left;"> Make an Rproject </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 7em; "> Mar 10 </td>
   <td style="text-align:left;"> Visualizing with ggplot/Data
Workshop </td>
   <td style="text-align:left;"> Stats challenge/[Navarro](http://www.fon.hum.uva.nl/paul/lot2015/Navarro2014.pdf) </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 7em; "> Mar 17 </td>
   <td style="text-align:left;"> Intro to stats in R </td>
   <td style="text-align:left;"> Stats challenge/[MLM tutorial](http://www.bodowinter.com/tutorial/bw_LME_tutorial1.pdf) </td>
   <td style="text-align:left;"> Tidy Dataset </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 7em; "> Mar 31 </td>
   <td style="text-align:left;"> More stats in R </td>
   <td style="text-align:left;"> Stats challenge/[MLM tutorial](http://www.bodowinter.com/tutorial/bw_LME_tutorial2.pdf) </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 7em; "> Apr 07 </td>
   <td style="text-align:left;"> Still more stats in R </td>
   <td style="text-align:left;"> Report challenge/[Rmarkdown-2.0](https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf) </td>
   <td style="text-align:left;"> Analysis Complete </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 7em; "> Apr 14 </td>
   <td style="text-align:left;"> Rmarkdown </td>
   <td style="text-align:left;"> Report challenge/[rmarkdown-reference](https://www.rstudio.com/wp-content/uploads/2015/03/rmarkdown-reference.pdf) </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 7em; "> Apr 21 </td>
   <td style="text-align:left;"> Report Generation and Optimization </td>
   <td style="text-align:left;"> Shiny app build/[shiny](https://shiny.rstudio.com/images/shiny-cheatsheet.pdf) </td>
   <td style="text-align:left;"> Rmarkdown Document </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 7em; "> Apr 28 </td>
   <td style="text-align:left;"> Rmarkdown help </td>
   <td style="text-align:left;"> Regular expression challenge/[purrr](https://evoldyn.gitlab.io/evomics-2018/ref-sheets/R_purrr.pdf)/[strings](http://edrub.in/CheatSheets/cheatSheetStringr.pdf) </td>
   <td style="text-align:left;"> Methods &amp; Results Due </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 7em; "> May 05 </td>
   <td style="text-align:left;"> Bonus Material – Shiny? </td>
   <td style="text-align:left;"> Presentations of Data Analysis </td>
   <td style="text-align:left;"> Final Projects Due </td>
  </tr>
</tbody>
</table>


