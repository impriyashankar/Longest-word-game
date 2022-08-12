
# Rails Longest word game 

> The goal of this challenge is to write a simplified version of the longest word game from the terminal where:

- You are given a random set of letters.
- You have to enter the longest english word you can find using only letters in the grid.
- After typing your answer, you get your score combined with the time you took, and eventually an error message if you failed.

## Table of Contents
* [General Info](#general-information)
* [Technologies Used](#technologies-used)
* [Constraints](#constraints)


## General Information
Here is how this should work, when running ruby lib/interface.rb:

********* Welcome to the longest word-game! *********<br>
Here is your grid:<br>
Q F M R K L I T P<br>
*****************************************************<br>
What is your longest word?<br>
lift<br>
******** Now your results ********<br>
Your word: lift<br>
Time Taken to answer: 12.07916<br>
Your score: 3.194722666666667<br>
Message: Well Done!<br>
This challenge will let you access a web-API, and parse JSON data returned by this API.

The UI of the game will have
- A page to display the game settings (random letters), with a form for the user to type a word. A button to submit this form.
- A page receiving this form, computing the user score and displaying it.


## Technologies Used
- Ruby on Rails


## Constraints

- Your grid must be a random grid where it's possible to embed the same characters multiple times.
- Make sure you are validating that 1) your word is an actual English word, and 2) that every letter in your word appears in the grid (remember you can only use each letter once).
- If the word is not valid or is not in the grid, the score will be 0 (and should be accompanied by a message to the player explaining why they didn't score any points).
- The score depends on the time taken to answer, plus the length of the word you submit. The longer the word and the quicker the time, the better the score! Feel free to invent your own penalty rules too!
