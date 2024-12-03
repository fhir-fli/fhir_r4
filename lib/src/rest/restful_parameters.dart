// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

/// A class to build query parameters for RESTful requests.
class RestfulParameters {
  /// The parameters to be added to the query.
  final Map<String, String> parameters = <String, String>{};

  /// Add a parameter to the query.
  RestfulParameters add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  /// Add a parameter to the query.
  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
