import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenStateABS> {
  HomeScreenCubit() : super(const HomeScreenState());
}
