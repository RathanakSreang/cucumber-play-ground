@social-building
Feature: Post on social network
As a lazy developer, I have few friends only.
And I want to have more friends by using social network.
So on every Friday, I want to write a post which ask my friends on social network to have some drink at night.
But I always forgot, then I write a script for post my message on social network for ask my friends to have a drink.

Scenario: Login and post on google plus
When I visit google plus homepage
And  I click on google plus sign link
And  I fill my google plus email
Then I click on next button
And  I fill my google plus password
Then I click sign in to my google plus account
And  I visit google plus homepage
Then I click on add new post on google plus
And  I write my new google plus post
Then I click submit my post on google plus
And  I take a google plus screenshot "google_plus_new_post"

Scenario: Login and post on facebook
When I visit facebook homepage
And  I fill my facebook email
And  I fill my facebook password
And  I click login to facebook
And  I write my new post on facebook
Then I click submit my post on facebook
And  I take a facebook screenshot "facebook_new_post"
