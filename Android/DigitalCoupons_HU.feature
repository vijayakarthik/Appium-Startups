﻿Feature: Digital Coupons feature
###adding this for testing

General comments : 

1) Scenario names are repeated in few testcases . Please update it as unique text which is mandatory as like Test case ID’s 
e.g @TC07_DC_HU and @TC08_DC_HU  
2) Include the name as page validation in the scenario name where we are validating the page elements the app 



  @ReviewedOK	
  @Priority3 @DigitalCoupons @TC01_DC_HU
  Scenario: DC_Hot_Verify Dialog Pop Up When Selecting Tabs
    Given I am a hot user but not signed for Digital Coupons
    	# Includes steps
    	# 1. open application and
    	# 2. Register a new user without signing up for DC
    When I select Coupons from aisle
    Then I see Coupons page
    	# Include verification of title - Coupons
    When I click View available coupons
    Then I see All Coupons page
    	# Include verification of title - ALL COUPONS
    When I click first coupon row
    Then I verify Coupons Details page
    	# Include verification of title - Coupons Details
    When I select device back button
    Then I see All Coupons page
    	# Include verification of title - ALL COUPONS
    When I select Selected Savings tab
    Then I should see pop us Sign Up or Log in
    	# 3. An "Ok" button.
    When I select Savings-To-Date tab
    Then I should see pop us Sign Up or Log in
  	# Includes verification of
  	# 1. Header: "Sign Up or Log in"
  	# 2. Dialogue box reads "Please sign up or log in to access this feature."
  	# 3. An "Ok" button.
    
    @ReviewedOK
    @Priority2 @DigitalCoupons @TC02_DC_HU
    Scenario: DC_Hot_Not Enrolled_All Coupons Apply Filters
    Given I am a hot user but not signed for Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user without signing up for DC
    When I select Coupons from aisle
    Then I see Coupons page
    # Include verification of title - Coupons
    When I click View available coupons
    Then I see All Coupons page
    # Include verification of title - ALL COUPONS
    When I select Filter icon
    Then I see Scrolling selector list appears with "Default" selected options
    When I select "Newest" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Newest"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Newest" selected options
    When I select "Highest Value" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Highest Value"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Highest Value" selected options
    When I select "Expiration Date" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Expiration Date"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Expiration Date" selected options
    When I select "Popularity" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Popularity"

    @ReviewedOK
    @Priority2 @DigitalCoupons @TC03_DC_HU
    Scenario: DC_Hot_Not Enrolled_All Coupons Category Spinner
    Given I am a hot user but not signed for Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user without signing up for DC
    When I select Coupons from aisle
    Then I see Coupons page
    # Include verification of title - Coupons
    When I click View available coupons
    Then I see All Coupons page
    # Include verification of title - ALL COUPONS
    When I select spinner from action bar
    # Action bar will be indicated by grey triangle to the right of category name
    Then I see List of categories
    #1.Includes verification of coupon categories and their coupon count.
    When I click category name
    Then I see Coupons screen
    # 1.Selected category name is displayed the action bar title
    # 2.Coupons displayed on screen are only those within selected category
   
   @ReviewedOK 
    @Priority2 @DigitalCoupons @TC04_DC_HU
    Scenario: DC_Hot_Not Enrolled_All Coupons Category Search
    Given I am a hot user but not signed for Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user without signing up for DC
    When I select Coupons from aisle
    Then I see Coupons page
    # Include verification of title - Coupons
    When I click View available coupons
    Then I see All Coupons page
    # Include verification of title - ALL COUPONS
    When I click on "Search Coupons" field
    Then Keyboard appears at bottom of screen
    When I click on Back button
    Then Keyboard disappears
    When I click on "Search Coupons" field
    Then Keyboard appears at bottom of screen
    When I type search terms
    And I click on Search button in keyboard
    Then I see Coupons page is refreshed to display coupons related to searched term
    When I click on x icon to the right of Search field
    Then Search term is cleared
    And I see placeholder text as "Search Coupons"
    And I see Coupons page is displayed as previously viewed
    # Verification of coupons page with prior to searching

    @ReviewedOK
    @Priority2 @DigitalCoupons @TC05_DC_HU
    Scenario: DC_Hot_Not Verified_Verification of Coupons details page
    Given I am a hot user but not signed for Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user without signing up for DC
    When I select Coupons from aisle
    Then I see Coupons page
    # Include verification of title - Coupons
    When I click View available coupons
    Then I see All Coupons page
    # Include verification of title - ALL COUPONS
    When I click first coupon row
    Then I verify Coupons Details page
    # 1.Includes steps for verifying Hamburger Icon, Page Title, share button
    # 2.Product image
    # 3.coupon savings/value
    # 4.coupon description
    # 5.coupon  expiration date.
    # 6.Login button is displayed.
    # 7.Coupon Terms (If applicable)
    # 8.Limits per Customer
    When I click Share button
    Then I see social apps
	  #1.Includes Facebook,Twitter,Email
  	#2.Social apps must be installed on the device to be presented as an option.
  	
    @ReviewedOK
    @Priority2 @DigitalCoupons @TC06_DC_HU
    Scenario: DC_Hot_Not Verified_Coupons Apply Filter On All Coupons
    Given I am a hot user but has not yet verified their mobile Phone# for Digital Coupons.
    # Includes steps
    # 1. open application and
    # 2. Register a new user with signing up for DC
    When I select Coupons from aisle
    Then I see Coupons page
    # Include verification of title - Coupons
    When I click View available coupons
    Then I see All Coupons page
    # Include verification of title - ALL COUPONS
    When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Don't reply to text message Pop up "Please check your mobile phone now and reply to the H-E-B text 	message to activate your H-E-B Digital coupons."
    When I select Filter icon
    Then I see Scrolling selector list appears with "Default" selected options
    When I select "Newest" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Newest"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Newest" selected options
    When I select "Highest Value" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Highest Value"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Highest Value" selected options
    When I select "Expiration Date" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Expiration Date"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Expiration Date" selected options
    When I select "Popularity" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Popularity"

    @ReviewedOK
    @Priority2 @DigitalCoupons @TC07_DC_HU
    Scenario: DC_Hot_Not Verified_Coupons Category Spinner
    Given I am a hot user  but has not yet verified their mobile Phone# for Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user with signing up for DC
    When I select Coupons from aisle
    Then I see Coupons page
    # Include verification of title - Coupons
    When I click View available coupons
    Then I see All Coupons page
    # Include verification of title - ALL COUPONS
  	When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Don't reply to text message Pop up "Please check your mobile phone now and reply to the H-E-B text message to activate your H-E-B Digital coupons."
    When I select spinner from action bar
    # Action bar will be indicated by grey triangle to the right of category name
    Then I see List of categories
    #1.Includes verification of coupon categories and their coupon count.
    When I click category name
    Then I see Coupons screen
    # 1.Selected category name is displayed the action bar title
    # 2.Coupons displayed on screen are only those within selected category
    
    @Need to be changed
    @Priority2 @DigitalCoupons @TC08_DC_HU
    Scenario: DC_Hot_Not Verified_Coupons Category Spinner
    Given I am a hot user  but has not yet verified their mobile Phone# for Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user with signing up for DC
    When I select Coupons from aisle
    Then I see Coupons page
    # Include verification of title - Coupons
    When I click View available coupons
    Then I see All Coupons page
    # Include verification of title - ALL COUPONS
  	When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Don't reply to text message Pop up "Please check your mobile phone now and reply to the H-E-B text message to activate your H-E-B Digital coupons."
    When I click on "Search Coupons" field
    Then Keyboard appears at bottom of screen
    When I click on Back button
    Then Keyboard disappears
    When I click on "Search Coupons" field
    Then Keyboard appears at bottom of screen
    When I type search terms
    And I click on Search button in keyboard
    Then I see Coupons page is refreshed to display coupons related to searched term
    When I click on x icon to the right of Search field
    Then Search term is cleared
    And I see placeholder text as "Search Coupons"
    And I see Coupons page is displayed as previously viewed
    # Verification of coupons page with prior to searching
    
### comments : Same scenario name for both 07 & 08 
 
    @ReviewedOK
    @Priority2 @DigitalCoupons @TC09_DC_HU
    Scenario: DC_Hot_Not Verified_Coupons Resend Confirmation
    Given I am a hot user  but has not yet verified their mobile Phone# for Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user with signing up for DC
    When I select Coupons from aisle
    Then I see Coupons page
    # Include verification of title - Coupons
    When I click View available coupons
    Then I see All Coupons page
    # Include verification of title - ALL COUPONS
  	When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Don't reply to text message Pop up "Please check your mobile phone now and reply to the H-E-B text message to activate your H-E-B Digital coupons."
    When I click on "Resend Confirmation" button
    Then I see a display confirmation dialog box
    #Includes cancel and ok button
    When I select "OK" button
    Then I see text changes for 'Resend confirmation' button
    #Includes 'Resend confirmation' button will be changed to Confirmation resent.
    #Include verification of sms sent to the mobile number associated with the login account.
    When I select any Copoun
    Then I see coupon detail screen with coupon detail
    #Includes a disabled red button with text "Confirmation resent"
    
    @ReviewedOK
    @Priority2 @DigitalCoupons @TC10_DC_HU
    Scenario: DC_Hot_Not Verified_All Coupons Share on Coupon Details Page
    Given I am a hot user but has not yet verified their mobile Phone# for Digital Coupons.
    # Includes steps
    # 1. open application and
    # 2. Register a new user with signing up for DC
    When I select Coupons from aisle
    Then I see Coupons page
    # Include verification of title - Coupons
    When I click View available coupons
    Then I see All Coupons page
    # Include verification of title - ALL COUPONS
	  When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Don't reply to text message Pop up "Please check your mobile phone now and reply to the H-E-B text 	message to activate your H-E-B Digital coupons."
    When I click first coupon row
    Then I verify Coupons Details page
    When I click Share button
    Then I see social apps
    #1.Includes Facebook,Twitter,Email
    #2.Social apps must be installed on the device to be presented as an option.

    @ReviewedOK
    @Priority2 @DigitalCoupons @TC11_DC_HU
    Scenario: DC_Hot_Not Verified_Coupons Apply Filter On All Coupons
    Given I am a hot user and enrolled in Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user with enrolled up for DC
    When I select Coupons from aisle
    Then I see Coupons page
    # Include verification of title - Coupons
    When I click View available coupons
    Then I see All Coupons page
    # Include verification of title - ALL COUPONS
    When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Includes step to activate H-E-B Digital coupons
    When I select Filter icon
    Then I see Scrolling selector list appears with "Default" selected options
    When I select "Newest" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Newest"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Newest" selected options
    When I select "Highest Value" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Highest Value"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Highest Value" selected options
    When I select "Expiration Date" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Expiration Date"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Expiration Date" selected options
    When I select "Popularity" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Popularity"
@ReviewedOK
      @Priority2 @DigitalCoupons @TC12_DC_HU
    Scenario: DC_Hot_All Coupons Category Spinner
    Given I am a hot user and enrolled in Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user with enrolled up for DC
    When I select Coupons from aisle
    Then I see Coupons page
    # Include verification of title - Coupons
    When I click View available coupons
    Then I see All Coupons page
    # Include verification of title - ALL COUPONS
    When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Includes step to activate H-E-B Digital coupons
	  When I select spinner from action bar
    # Action bar will be indicated by grey triangle to the right of category name
    Then I see List of categories
    #1.Includes verification of coupon categories and their coupon count.
    When I click category name
    Then I see Coupons screen
    # 1.Selected category name is displayed the action bar title
    # 2.Coupons displayed on screen are only those within selected category
	 
    
    @ReviewedOK
    @Priority2 @DigitalCoupons @TC13_DC_HU
    Scenario: DC_Hot_All Coupons Category Search
    Given I am a hot user and enrolled in Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user with enrolled up for DC
    When I select Coupons from aisle
    Then I see Coupons page
    # Include verification of title - Coupons
    When I click View available coupons
    Then I see All Coupons page
    # Include verification of title - ALL COUPONS
    When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Includes step to activate H-E-B Digital coupons
    When I click on "Search Coupons" field
    Then Keyboard appears at bottom of screen
    When I click on Back button
    Then Keyboard disappears
    When I click on "Search Coupons" field
    Then Keyboard appears at bottom of screen
    When I type search terms
    And I click on Search button in keyboard
    Then I see Coupons page is refreshed to display coupons related to searched term
    When I click on x icon to the right of Search field
    Then Search term is cleared
    And I see placeholder text as "Search Coupons"
    And I see Coupons page is displayed as previously viewed
    # Verification of coupons page with prior to searching
        
    @ReviewedOK
    @Priority2 @DigitalCoupons @TC14_DC_HU
    Scenario: DC_Hot_All Coupons Share On Coupon Details Page
    Given I am a hot user and enrolled in Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user with enrolled up for DC
    When I select Coupons from aisle
    Then I see Coupons page
    # Include verification of title - Coupons
    When I click View available coupons
    Then I see All Coupons page
    # Include verification of title - ALL COUPONS
    When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Includes step to activate H-E-B Digital coupons
    When I click first coupon row
    Then I verify Coupons Details page
    # 1.Includes steps for verifying Hamburger Icon, Page Title, share button
    # 2.Product image
    # 3.coupon savings/value
    # 4.coupon description
    # 5.coupon  expiration date.
    # 6.Register and Login buttons are displayed.
    # 7.Coupon Terms (If applicable)
    When I click Share button
    Then I see social apps
    #1.Includes Facebook,Twitter,Email
    #2.Social apps must be installed on the device to be presented as an option.
  
    
	
@Reviewed_and_Changed
		
    @Priority2 @DigitalCoupons @TC15_DC_HU
    Scenario: DC_Hot_Coupons View Coupon Details on Selected Savings tab
    Given I am a hot user and enrolled in Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user with enrolled up for DC
    When I select Coupons from aisle
    Then I see Coupons page
    # Include verification of title - Coupons
    When I click on "Selected savings"
    Then I see "Selected savings" screen
    # Includes verification of User's clipped coupons.
    When I click first coupon row
    Then I verify Coupons Details page
    When I click on Back button
    Then I see previously selected tab

######comments : For Hot User who has enrolled for coupons will not get the signup page again . Hence removed those steps 


@Need to be changed 
    @Priority2 @DigitalCoupons @TC16_DC_HU
    Scenario: DC_Hot_Coupon Selected Savings Coupon Details Page
     Given I am a hot user and enrolled in Digital Coupons
    Given I am a hot user and enrolled in Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user with enrolled up for DC
    When I select Coupons from aisle
    Then I see Coupons page
    # Include verification of title - Coupons
    When I click View available coupons
    Then I see All Coupons page
    # Include verification of title - ALL COUPONS
    When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Includes step to activate H-E-B Digital coupons
    When I click on "Selected savings"
    Then I see "Selected savings" screen
    # Includes verification of User's clipped coupons.
    When I click first coupon row
    Then I verify Coupons Details page
    When I click on Back button
    Then I see previously selected tab
    When I click Share button
    Then I see social apps
######comments : For Hot User who has enrolled for coupons will not get the signup page again . Hence removed those steps 
