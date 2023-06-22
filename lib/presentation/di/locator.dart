// // import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
// // import 'package:Marketing/domains/entities/objectbox.dart';
//
// GetIt locator = GetIt.instance;
//
// void setupLocator() async {
//   // ObjectBox objectBox = await ObjectBox.create();
//   // locator.registerSingleton<ObjectBox>(objectBox);
//
//   Dio dio = Dio();
//   dio.interceptors.addAll([
//     PrettyDioLogger(
//       requestHeader: true,
//       requestBody: true,
//       responseBody: true,
//       responseHeader: false,
//       error: true,
//       compact: true,
//     )
//   ]);
//
//   locator.registerSingleton<Dio>(dio);
// }
