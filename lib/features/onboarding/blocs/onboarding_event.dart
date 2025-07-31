abstract class OnboardingEvent {}

class PageChanged extends OnboardingEvent {
  final int pageIndex;

  PageChanged(this.pageIndex);

}

class OnboardingStarted extends OnboardingEvent {
  OnboardingStarted();
}