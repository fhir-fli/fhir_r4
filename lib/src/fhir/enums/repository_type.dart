// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Type for access of external URI.
enum RepositoryType {
  /// Display: Click and see
  /// Definition: When URL is clicked, the resource can be seen directly (by webpage or by download link format).
  directlink('directlink'),

  /// Display: The URL is the RESTful or other kind of API that can access to the result.
  /// Definition: When the API method (e.g. [base_url]/[parameter]) related with the URL of the website is executed, the resource can be seen directly (usually in JSON or XML format).
  openapi('openapi'),

  /// Display: Result cannot be access unless an account is logged in
  /// Definition: When logged into the website, the resource can be seen.
  login('login'),

  /// Display: Result need to be fetched with API and need LOGIN( or cookies are required when visiting the link of resource)
  /// Definition: When logged in and follow the API in the website related with URL, the resource can be seen.
  oauth('oauth'),

  /// Display: Some other complicated or particular way to get resource from URL.
  /// Definition: Some other complicated or particular way to get resource from URL.
  other('other'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const RepositoryType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [RepositoryType] instances.
  static RepositoryType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RepositoryType.elementOnly.withElement(element);
    }
    return RepositoryType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  RepositoryType withElement(Element? newElement) {
    return RepositoryType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
