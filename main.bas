PRINT "Hello and welcome to the number guessing game. Type 1 for easy mode, where you have to guess a number between 1 and 5. Type 2 for medium, where you guess a number between 1 and 10, and type 3 for hard mode, a number between 1 and 100."

INPUT GAME_MODE

IF GAME_MODE = 2 THEN
WINNING_VALUE = RND 
WINNING_VALUE = INT(WINNING_VALUE * 9) +1
PRINT "Welcome to medium mode! I am thinking of a number between 1 and 10. You have 5 guesses. Try and guess my number!"
GUESSES_COUNT = 5
END IF

IF GAME_MODE = 1 THEN
WINNING_VALUE = RND
WINNING_VALUE = INT (WINNING_VALUE * 5) +1
PRINT "Welcome to easy mode! I am thinking of a number between 1 and 5. You have 2 guesses. Try and guess my number!"
GUESSES_COUNT = 2
END IF

IF GAME_MODE = 3 THEN
WINNING_VALUE = RND
WINNING_VALUE = INT (WINNING_VALUE * 99) +1
PRINT "Welcome to hard mode! I am thinking of a number between 1 and 100. You have 10 guesses. Try and guess my number!"
GUESSES_COUNT = 10
END IF

WHILE WINNING_VALUE <> CURRENT_GUESS
  INPUT CURRENT_GUESS
  IF WINNING_VALUE = CURRENT_GUESS THEN
   PRINT "You won!"
   
  ELSE
   IF CURRENT_GUESS > WINNING_VALUE THEN
    PRINT "My number is lower than that."
    END IF
   IF CURRENT_GUESS < WINNING_VALUE THEN
    IF GUESSES_COUNT <> 0 THEN
     PRINT "My number is higher than that."
    END IF
   END IF
   GUESSES_COUNT = GUESSES_COUNT - 1
   IF GUESSES_COUNT = 0 THEN
    PRINT "You lose!"
    PRINT "I was thinking of " + STR$ (WINNING_VALUE) + "."
    END
   ELSE
    PRINT STR$(GUESSES_COUNT) + " guesses left!"
    PRINT "Try again!"
   END IF
  END IF
WEND
END
