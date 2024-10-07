import 'package:json_annotation/json_annotation.dart';

/// Type for access of external URI.
enum RepositoryType {
  /// Display: Click and see
  /// Definition: When URL is clicked, the resource can be seen directly (by webpage or by download link format).
  @JsonValue('directlink')
  directlink,
  /// Display: The URL is the RESTful or other kind of API that can access to the result.
  /// Definition: When the API method (e.g. [base_url]/[parameter]) related with the URL of the website is executed, the resource can be seen directly (usually in JSON or XML format).
  @JsonValue('openapi')
  openapi,
  /// Display: Result cannot be access unless an account is logged in
  /// Definition: When logged into the website, the resource can be seen.
  @JsonValue('login')
  login,
  /// Display: Result need to be fetched with API and need LOGIN( or cookies are required when visiting the link of resource)
  /// Definition: When logged in and  follow the API in the website related with URL, the resource can be seen.
  @JsonValue('oauth')
  oauth,
  /// Display: Some other complicated or particular way to get resource from URL.
  /// Definition: Some other complicated or particular way to get resource from URL.
  @JsonValue('other')
  other,
;

@override
  String toString() {
      switch(this) {
        case directlink: return 'directlink';
        case openapi: return 'openapi';
        case login: return 'login';
        case oauth: return 'oauth';
        case other: return 'other';
      }
      }
String toJson() => toString();
  RepositoryType fromString(String str) {
    switch(str) {
      case 'directlink': return RepositoryType.directlink;
      case 'openapi': return RepositoryType.openapi;
      case 'login': return RepositoryType.login;
      case 'oauth': return RepositoryType.oauth;
      case 'other': return RepositoryType.other;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 RepositoryType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

