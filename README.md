# Assurity Consulting Technical Assignment
This is a BDD API testing framework created for Assurity Consulting as a technical assignment to test following API. 


	* API = https://api.tmsandbox.co.nz/v1/Categories/6327/Details.json?catalogue=false

Acceptance Criteria:

	* Validate Name = "Carbon credits"
	
	* Validate CanRelist = true
	
	* Validate the Promotions element with Name = "Gallery" has a Description that contains the text "Good position in category"
																																	

Framework:
This framework is created and developed using Eclipse. I have used Karate frmework with JUnit5 to develop this API testing framework. 

Languages used:
I have used Java, JavaScript and Gherkin syntax for development. 

#Pre-requesits:-
1. Install Java 8 or latest version and set path variables.
2. Install Apache Maven and set path variables(https://maven.apache.org/download.cgi).
3. Install Git(https://git-scm.com/downloads).

##Steps to run test command line:-
Step 01:- Clone the project from repository(https://github.com/dchandana/AssurityConsultingTechnicalAssignment/tree/master)

	- git clone --branch master https://github.com/dchandana/AssurityConsultingTechnicalAssignment.git
	
Step 2:- Navigate to root directory and run maven command

	- mvn test  
	
Step 3:- Navigate to following folder and open 'karate-summary.html' report. There will be step by step execution steps.

	- ../AssurityConsultingTechnicalAssignment/target/karate-reports
	
	
#Steps to run test in Eclipse:-
Step 01:- You need to have Eclipse Oxygen 4.23 or a version support JUnit5. You can directly import directly to Eclipse.

Step 02:- Test case feature file located in following location. currently I have added all 4 data rows in the test case and you can update in 'Examples' section.

	/tmsandBoxApiTest/src/test/java/com/assurityConsulting/apiTesting/tmsandBoxApiTest/feature/categoriesTest.feature
	
Test data can be pass from following JSON file also. This is disabled in the framework

	/tmsandBoxApiTest/src/test/java/com/assurityConsulting/apiTesting/tmsandBoxApiTest/Data/categoriesData.json

Step 03:- To execute the test you can right click on pom.xml file and select 'Run as' and then select 'Mevan test'


