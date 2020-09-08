// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:cato_feed/domain/core/errors.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'package:cato_feed/domain/topic/topic.dart';
import 'package:cato_feed/infrastructure/core/db/moor/extensions.dart';
import 'package:cato_feed/infrastructure/core/logger/logger.dart';
import 'package:cato_feed/infrastructure/core/remote/graphql/network_client.dart';
import 'package:cato_feed/infrastructure/core/remote/graphql/queries.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:kt_dart/collection.dart';
import 'package:test/test.dart';

void main() async {
  NetworkClient client;
  String jwtToken= '';
  jwtToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVmNTJkNmNkNzRkMzQ2MzhhMDY4MTc5MCIsImlhdCI6MTU5OTI2NjIxMywiZXhwIjoxNTk5MjczNDEzfQ.ub94WZTngPfNDvEDKXGVlbpq5R8yiUQsGRk-vuKvRzw";


  setUp(() async {
    client = NetworkClient(
        logger: Logger(FirebaseAnalytics()),
        apiEndpoint: 'http://localhost:5000/graphql',
        jwtResolver: () => Future.value(jwtToken),
        isConnected: () => Future.value(true),
        jwtHeaderKey: 'x-auth-token');
  });

  // test('Version Api', () async {
  //   var result = await client.query(GqlQueries.versionCheckQuery);
  //   var versionCode = result.fold((l) {
  //     print(l);
  //     return -1;
  //   }, (r) => r['minimumVersionCode'] as int);
  //   expect(versionCode, 28);
  // });
  //
  // test('User Signup', () async {
  //   var result = await client.mutation(
  //       GqlQueries.googleLoginMutation,
  //       GqlQueries.googleLoginVariables(
  //           "Ravindra", "ravi@gmail.com", "12ravi", "ravi", "ravi"));
  //   print(result.toString());
  //   String email;
  //   result.fold((l) {
  //     email = null;
  //     jwtToken = null;
  //   }, (data) {
  //     email = data['googleLogin']["user"]["email"] as String;
  //     jwtToken = data['googleLogin']["token"] as String;
  //   });
  //
  //   expect(email, equals("ravi@gmail.com"), reason: "Email Failed");
  //   expect(jwtToken, isNotNull, reason: "Jwt Token Failed");
  //   client.initializeClient();
  // });
  //
  // test('User Profile Check', () async {
  //   var result = await client.query(GqlQueries.userProfileQuery);
  //   result.fold((l) {
  //     print(l.toString());
  //   }, (r) {
  //     print(r);
  //   });
  // });
  //
  // test('All Topics', () async {
  //   var result = await client.query(GqlQueries.allTopicQuery);
  //   result.fold((l) {
  //     throw l.toString();
  //   }, (res) {
  //     expect(res['allTopic'][0]['id'] as String, equals("5f5273e59aa66f1d8c150488"));
  //     expect(res['allTopic'][0]['name'] as String, equals("Career"));
  //   });
  // });
  //
  // test('Update User Profile', () async {
  //   var result = await client.mutation(GqlQueries.updateUserProfileMutation,
  //       GqlQueries.updateUserProfileVariables(["5f5273e59aa66f1d8c150488", "5f5273e59aa66f1d8c150489"]));
  //
  //   var response = _processUserProfile(result, 'create', (response) => response['updateUserProfile']);
  //
  //   print(response);
  //   response.fold((l) {
  //     throw l.toString();
  //   }, (res) {
  //     expect(2, equals(res.size));
  //   });
  // });
}
//
// Either<Failure, KtList<Topic>> _processUserProfile(
//     Either<Failure, dynamic> result,
//     String serverErrorType,
//     Function(dynamic response) onResponse
//     ) {
//   dynamic response;
//   result.fold((l) {
//     return left(l);
//   }, (r) => {response = r});
//
//   if (response == null) {
//     return left(Failure.error(ServerError(detail: 'Unable to $serverErrorType user profile.')));
//   }
//
//   var finalResponse = onResponse(response);
//   var topics = TopicDTO.fromResponse(finalResponse);
//   if(topics == null) {
//     return left(Failure.error(ServerError(detail: 'Unable to parse user profile response.')));
//   }
//
//   return right(topics);
// }
