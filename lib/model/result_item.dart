enum EGame {
  poker("Poker"),
  baccarat("Baccarat"),
  brag("Brag"),
  badugi("Badugi"),
  five("Five"),
  more("More than five");

  const EGame(this.text);
  final String text;
}

enum EOpponents {
  one("One"),
  two("Two"),
  three("Three"),
  four("Four"),
  five("Five"),
  more("More than five");

  const EOpponents(this.text);
  final String text;
}

enum EStrategize {
  aggressive("Aggressive"),
  conservative("Conservative"),
  balanced("Balanced"),
  none("None");

  const EStrategize(this.text);
  final String text;
}

enum EBeginning {
  novice("Novice"),
  begginer("Begginer"),
  intermediate("Intermediate"),
  advanced("Advanced");

  const EBeginning(this.text);
  final String text;
}

enum EBetting {
  doubled("Doubled the bet"),
  minimum("Set the minimum"),
  raised("Raised the bet");

  const EBetting(this.text);
  final String text;
}

enum EFactor {
  successful("Successful bluffs"),
  winning("Winning card combinations"),
  underestimating("Underestimating opponents"),
  idr("I do not remember");

  const EFactor(this.text);
  final String text;
}

enum EOutcome {
  winning("Winning"),
  loss("Loss"),
  draw("Draw");

  const EOutcome(this.text);
  final String text;
}

class ResultItem {
  ResultItem();
  factory ResultItem.fromJson(Map<String, dynamic> parsedJson) {
    return ResultItem();
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}
