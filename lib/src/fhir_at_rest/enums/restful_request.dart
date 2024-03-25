import 'package:freezed_annotation/freezed_annotation.dart';

/// Types of restful requests allowed. FHIR specifies many different types of
/// interactions with a server, but all are eventually one of these types
enum RestfulRequest {
  @JsonValue('GET')
  get_,
  @JsonValue('PUT')
  put_,
  @JsonValue('DELETE')
  delete_,
  @JsonValue('POST')
  post_,
  @JsonValue('PATCH')
  patch_,
}
