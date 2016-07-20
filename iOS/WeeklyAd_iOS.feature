Feature: H-E-B Weekly Ad page feature

@Priority2 @WeeklyAd @TC01_WA_CU
Scenario: Weekly Ad_Cold View Details Page With Category Filter
	
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	Then I navigate to Featured Deals page in Weekly Ad
		# 2. Click on Weekly Ad from aisle 
		# 3. Set your store in Map view
		# 4. Title- Featured Deals
	When I select Categories from action bar
	Then I should see Categories page
		# Includes the verification of Title: Categories
	When I select a category
		# select "Grocery" category
	Then I see the Featured Deals of selected category
		# Includes the following verifications
		# Selected Category name in the Header
		# 1. Checkbox in the left side
	When I select a deal
	Then I see the Item details page
		# Includes verify title as Item Details
	When I select the Back button from action bar
	Then I see the Featured Deals of selected category
		#Includes Verify the selected Category name in the Header

@Priority2 @WeeklyAd @TC02_WA_CU
Scenario: Weekly Ad_Cold View Details Page With Search Filter
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	Then I navigate to Featured Deals page in Weekly Ad
		# 2. Click on Weekly Ad from aisle 
		# 3. Set your store in Map view
		# 4. Title- Featured Deals
	When I select the Search for Products field
	Then I see the Keyboard at the bottom of screen
	When I type Search Term in the Search for Products field
	And I select the Search button from Keyboard
		# click on the enter button
	Then I see Featured Deals of searched item
		# Includes verify Search item from the search box
	When I select a deal
	Then I see the Item details page
		# Includes verify title as Item Details
	When I select the Back button from action bar
	Then I see Featured Deals of searched item
		# Includes verify Search item from the search box
	When I click on Cancel button beside search box
	Then I should see Featured Deals page
		# Includes validations: Title- Featured Deals


@Priority2 @WeeklyAd @TC03_WA_CU
Scenario: Weekly Ad_Cold_View Another Store s Weekly Ad
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	Then I navigate to Featured Deals page in Weekly Ad
		# 2. Click on Weekly Ad from aisle 
		# 3. Set your store in Map view
		# 4. Title- Featured Deals
	When I select View Another Store Option
	Then I should see Select Your Store page
		# Includes the validation Title- Select Your Store
	When I select the List View icon from page footer
	Then I should see the Store Details in list view
		# Includes the verification of Title as Select Your Store
		# 1. Map view Icon in the action bar
		# 2. List of Stores and the details
	And I select a store
	Then I should see Featured Deals page 
		# Includes validations: Title- Featured Deals
	
	
@Priority2 @WeeklyAd @TC04_WA_CU
Scenario: Weekly Ad_Cold Add Multiple Deals to Shopping List
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	Then I navigate to Featured Deals page in Weekly Ad
		# 2. Click on Weekly Ad from aisle 
		# 3. Set your store in Map view
		# 4. Title- Featured Deals
	When I select the Check Boxes of multiple deals
	Then I see the Blue Checkmark in the selected fields
	When I de-select the Check Box of one item
	Then I dont see the Blue Checkmark
	When I select Add button from page footer
	Then I see the scrolling Shopping List names
		# Includes verification of Title as Add to List
	When I select the Cancel button
	Then I should see the Featured Deals page with the Checked Items
		# Includes verification of title as Featured Deals
	When I select Add button from page footer
	Then I see the scrolling Shopping List names
		# Includes verification of Title as Add to List
	When I select the Shopping List
	And I select the Done button
	Then I see the Toast message
		# Includes following verifications
		# Verify the Toast message is as expected
	

@Priority2 @WeeklyAd @TC05_WA_CU
Scenario: Weekly Ad_Cold_Select All Deals And Add to List with Category Filter
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	Then I navigate to Featured Deals page in Weekly Ad
		# 2. Click on Weekly Ad from aisle 
		# 3. Set your store in Map view
		# 4. Title- Featured Deals
	When I select Categories from action bar
		# Indicated by grey triangle to the right of category name
	Then I see the Categories page
		# Includes the following verifications
		# 1. Weekly Ad
		# 2. And their Ad count
	When I select a category
	Then I see the Featured Deals of selected category
		#Includes Verify the selected Category name in the Header
	When I select Select All button from the page footer
	Then I see the Blue Checkmark in the selected fields
	When I select Add button from the page footer
	Then I see the scrolling Shopping List names
		# Includes verification of Title as Add to List
	When I select the Shopping List
	And I select the Done button
	Then I see the Toast message
		# Includes following verifications
		# Verify the Toast message is as expected
	When I select Shopping Lists from the page footer
		# Includes page verifications
	Then I see My Lists page
		# Includes the verification of Title as My Lists
	When I select the Weekly Grocery List
	Then I see the Deals which are added to the List
		# Includes page verifications
	
	
@Priority2 @WeeklyAd @TC06_WA_CU
Scenario: Weekly Ad_Cold Add to Shopping List from Deal Details Page
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	Then I navigate to Featured Deals page in Weekly Ad
		# 2. Click on Weekly Ad from aisle 
		# 3. Set your store in Map view
		# 4. Title- Featured Deals
	When I select a deal
	Then I see the Item details page
		# Includes verify title as Item Details
	When I select Add to List button from the page footer
	Then I see the scrolling Shopping List names
		# Includes verification of Title as Add to List
	When I select the Shopping List
	And I select the Done button
	Then I see the Toast message
		# Includes following verifications
		# Verify the Toast message is as expected 
	When I select Shopping Lists from the page footer
		# Includes page verifications
	Then I see My Lists page
		# Includes the verification of Title as My Lists
	When I select the Weekly Grocery List
	Then I see the Deals which are added to the List
		# Includes page verifications
	

@Priority1 @WeeklyAd @TC07_WA_HU
Scenario: Weekly Ad_Hot Search Products With Category Filter And View Details

	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	Then I navigate to Featured Deals page in Weekly Ad
		# 2. Click on Weekly Ad from aisle 
		# 3. Set your store in Map view
		# 4. Title- Featured Deals
	When I select Categories from action bar
		# Indicated by grey triangle to the right of category name
	Then I see the Categories page
		# Includes the following verifications
		# 1. Weekly Ad
		# 2. And their Ad count
	When I select a category
	Then I see the Featured Deals of selected category
		#Includes Verify the selected Category name in the Header
	When I select a deal
		# Includes the following verifications
		# 1. Checkbox in the left side
	Then I see the Item details page
		# Includes verify title as Item Details
	When I select the Back button from action bar
	Then I see the Featured Deals of selected category
		#Includes Verify the selected Category name in the Header
	When I select the Search for Products field
	Then I see the Keyboard at the bottom of screen
	When I type Search Term in the Search for Products field
	And I select the Search button from Keyboard
	Then I see Featured Deals of searched item
		# Includes verify Search item from the search box
	When I select a deal
	Then I see the Item details page
		# Includes verify title as Item Details
	When I select the Back button from action bar
	Then I see Featured Deals of searched item
		# Includes verify Search item from the search box
	When I click on Cancel button beside search box
	Then I see the Featured Deals of selected category
		#Includes Verify the selected Category name in the Header


@Priority2 @WeeklyAd @TC08_WA_HU
Scenario: Weekly Ad_Hot_View Another Stores Weekly Ad Deals

	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	Then I navigate to Featured Deals page in Weekly Ad
		# 2. Click on Weekly Ad from aisle 
		# 3. Set your store in Map view
		# 4. Title- Featured Deals
	When I select View Another Store option
	Then I should see Select Your Store page
		# Includes the validation Title- Select Your Store
	When I select List view icon from page footer
	Then I should see the Store Details in list view
		# Includes the verification of Title as Select Your Store
		# 1. Map view Icon in the action bar
		# 2. List of Stores and the details
	When I select a store
	Then I should see Featured Deals page 
		# Includes validations: Title- Featured Deals
	

@Priority2 @WeeklyAd @TC09_WA_HU
Scenario: Weekly Ad_Hot_Add to Shopping List Cancel Then Add Multiple Deals

	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	Then I navigate to Featured Deals page in Weekly Ad
		# 2. Click on Weekly Ad from aisle 
		# 3. Set your store in Map view
		# 4. Title- Featured Deals
	When I select the Check Boxes of multiple deals
	Then I see the Blue Checkmark in the selected fields
	When I de-select the Check Box of one item
	Then I dont see the Blue Checkmark
	When I select Add button from page footer
	Then I see the scrolling Shopping List names
		# Includes verification of Title as Add to List
	When I select the Cancel button
	Then I should see the Featured Deals page with the Checked Items
		# Includes verification of title as Featured Deals
	When I select Add button from page footer
	Then I see the scrolling Shopping List names
		# Includes verification of Title as Add to List
	When I select the Shopping List
	And I select the Done button
	Then I see the Toast message
		# Includes following verifications
		# Verify the Toast message is as expected


@Priority1 @WeeklyAd @TC10_WA_HU
Scenario: Weekly Ad_Hot_Add All Deals To Shopping List With Category Filter

	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	Then I navigate to Featured Deals page in Weekly Ad
		# 2. Click on Weekly Ad from aisle 
		# 3. Set your store in Map view
		# 4. Title- Featured Deals
	When I select Categories from action bar
		# Indicated by grey triangle to the right of category name
	Then I see the Categories page
		# Includes the following verifications
		# 1. Weekly Ad
		# 2. And their Ad count
	When I select a category
	Then I see the Featured Deals of selected category
		#Includes Verify the selected Category name in the Header
	When I select Select All button from the page footer
	Then I see the Blue Checkmark in check fields of all items
	When I select Add button from page footer
	Then I see the scrolling Shopping List names
		# Includes verification of Title as Add to List
	When I select the Shopping List
	And I select the Done button
	Then I see the Toast message
		# Includes following verifications
		# Verify the Toast message is as expected 
	When I select Shopping Lists from the page footer
		# Includes page verifications
	Then I see My Lists page
		# Includes the verification of Title as My Lists
	When I select the List
	And I see the Deals which are added to the List
		# Includes page verifications
	
@Priority2 @WeeklyAd @TC11_WA_HU
Scenario: Weekly Ad_Hot_ Add Item From Item Details Page To A List

	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	Then I navigate to Featured Deals page in Weekly Ad
		# 2. Click on Weekly Ad from aisle 
		# 3. Set your store in Map view
		# 4. Title- Featured Deals
	When I select a deal
	Then I see the Item details page
		# Includes verify title as Item Details
	When I select Add to List button from the page footer
	Then I see the scrolling Shopping List names
		# Includes verification of Title as Add to List
	When I select the Shopping List
	And I select the Done button
	Then I see the Toast message
		# Includes following verifications
		# Verify the Toast message is as expected 
	When I select the Back button from the actions bar
	Then I see Featured Deals page
		# Includes validations: Title- Featured Deals
	
@Priority1 @WeeklyAd @TC12_WA_HU
Scenario: Weekly Ad_Hot Search Products Then Add All To List

	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	Then I navigate to Featured Deals page in Weekly Ad
		# 2. Click on Weekly Ad from aisle 
		# 3. Set your store in Map view
		# 4. Title- Featured Deals
	When I select the Search for Products field
	Then I see the Keyboard at the bottom of screen
	When I type Search Term in the Search for Products field
	And I select the Search button from Keyboard
	Then I see Featured Deals of searched item
		# Includes verify Search item from the search box
	When I select Select All button from the page footer
	Then I see the Blue Checkmark in check fields of all items
	When I select Unselect All button from the page footer
	Then I dont see the Blue Checkmark in check fields of all items
	When I select Select All button from the action bar
	Then I see the Blue Checkmark in check fields of all items
	When I select Add button from the page footer
	Then I see the scrolling Shopping List names
		# Includes verification of Title as Add to List
	When I select the Shopping List
	And I select the Done button
	Then I see the Toast message
		# Includes following verifications
		# Verify the Toast message is as expected
	When I click on Cancel button beside search box
	Then I should see Featured Deals page
		# Includes validations: Title- Featured Deals

@Priority1 @WeeklyAd @TC13_WA_CU
Scenario: Weekly Ad_Verify_SelectYourStore_Page
	Given I am a Cold User
		# Include steps to Open App
		# Click "Continue without registering" button if Login Splash page is displayed 
	When I click on Weekly Ad from aisle
	Then I verify all the properties of Select Your Store page
		# 1.Includes the following Page Verifications in the page footer
		# 1.a. Home icon: and label
		# 1.b. Products: icon and label
		# 1.c. Shopping List: icon and label
		# 1.d. Coupons: icon and label
		# 1.e. More: icon and label
		# 2. Map should focus on user's current location
		# 3. Map and List view tabs in the action bar
		# 4. Back button in the action bar
		# 5. Search box below action bar
		# 5.a. Search bix text: Search By ZIP Code or City/State
	When I select red store indicator on map view
	Then I should see Store information in white bubble
		# Includes following verifications in the Bubble
		# 1. Store address
		# 2. Store name

@Priority1 @WeeklyAd @TC14_WA_CU
Scenario: Weekly Ad_Hot user_Verify_SelectYourStore_Page
	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	When I click on Weekly Ad from aisle
	Then I verify all the properties of Select Your Store page
		# 1.Includes the following Page Verifications in the page footer
		# 1.a. Home icon: and label
		# 1.b. Products: icon and label
		# 1.c. Shopping List: icon and label
		# 1.d. Coupons: icon and label
		# 1.e. More: icon and label
		# 2. Map should focus on user's current location
		# 3. Map and List view tabs in the action bar
		# 4. Back button in the action bar
		# 5. Search box below action bar
		# 5.a. Search bix text: Search By ZIP Code or City/State
	When I select red store indicator on map view
	Then I should see Store information in white bubble
		# Includes following verifications in the Bubble
		# 1. Store address
		# 2. Store name

@Priority1 @WeeklyAd @TC15_WA_CU
Scenario: Weekly Ad_Cold user_Verify_FeaturedDeals_Page
	<Pending for Screenshot>
	
@Priority1 @WeeklyAd @TC16_WA_HU
Scenario: Weekly Ad_Hot user_Verify_FeaturedDeals_Page
	<Pending for screenshot>	

@Priority1 @WeeklyAd @TC17_WA_CU
Scenario: Weekly Ad_Cold user_Verify_Item Details_Page
	<Pending for Screenshot>
	
@Priority1 @WeeklyAd @TC18_WA_HU
Scenario: Weekly Ad_Hot user_Verify_Item Details_Page
	<Pending for Screenshot>
	
@Priority1 @WeeklyAd @TC19_WA_CU
Scenario: Weekly Ad_Cold User_Add To List
	<Pending for Screenshot>
	
@Priority1 @WeeklyAd @TC20_WA_HU
Scenario: Weekly Ad_Hot user_Add To List
	<Pending for Screenshot>
	
@Priority1 @WeeklyAd @TC21_WA_CU
Scenario: Weekly Ad_Cold user_Verify_Categories
	<Pending for Screenshot>
	
@Priority1 @WeeklyAd @TC22_WA_HU
Scenario: Weekly Ad_Hot user_Verify_Categories
	<Pending for Screenshot>
	
