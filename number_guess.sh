#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guessing_game -t --no-align -c"
echo -e "\nEnter your username:\n"
read USERNAME
USERNAME_LENGTH=${#USERNAME}
if [[ $USERNAME_LENGTH -gt 22 || $USERNAME_LENGTH -le 0 ]]
 then
 echo "Username is incorrect length"
 exit
fi
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
GAME_COUNT=$($PSQL "SELECT COUNT(game_id) FROM games WHERE username = '$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(score) FROM games WHERE username = '$USERNAME'")

if [[ $GAME_COUNT -eq 0 ]]
 then
 echo "Welcome, $USERNAME! It looks like this is your first time here."
else 
 echo "Welcome back, $USERNAME! You have played $GAME_COUNT games, and your best game took $BEST_GAME guesses." 
fi

EMPTY_TABLE=$($PSQL "TRUNCATE current_game")
echo "Guess the secret number between 1 and 1000:"
COUNT=0
while [[ $GUESS -ne $SECRET_NUMBER ]]
do
read GUESS
if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
  echo "That is not an integer, guess again:"
elif [[ $GUESS -gt $SECRET_NUMBER ]]
 then
 echo "It's lower than that, guess again:"
 (( COUNT ++ ))
elif [[ $GUESS -lt $SECRET_NUMBER ]]
 then
 echo "It's higher than that, guess again:"
 (( COUNT ++ ))
fi 
done

GUESS_COUNT=$(( COUNT + 1 ))

INSERT_GAME=$($PSQL "INSERT INTO games(username, score) VALUES('$USERNAME', $GUESS_COUNT)")

echo "You guessed it in "$GUESS_COUNT" tries. The secret number was "$SECRET_NUMBER". Nice job!"
