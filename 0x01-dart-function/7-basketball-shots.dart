int getPoints(Map<String, int> team) {
  int points = 0;
  points += (team['Free throws'] ?? 0) * 1;
  points += (team['2 pointer'] ?? 0) * 2;
  points += (team['3 pointer'] ?? 0) * 3;
  return points;
}

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = getPoints(teamA);
  int teamBPoints = getPoints(teamB);

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}
