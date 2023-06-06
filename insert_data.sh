#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

#CSV
#year,round,winner,opponent,winner_goals,opponent_goals
cat games.csv | while IFS="," read -r YEAR ROUND WINNER OPPONENT WINGOAL OPPGOAL
do
  if [[ $YEAR != 'year' ]]
    then
    WINID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    if [[ -z $WINID ]]
    then
      INSERT=$($PSQL "INSERT INTO teams (name) VALUES ('$WINNER')")
      WINID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    fi
    if [[ -z $OPPID ]]
    then
      INSERT=$($PSQL "INSERT INTO teams (name) VALUES ('$OPPONENT')")
      OPPID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    fi
    INSERT=$($PSQL "INSERT INTO games (year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES ($YEAR,'$ROUND',$WINID,$OPPID,$WINGOAL,$OPPGOAL)")
  fi
done

