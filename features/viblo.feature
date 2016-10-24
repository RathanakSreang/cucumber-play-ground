@viblo
Feature: Search Viblo Site
As a friend of Rathanak
I heard he talk about a site which sharing IT knowledge name Viblo.
I want to check it out. However, I forget the url of the site, so I want search in google.
And I hope I can find the site and explore some of Rathanak's awesome articles.

Scenario: Search viblo site in google
When I go to "google" homepage
Then I should see page title "Google"
Then I fill keyword "Viblo" in "google" search field
And  I click on search button
Then I should see Viblo site in the first top result of google search
And  I take a screenshot "google_result_page"

Scenario: Search article in viblo
When I go to "viblo" homepage
Then I should see page title "Viblo"
Then I click sign in
And  I fill email "youremail@email.com" and password "1234567890"
And  I click login
Then I click on search icon
And  I fill keyword "rathanak" in "viblo" search field
Then I press enter key
Then I should see Rathanak's articles
And  I take a screenshot "viblo_result_page"
