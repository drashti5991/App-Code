# App-Code
A git repository for the Bond Street challenge

Developed in       : Netbeans 8.1 , Apache Tomcat 8.0
Technologies used  : Java, JSP, HTML, CSS, Bootstrap, jQuery, Javascript 
Database Model     : A preferred database model would be a Relational database Model that comprises of unique tables, which in turn are composed of records (or rows, conceptually) and fields (or columns, conceptually speaking). Any popular data management systems like Oracle, MySQL, and Microsoft SQL Server can be used for this task.

Summary of the Application Flow Code Test :
1)	Implemented a 5 step application system that manages both the application progression flow and the user’s current place within the application. (ie they can come back and be dropped in where they left off)
2)	A user is not allowed to skip any steps but is allowed to go back to a previous step without losing their place within the Application.
3)	If user goes back to a previous step and submits that page, they should be redirected back to the furthest page within the application that they’ve seen.
4)	Implemented the GET(in the form of response.Redirect() and POST view handlers for a given step X which contains the basic logic for setting the current step and getting the next step.
5)	The Application looks exactly like the screenshots, with a Copyright and a few User Interface animations.

Assumptions made :
1)	 I took the liberty of adding 2 additional pages: An initial page to begin the application and a Final page to display the success of the application submission.
2)	When the User is at the Welcome page, he/she has to click on Begin before the application process begins.
3)	While the User is advancing on his application, if at any point he/she visits a previous page, he/she can access all the pages from the current page to the last visited page as that page has already been visited once.
4)	Once the User has submitted the application i.e Success, he/she is not allowed to access any pages except logout and go to the Welcome page to begin the application.

