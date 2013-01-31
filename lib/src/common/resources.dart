part of check_v1_api_client;

class ApisResource extends Resource {

  ApisResource(Client client) : super(client) {
  }

  /**
   *
   * [maxResults]
   *   Default: 100
   *
   * [optParams] - Additional query parameters
   */
  Future<DiscoveryCheckAPIList> list({String maxResults, Map optParams}) {
    var completer = new Completer();
    var url = "apis";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new DiscoveryCheckAPIList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

