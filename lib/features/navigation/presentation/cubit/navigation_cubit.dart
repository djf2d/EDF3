import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationCubitState> {
  NavigationCubit()
      : super(
          const NavigationCubitState(currentScreenIndex: 0),
        );

  void changeScreen(int index) =>
      emit(NavigationCubitState(currentScreenIndex: index));
}
