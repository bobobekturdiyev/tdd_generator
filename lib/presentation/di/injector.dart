import 'package:flutter/material.dart';
// import 'locator.dart';

// DI - Dependency Injection
class Injector extends StatelessWidget {
  final Widget child;

  const Injector({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child;
  }

  // @override
  // Widget build(BuildContext context) {
  //   return MultiRepositoryProvider(
  //     providers: [
  //       // ..._getPostsShortRepo(),
  //     ],
  //     child: MultiProvider(
  //       providers: [
  //         // ChangeNotifierProvider(
  //         //   create: (ctx) => NotificationProvider(),
  //         // ),
  //         ChangeNotifierProvider(
  //           create: (ctx) => BottomNavigationBarProvider(),
  //         ),
  //         ChangeNotifierProvider(
  //           create: (ctx) => AdmobProvider(),
  //         ),
  //       ],
  //       child: child,
  //     ),
  //   );
  // }
  // List<RepositoryProvider> _getPostsShortRepo() => [
  //       RepositoryProvider<PostMapper>(
  //         create: (context) => PostMapper(),
  //       ),
  //       RepositoryProvider<PostService>(
  //         create: (context) => PostService(locator<Dio>()),
  //       ),
  //       RepositoryProvider<PostRepo>(
  //         create: (context) => ImplPostRepo(
  //             postService: context.read(), postMapper: context.read()),
  //       ),
  //     ];
}
