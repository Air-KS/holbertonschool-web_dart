int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  // Calculer les points totaux pour l'équipe A
  int totalPointsTeamA = (teamA['Free throws'] ?? 0) * 1 +
                         (teamA['2 pointers'] ?? 0) * 2 +
                         (teamA['3 pointers'] ?? 0) * 3;

  // Calculer les points totaux pour l'équipe B
  int totalPointsTeamB = (teamB['Free throws'] ?? 0) * 1 +
                         (teamB['2 pointers'] ?? 0) * 2 +
                         (teamB['3 pointers'] ?? 0) * 3;

  // Comparer les points et retourner le résultat
  if (totalPointsTeamA > totalPointsTeamB) {
    return 1;
  } else if (totalPointsTeamA < totalPointsTeamB) {
    return 2;
  } else {
    return 0;
  }
}
