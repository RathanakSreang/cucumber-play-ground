@social-building
Feature: Post on social network
As a developer, I am a busy guy.
I want to stay connect to my friend.
And I want to call my friend to handout on Friday night.
But I always forgot, so I write a script for post on social network for ask my to have a drink.

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
And  I take a facebook screenshot "google_plus_new_post"