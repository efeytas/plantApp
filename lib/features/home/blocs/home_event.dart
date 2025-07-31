abstract class HomeEvent {}

class SubscriptionOptionSelected extends HomeEvent {
  final int index;
  SubscriptionOptionSelected(this.index);  
}

class PaywallVisibilityToggled extends HomeEvent {
  final bool isVisible;
  PaywallVisibilityToggled(this.isVisible);
}

class LoadHomeData extends HomeEvent {}

class FetchMoreCategories extends HomeEvent {
  final int currentPage;
  final int pageSize;
  FetchMoreCategories(
    {required this.currentPage, required this.pageSize}
  );
}
