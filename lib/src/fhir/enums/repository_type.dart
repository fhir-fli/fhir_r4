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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const RepositoryType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static RepositoryType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RepositoryType.elementOnly.withElement(element);
    }
    return RepositoryType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  RepositoryType withElement(Element? newElement) {
    return RepositoryType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
