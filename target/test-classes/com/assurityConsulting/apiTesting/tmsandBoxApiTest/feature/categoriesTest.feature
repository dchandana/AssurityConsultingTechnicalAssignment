@debug
@Assurity_Consulting_Technical_Assignment
Feature: tmsandbox API tests 
	Karate:Run|Karate:Debug
	
	Background: Set base URL
	* url 'https://api.tmsandbox.co.nz/v1/'
	* def description = "" 
	* def expectedOutput = read('../Data/categoriesData.json')

	
	Scenario Outline: Test Categories
	
		Given path 'Categories/6327/Details.json'
		And request {}
		When method GET
		Then status 200 
		Then match response == "#object"
		
		#Validation 1 in Acceptance Criteria (Name = "Carbon credits")
		Then match response.Name == <Name>
		
		#Validation 2 in Acceptance Criteria (CanRelist = true)
		Then match response.CanRelist == <CanRelist>
		
		#Validation 3 in Acceptance Criteria (The Promotions element with Name = "Gallery" has a Description that contains the text "Good position in category")
		* eval
		"""
		for(var n in response.Promotions){
			if(response.Promotions[n].Name==<PromotionsPersonName>){
				description = response.Promotions[n].Description
				console.log("**** [Framework log ] Description is: "+description);
			}
		}	
		"""
		And print description	
		Then match description contains <PromotionsPersonDescription>
	
	#Test data for Test Categories scenario
	Examples:
	|Name			|CanRelist	|PromotionsPersonName	|PromotionsPersonDescription|
	|"Carbon credits"|true		|"Gallery"				|"Good position in category"|
	|"Carbon credits"|true		|"Feature"				|"Better position in category"|
	|"Carbon credits"|true		|"Feature Combo"		|"Best position in category \u000aIncludes benefits of Feature \u000aHighlights listing in search results"|
	|"Carbon credits"|true		|"Basic"				|"Lowest position in category"|
	