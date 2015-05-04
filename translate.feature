# encoding: Windows-1251

Feature: Testing Translation from English To Russian in Google Translate
Background:
    Given I am on a Google Translate page in Firefox

Scenario: Thanslate a word 'friend'
    When I write 'friend'
    Then I should see 'друг'


Scenario: Thanslate phrase 'I love mum'
    When I write 'I love mum'
    Then I should see 'Я люблю маму'


Scenario: Thanslate phrase 'ami'
    When I write 'ami'
    Then I should see 'AMI'
