import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:feed/remote/queries.dart';
import 'package:graphql/client.dart';
import 'package:package_info/package_info.dart';

class APIServiceImpl implements APIService {
  final GraphQLClient _client = locator<GraphQLClient>();
  final PackageInfo _packageInfo = locator<PackageInfo>();
  final _log = getLogger("API Service");

  @override
  Future checkUpdateRequired() async {
    _log.v("Checking If there's update required");

    final QueryOptions options = QueryOptions(
        document: gql(GQLQueries.queryAndroidVersionCode),
        fetchPolicy: FetchPolicy.networkOnly);

    var result = await _client.query(options);

    if (result.hasException) return "Failed";

    int version = result.data!["androidVersionCode"]["data"];

    var currentVersion = _convertVersionCode(_packageInfo.version);

    return version > currentVersion;
  }

  int _convertVersionCode(String version) {
    return int.parse(version.split(".")[0]);
  }

  @override
  Future performLogin({
    required String name,
    required String email,
    required String googleId,
    required String avatar,
    required String accessToken,
  }) async {
    _log.v("Performing Google Login");
    throw UnimplementedError();
  }

  @override
  Future getTopics() async {
    _log.v("Fetching Topics from GraphQL");
    throw UnimplementedError();
  }
}
