part of 'navigation_cubit.dart';

class NavigationCubitState extends Equatable {
  final int currentScreenIndex;
  const NavigationCubitState({required this.currentScreenIndex});

  @override
  List<Object> get props => [currentScreenIndex];
}
