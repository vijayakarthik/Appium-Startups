Feature: Store Locator feature
	

@Priority3 @StoreLocator @TC01_SL_CU
Scenario: SL_Cold_Page elements validation_Store Locator screen_Map View
	
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on users current location
		# 1. Includes verification of button "Refine" in Top right corner
	And I verify navigation bar of Store Locator screen for Map View
		# 1. Includes verification of left arrow sign and "H-E-B" text on left hand of action bar
		# 2. "Map" and "List" icon displayed in middle of navigation bar
		# 3. Map Icon should be selected / enabled
		# 4. Refine button on right-side of action bar
	And I verify Search Text field
		# 5. Below Navigation bar search Text displaying with default text as "Search by Zip code or City/State" (aligned center)  
	And I verify Maps 
		# 6. Includes verification of displaying Maps with Mobile current location
		# 7. Target icon displays on bottom right corner of Maps 
		# 8. Includes displaying red pin points for store locations
	And I verify bottom page
		# 9. Home icon + "Home"	button is displayed
		# 10. Products icon + "Products" button
		# 11.	Shopping list icon + "Shopping list" button
		# 12. Coupons icon + "Coupons" buuton 
		# 13. More icon + "More" button
	When I select on a store from Map View 
	Then I see White information bubble
	And I verify White information bubble
		# 1. Includes below verification 
		# 2. <Street Address>
		# 3. <Store Name>
		# 4. info icon image
		
@Priority3 @StoreLocator @TC02_SL_CU
Scenario: SL_Cold_Page elements validation_Store Locator screen_List View
***steps to be added ***

@Priority3 @StoreLocator @TC03_SL_HU
Scenario: SL_Hot_Page elements validation_Store Details screen_choosing store from List view 
***steps to be added ***

@Priority3 @StoreLocator @TC04_SL_HU
Scenario: SL_Hot_Page elements validation_Store Details screen choosing store from Map view 
***steps to be added ***

@Priority3 @StoreLocator @TC05_SL_CU
Scenario: SL_Cold_Page elements validation_Store Locator screen_Refine
***steps to be added ***

@Priority3 @StoreLocator @TC06_SL_CU
Scenario: SL_Cold_Page elements validation_Store Details screen_choosing store from List view 
***steps to be added ***

@Priority1 @StoreLocator @TC07_SL_CU
Scenario: SL_Cold_Verify user can navigate into store locator select a store and select store phone number
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of button "Refine" in Top right corner
	When I click on List View icon
	When I select on a store from List View 
	Then I see Store Details screen of cold user
		# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
		# 2. Includes View Phone Number link
		# 3. Includes View Weekly Ad, See Store Features link
		# 4. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	When I click on store phone number
	Then I see a Pop Up as "About to call"
	Then I click on cancel 
	Then I click on Store Locator button
	Then I click on Map view icon 
	When I select on a store from Map View 
	Then I see White information bubble
	When I click on white information bubble
	When I click on store phone number
	Then I see a Pop Up as "About to call"
	When I click on OK
	Then ********add
		# 1. Includes displaying the store phone number in Dialer screen
	
@Priority1 @StoreLocator @TC08_SL_CU
Scenario: SL_Cold_Verify user can navigate into store locator and select weekly ad
	
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of button "Refine" in Top right corner
	When I click on List View icon
	When I select on a store from List View 
	Then I see Store Details screen of cold user
	# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
	# 2. Includes View Phone Number link
	# 2. Includes View Weekly Ad, See Store Features link
	# 3. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	When I click on View Weekly Ad link
	Then I see weekly ad screen
	# 1. Includes verification of Back button + left arrow icon on left hand corner of action bar
	# 2. Page title as "Featured Deals"
	# 3. Categories button at Top right corner
	# 4. All deals displaying with radio button + image + deal name and details + Right arrow image
	# 5. Below navigation bar, display search bar with default text "search for products"
	# 6. Below Search bar display store address on left hand corner of header.
	# 7. GPS Icon + view another store button on right hand corner of header.
	# 8. SELECT ALL button on bottom left hand corner of page
	# 9. Add to List Text on bottom right corner
	
@Priority1 @StoreLocator @TC09_SL_CU
Scenario: SL_Cold_Verify user can navigate and select store directions from store locator

	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of button "Refine" in Top right corner
	When I click on List View icon
	When I select on a store from List View 
	Then I see Store Details screen of cold user
	# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
	# 2. Includes View Phone Number link
	# 2. Includes View Weekly Ad, See Store Features link
	# 3. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	When I click on Get Directions
	Then I see a Pop Up as "Get Directions /n This link will open in Maps"
	Then I click on cancel 
	Then I click on Store Locator button
	Then I click on Map view icon 
	When I select on a store from Map View 
	Then I see White information bubble
	When I click on white information bubble
	When I click on Get Directions
	Then I see a Pop Up as "Get Directions /n This link will open in Maps"
	When I click on "OK"
	Then I see Maps screen
	# 1. Includes displaying the Map Application
	
@Priority1 @StoreLocator @TC010_SL_CU
Scenario: SL_Cold_Verify user can navigate and select store through search and Target icons
	
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of button "Refine" in Top right corner
	When I click on Search Field label
	Then I see keyboard
	When I enter <Texas City>
	When I click Search button on keyboard
	Then I see Store Locator screen in map view for the selected City
		# 1. Includes verification of left arrow sign and "H-E-B" text on left hand of action bar
		# 2. "Map" and "List" icon displayed in middle of navigation bar
		# 3. Map Icon should be selected / enabled
		# 4. Refine button on right-side of action bar
		# 5. Below Navigation bar Search Text field  and Target icon in bottom page
		# 6. Includes verification of map focus on searched <Texas City>
	When I click Target icon
	Then I see Store Locator screen in map view focusing on user's current location
		#  Includes verification of map accurately focused on user's current location
	When I enter <Texas Zip Code>
	When I click Search button on keyboard
	Then I see Store Locator screen in map view for the selected Zip Code
		# 1. Includes verification of left arrow sign and "H-E-B" text on left hand of action bar
		# 2. "Map" and "List" icon displayed in middle of navigation bar
		# 3. Map Icon should be selected / enabled
		# 4. Refine button on right-side of action bar
		# 5. Below Navigation bar Search Text field  and Target icon in bottom page
		# 6. Includes verification of map focus on searched <Texas City>
	When I select on a store from Map View 
	Then I see White information bubble
	When I click on white information bubble
	Then I see Store Details screen of cold user
		# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
		# 2. Includes View Weekly Ad, See Store Features link
		# 3. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	
@Priority1 @StoreLocator @TC011_SL_CU
Scenario: SL_Cold_Verify user can navigate and select store using Refine option
	
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of button "Refine" in Top right corner
	When I select Refine button
	Then I see Refine Stores screen
	When I select at least 1 refinement icon
	Then I see "ON" icon in green color
	When I click on Apply icon
	Then I see Store Locator screen in Map view with selected attribute refinements
		# 1. Includes verification of left arrow sign and "H-E-B" text on left hand of action bar
		# 2. "Map" and "List" icon displayed in middle of navigation bar
		# 3. Map Icon should be selected / enabled
		# 4. Refine button on right-side of action bar
		# 5. Below Navigation bar Search Text field  and Target icon in bottom page
		# 6. Includes verification of map focus on searched <Texas City>
	When I click on List View icon
	Then I see Store Locator screen in List view
		# 1. Includes verification of left arrow sign and "H-E-B" text on left hand of action bar
		# 2. "Map" and "List" icon displayed in middle of navigation bar
		# 3. List Icon should be selected / enabled
		# 4. Refine button on right-side of action bar
		# 5. Below Navigation bar Search Text field  and Target icon in bottom page
		# 6. Includes verification of map focus on searched <Texas City>
	When I select on a store from List View 
	Then I see Store Details screen of cold user
	# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
	# 2. Includes View Weekly Ad, See Store Features link
	# 3. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)	
		
@Priority1 @StoreLocator @TC012_SL_HU
Scenario: SL_Hot_Verify user can navigate into store locator select a store and select store phone number
	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of button "Refine" in Top right corner
	When I click on List View icon
	When I select on a store from List View 
	Then I see Store Details screen of hot user
		# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
		# 2. Includes Phone Number link
		# 3. Includes Set as your Store link / My H-E-B store link
		# 4. Includes View Weekly Ad, See Store Features link
		# 5. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	When I click on store phone number
	Then I see a Pop Up as "About to call"
	Then I click on cancel 
	Then I click on Store Locator button
	Then I click on Map view icon 
	When I select on a store from Map View 
	Then I see White information bubble
	When I click on white information bubble
	When I click on store phone number
	Then I see a Pop Up as "About to call"
	When I click on OK
	Then ********add
		# 1. Includes displaying the store phone number in Dialer screen
		
@Priority1 @StoreLocator @TC013_SL_HU
Scenario: SL_Hot_Verify user can navigate into store locator and select weekly ad
	
	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of button "Refine" in Top right corner
	When I click on List View icon
	When I select on a store from List View 
	Then I see Store Details screen of hot user
		# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
		# 2. Includes Phone Number link
		# 3. Includes Set as your Store link / My H-E-B store link
		# 4. Includes View Weekly Ad, See Store Features link
		# 5. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	When I click on View Weekly Ad link
	Then I see weekly ad screen
	# 1. Includes verification of Back button + left arrow icon on left hand corner of action bar
	# 2. Page title as "Featured Deals"
	# 3. Categories button at Top right corner
	# 4. All deals displaying with radio button + image + deal name and details + Right arrow image
	# 5. Below navigation bar, display search bar with default text "search for products"
	# 6. Below Search bar display store address on left hand corner of header.
	# 7. GPS Icon + view another store button on right hand corner of header.
	# 8. SELECT ALL button on bottom left hand corner of page
	# 9. Add to List Text on bottom right corner
	
@Priority1 @StoreLocator @TC014_SL_HU
Scenario: SL_Hot_Verify user can navigate and select store directions from store locator

	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of button "Refine" in Top right corner
	When I click on List View icon
	When I select on a store from List View 
	Then I see Store Details screen of hot user
		# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
		# 2. Includes Phone Number link
		# 3. Includes Set as your Store link / My H-E-B store link
		# 4. Includes View Weekly Ad, See Store Features link
		# 5. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	When I click on Get Directions
	Then I see a Pop Up as "Get Directions /n This link will open in Maps"
	Then I click on cancel 
	Then I click on Store Locator button
	Then I click on Map view icon 
	When I select on a store from Map View 
	Then I see White information bubble
	When I click on white information bubble
	When I click on Get Directions
	Then I see a Pop Up as "Get Directions /n This link will open in Maps"
	When I click on "OK"
	Then I see Maps screen
	# 1. Includes displaying the Map Application
	
@Priority1 @StoreLocator @TC015_SL_HU
Scenario: SL_Hot_Verify user can navigate and select store through search and Target icons
	
	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of button "Refine" in Top right corner
	When I click on Search Field label
	Then I see keyboard
	When I enter <Texas City>
	When I click Search button on keyboard
	Then I see Store Locator screen in map view for the selected City
	# 1. Includes verification of left arrow sign and "H-E-B" text on left hand of action bar
		# 2. "Map" and "List" icon displayed in middle of navigation bar
		# 3. Map Icon should be selected / enabled
		# 4. Refine button on right-side of action bar
		# 5. Below Navigation bar Search Text field  and Target icon in bottom page
		# 6. Includes verification of map focus on searched <Texas City>
	When I click Target icon
	Then I see Store Locator screen in map view focusing on user's current location
	#  Includes verification of map accurately focused on user's current location
	When I enter <Texas Zip Code>
	When I click Search button on keyboard
	Then I see Store Locator screen in map view for the selected Zip Code
		# 1. Includes verification of left arrow sign and "H-E-B" text on left hand of action bar
		# 2. "Map" and "List" icon displayed in middle of navigation bar
		# 3. Map Icon should be selected / enabled
		# 4. Refine button on right-side of action bar
		# 5. Below Navigation bar Search Text field  and Target icon in bottom page
		# 6. Includes verification of map focus on searched <Texas Zip Code>
	When I select on a store from Map View 
	Then I see White information bubble
	When I click on white information bubble
	Then I see Store Details screen of Hot user
		# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
		# 2. Includes Phone Number link
		# 3. Includes Set as your Store link / My H-E-B store link
		# 4. Includes View Weekly Ad, See Store Features link
		# 5. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
		
@Priority1 @StoreLocator @TC016_SL_HU
Scenario: SL_Hot_Verify user can navigate and select store using Refine option
	
	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of Title as "Store Locator"
	When I select Refine button
	Then I see Refine Stores screen
	When I select at least 1 refinement icon
	Then I see "ON" icon in Blue color
	When I click on Select Done icon
	Then I see Store Locator screen in Map view with selected attribute refinements
		# 1. Includes verification of left arrow sign and "H-E-B" text on left hand of action bar
		# 2. "Map" and "List" icon displayed in middle of navigation bar
		# 3. Map Icon should be selected / enabled
		# 4. Refine button on right-side of action bar
		# 5. Below Navigation bar Search Text field  and Target icon in bottom page
		# 6. Includes verifying stores with selected attribute refinements
	When I click on List View icon
	Then I see Store Locator screen in List view
		# 1. Includes verification of left arrow sign and "H-E-B" text on left hand of action bar
		# 2. "Map" and "List" icon displayed in middle of navigation bar
		# 3. List Icon should be selected / enabled
		# 4. Refine button on right-side of action bar
		# 5. Below Navigation bar Search Text field  and Target icon in bottom page
	When I select on a store from List View 
	Then I see Store Details screen of Hot user
		# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
		# 2. Includes Phone Number link
		# 3. Includes Set as your Store link / My H-E-B store link
		# 4. Includes View Weekly Ad, See Store Features link
		# 5. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	