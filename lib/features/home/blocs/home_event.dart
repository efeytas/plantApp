abstract class HomeEvent {}

class SubscriptionOptionSelected extends HomeEvent {
  final int index;
  SubscriptionOptionSelected(this.index);  
}

class PaywallVisibilityToggled extends HomeEvent {
  final bool isVisible;
  PaywallVisibilityToggled(this.isVisible);
}