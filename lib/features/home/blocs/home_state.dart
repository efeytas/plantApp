class HomeState {
  final int selectedSubscriptionIndex;

  HomeState({this.selectedSubscriptionIndex = 0});

  HomeState copyWith({int? selectedSubscriptionIndex}) {
    return HomeState(
      selectedSubscriptionIndex: selectedSubscriptionIndex ?? this.selectedSubscriptionIndex,
    );
  }
}