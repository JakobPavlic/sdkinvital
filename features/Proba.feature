Feature: Dostop do bloga iz domače strani

Scenario: Uporabnik pride na domačo stran in pritisne na link do bloga

Given I am on the KinVital homepage
When I follow "Blog"
Then I should see "Tko je blog"
