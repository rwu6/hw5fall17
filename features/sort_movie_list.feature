Feature: display list of movies sorted by different criteria
 
  As an avid moviegoer
  So that I can quickly browse movies based on my preferences
  I want to see movies sorted by title or release date

Background: movies have been added to database
  
  Given the following movies have been added to RottenPotatoes: 
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | The Incredibles         | PG     | 5-Nov-2004   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |

  And I am on the RottenPotatoes home page

Scenario: sort movies alphabetically
  # your scenario here
  When I check the ratings:"G,R,PG-13,PG"
  And I press "Refresh"
  Then I look at "Movie Title"
  And I should see "Amelie" is on the top
  And I should see "Aladdin" is on the second top
  
Scenario: sort movies in increasing order of release date
  When I check the ratings:"G,R,PG-13,PG"
  And I press "Refresh"
  Then I look at "Release Time"
  And I should see "6-Apr-1968" is on the top
  And I should see "12-Jun-1981" is on the second top
  # your scenario here

