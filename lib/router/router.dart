import 'package:flutter/material.dart';
import 'package:flutter_demo_lhw/views/Bottom/Button.dart';
import 'package:flutter_demo_lhw/views/Form/Form.dart';
import 'package:flutter_demo_lhw/views/Home.dart';
import 'package:flutter_demo_lhw/views/Input/Input.dart';
import 'package:flutter_demo_lhw/views/Picker/Picker.dart';
import 'package:flutter_demo_lhw/views/routerJump/routerJump.dart';
import 'package:flutter_demo_lhw/views/routerJump/routerJump1.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter _router = GoRouter(

    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
      GoRoute(
        path: '/button',
        builder: (BuildContext context, GoRouterState state) {
          return const ButtonPage();
        },
      ),
      GoRoute(
          path: '/form',
          pageBuilder: (BuildContext context, GoRouterState state) =>
              CustomTransitionPage(
                  child: FormPage(),
                  transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          Widget child) =>
                      SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(-1,0),
                          end: Offset.zero,
                        ).animate(animation),
                        child: child,
                      ))
          // builder: (BuildContext context, GoRouterState state) {
          //   return const FormPage();
          // },
          ),
      GoRoute(
        path: '/picker',
        builder: (BuildContext context, GoRouterState state) {
          return const PickerPage();
        },
      ),
      GoRoute(
        path: '/input',
        builder: (BuildContext context, GoRouterState state) {
          return const InputPage();
        },
      ),
      GoRoute(
        name:'routerJump',
        path: '/routerJump',
        builder: (BuildContext context, GoRouterState state) {
          return const RouterJump();
        },
      )
,
      GoRoute(
        name: 'routerJump1',
        path: '/routerJump1',
        builder: (BuildContext context, GoRouterState state) {
          return const RouterJump1();
        },
      )


    ],
  );

  get router => _router;
}
