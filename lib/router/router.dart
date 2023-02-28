import 'package:flutter/material.dart';
import 'package:flutter_demo_lhw/views/BottomSheet/BottomSheet.dart';
import 'package:flutter_demo_lhw/views/Button/Button.dart';
import 'package:flutter_demo_lhw/views/Dialog/Dialog.dart';
import 'package:flutter_demo_lhw/views/Form/Form.dart';
import 'package:flutter_demo_lhw/views/Home.dart';
import 'package:flutter_demo_lhw/views/Input/Input.dart';
import 'package:flutter_demo_lhw/views/Other/other.dart';
import 'package:flutter_demo_lhw/views/Picker/Picker.dart';
import 'package:flutter_demo_lhw/views/SizeBox/SizeBox.dart';
import 'package:flutter_demo_lhw/views/Toast/Toast.dart';
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
      ),
      GoRoute(
        name: 'routerJump1',
        path: '/routerJump1',
        builder: (BuildContext context, GoRouterState state) {
          return const RouterJump1();
        },
      ),
      GoRoute(
        name: 'dialog',
        path: '/dialog',
        builder: (BuildContext context, GoRouterState state) {
          return const DialogPage();
        },
      ),
      GoRoute(
        name: 'sizebox',
        path: '/sizebox',
        builder: (BuildContext context, GoRouterState state) {
          return const SizeBoxPage();
        },
      ),
      GoRoute(
        name: 'bottomsheet',
        path: '/bottomsheet',
        builder: (BuildContext context, GoRouterState state) {
          return const BottomSheetPage();
        },
      ),
      GoRoute(
        name: 'toast',
        path: '/toast',
        builder: (BuildContext context, GoRouterState state) {
          return const ToastPage();
        },
      ),
      GoRoute(
        name: 'other',
        path: '/other',
        builder: (BuildContext context, GoRouterState state) {
          return const OtherPage();
        },
      )






    ],
  );

  get router => _router;
}
