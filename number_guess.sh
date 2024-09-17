#!/bin/bash

# Define the PSQL variable
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Function to check if the username exists
check_user() {
  USERNAME=$1
  USER_INFO=$($PSQL "SELECT username, games_played, best_game FROM users WHERE username='$USERNAME'")
  echo "$USER_INFO"
}

# Function to add a new user to the database
add_user() {
  USERNAME=$1
  $PSQL "INSERT INTO users (username, games_played, best_game) VALUES ('$USERNAME', 0, NULL)" > /dev/null
}

# Function to update user stats
update_user_stats() {
  USERNAME=$1
  GUESSES=$2
  CURRENT_BEST=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME'")
  if [ -z "$CURRENT_BEST" ] || [ $GUESSES -lt $CURRENT_BEST ]; then
    $PSQL "UPDATE users SET best_game=$GUESSES WHERE username='$USERNAME'" > /dev/null
  fi
  $PSQL "UPDATE users SET games_played=games_played + 1 WHERE username='$USERNAME'" > /dev/null
}

# Function to validate the guess
validate_guess() {
  if [[ $1 =~ ^[0-9]+$ ]]; then
    echo 1
  else
    echo 0
  fi
}

# Main script
echo "Enter your username:"
read USERNAME
USER_INFO=$(check_user $USERNAME)

if [ -n "$USER_INFO" ]; then
  IFS="|" read -r USERNAME GAMES_PLAYED BEST_GAME <<< "$USER_INFO"
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
else
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  add_user $USERNAME
fi

SECRET_NUMBER=$((RANDOM % 1000 + 1))
GUESSES=0

echo "Guess the secret number between 1 and 1000:"
while true; do
  read GUESS
  VALID=$(validate_guess $GUESS)

  if [ $VALID -eq 0 ]; then
    echo "That is not an integer, guess again:"
  elif [ $GUESS -lt $SECRET_NUMBER ]; then
    echo "It's higher than that, guess again:"
  elif [ $GUESS -gt $SECRET_NUMBER ]; then
    echo "It's lower than that, guess again:"
  else
    GUESSES=$((GUESSES + 1))
    echo "You guessed it in $GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
    update_user_stats $USERNAME $GUESSES
    break
  fi
  GUESSES=$((GUESSES + 1))
done
