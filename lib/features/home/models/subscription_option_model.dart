class SubscriptionOptionModel {
  final String title;
  final String description;
  bool isSelected;
  final bool isPromoted;
  final String? promotionText;

  SubscriptionOptionModel({
    required this.title,
    required this.description,
    this.isSelected = false,
    this.isPromoted = false,
    this.promotionText,
  });

}
