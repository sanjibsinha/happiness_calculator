class HappinessCalculator {
  final int? greed;
  final int? gratitude;
  final int? diligence;

  int? _happinessIndex;

  HappinessCalculator({
    required this.greed,
    required this.gratitude,
    required this.diligence,
  });

  String calculateHappiness() {
    _happinessIndex = (gratitude! + diligence!) - greed!;
    return _happinessIndex.toString();
  }

  String getResult() {
    if (_happinessIndex! <= 50) {
      return 'Unhappy';
    } else {
      return 'Happy';
    }
  }

  String getAdvice() {
    if (_happinessIndex! <= 50) {
      return 'Please reduce greed and increase gratitude and dligence.';
    } else {
      return 'You are a Happy person. Study old philosophers, and stay cool.';
    }
  }
}
