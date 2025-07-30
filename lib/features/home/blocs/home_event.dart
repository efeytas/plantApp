abstract class HomeEvent {}

class SubscriptionOptionSelected extends HomeEvent {
  final int index;
  SubscriptionOptionSelected(this.index);
}