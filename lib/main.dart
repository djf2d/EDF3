import 'package:edf3/features/navigation/presentation/cubit/navigation_cubit.dart';
import 'package:edf3/features/home_screen/presentation/widgets/my_app_bar.dart';
import 'package:edf3/features/navigation/presentation/widgets/navigation_widget.dart';
import 'package:edf3/utils/app_router.dart';
import 'package:edf3/utils/consts.dart';
import 'package:edf3/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainMenu());
}

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationCubit(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.mainBackGroundDecoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const MyAppBar(
          name: "Omar",
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            screens[context.watch<NavigationCubit>().state.currentScreenIndex],
            const Align(
              alignment: Alignment.bottomCenter,
              child: CustomNavBarRow(),
            ),
          ],
        ),
      ),
    );
  }
}
