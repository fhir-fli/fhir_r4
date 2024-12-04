// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4/fhir_r4.dart';

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
  RestfulParameters addCount(int value) {
    parameters['_count'] = value.toString();
    return this;
  }

  /// Add a parameter to the query.
  RestfulParameters addPage(int value) {
    parameters['_page'] = value.toString();
    return this;
  }

  /// Add a parameter to the query.
  RestfulParameters addFormat(String value) {
    parameters['_format'] = value;
    return this;
  }

  /// Add a parameter to the query.
  RestfulParameters requestPretty() {
    parameters['_pretty'] = 'true';
    return this;
  }

  /// Add a parameter to the query.
  RestfulParameters requestSummary(Summary summary) {
    parameters['_summary'] = summary.toString();
    return this;
  }

  /// Add a parameter to the query.
  String buildQuery() => parameters.entries
      .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
      .join('&');
}
