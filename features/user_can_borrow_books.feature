@javascript
Feature: User can borrow books

  Background:
    Given Library has these books
      | title                | author        | year | edition | publisher      | quantity |
      | C++ Primer Plus      | Stephen Prata | 2011 | 6       | Addison-Wesley | 1       |
      | Clean Code           | Robert Martin | 2008 | 1       | Prentice Hall  | 2       |
      | Domain-Driven Design | Eric J. Evans | 2003 | 1       | Addison Wesley | 0       |

  Scenario: User borrows the book
    Given there is a user logged in
    When I open landing page
    And I borrow "Clean Code" book
    Then I can see "borrowed successfully"
    And I can see "Clean Code" remaining amount is 1

  Scenario: User borrows the book without login
    When I open landing page
    And I borrow "Clean Code" book
    Then I can see "You need to sign in or sign up before continuing."

  Scenario: User borrows no remaining quantity book
    Given there is a user logged in
    When I open landing page
    And I borrow "Domain-Driven Design" book
    Then I can see "Book has no remaining quantity"

  Scenario: User cannot borrow the same book
    Given there is a user logged in
    When I open landing page
    And I borrow "Clean Code" book
    And I borrow "Clean Code" book
    Then I can see "You cannot borrow the same book"

