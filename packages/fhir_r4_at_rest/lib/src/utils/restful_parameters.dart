// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// A class to build query parameters for RESTful requests.
class RestfulParameters {
  /// The parameters to be added to the query.
  /// Values can be String or List<String> to support multiple values for the same key.
  final Map<String, dynamic> parameters = <String, dynamic>{};

  /// Helper method to add a value, converting to list if key already exists.
  void addParameterValue(String parameter, String value) {
    final existing = parameters[parameter];
    if (existing == null) {
      parameters[parameter] = value;
    } else if (existing is String) {
      parameters[parameter] = [existing, value];
    } else if (existing is List<String>) {
      existing.add(value);
    }
  }

  /// Add a parameter to the query.
  RestfulParameters add(String parameter, String value) {
    addParameterValue(parameter, value);
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
  String buildQuery() {
    final queryParts = <String>[];
    for (final entry in parameters.entries) {
      if (entry.value is String) {
        queryParts.add('${entry.key}=${entry.value}');
      } else if (entry.value is List<String>) {
        for (final value in entry.value as List<String>) {
          queryParts.add('${entry.key}=$value');
        }
      }
    }
    return queryParts.join('&');
  }
}
