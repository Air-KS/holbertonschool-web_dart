int getPoints(Map<String, int> team) {
  return (team['Free throws'] ?? 0) * 1 +
         (team['2 pointer'] ?? 0) * 2 +
         (team['3 pointer'] ?? 0) * 3;
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
