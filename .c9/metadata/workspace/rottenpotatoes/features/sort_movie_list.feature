{"filter":false,"title":"sort_movie_list.feature","tooltip":"/rottenpotatoes/features/sort_movie_list.feature","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":31,"column":19},"action":"insert","lines":["Feature: display list of movies sorted by different criteria"," ","  As an avid moviegoer","  So that I can quickly browse movies based on my preferences","  I want to see movies sorted by title or release date","","Background: movies have been added to database","  ","  Given the following movies exist:","  | title                   | rating | release_date |","  | Aladdin                 | G      | 25-Nov-1992  |","  | The Terminator          | R      | 26-Oct-1984  |","  | When Harry Met Sally    | R      | 21-Jul-1989  |","  | The Help                | PG-13  | 10-Aug-2011  |","  | Chocolat                | PG-13  | 5-Jan-2001   |","  | Amelie                  | R      | 25-Apr-2001  |","  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |","  | The Incredibles         | PG     | 5-Nov-2004   |","  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |","  | Chicken Run             | G      | 21-Jun-2000  |","","  And I am on the RottenPotatoes home page","","Scenario: sort movies alphabetically","  When I follow \"Movie Title\"","  Then I should see \"Chocolat\" before \"The Incredibles\"","  # your steps here","","Scenario: sort movies in increasing order of release date","  When I follow \"Release Date\"","  Then I should see \"The Terminator\" before \"Chocolat\"","  # your steps here"],"id":1}]]},"ace":{"folds":[],"scrolltop":296,"scrollleft":0,"selection":{"start":{"row":23,"column":12},"end":{"row":23,"column":12},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":16,"state":"start","mode":"ace/mode/gherkin"}},"timestamp":1479627018509,"hash":"375dfd3cc8da5fc2a81ab8b0189b89a3d8beabd4"}