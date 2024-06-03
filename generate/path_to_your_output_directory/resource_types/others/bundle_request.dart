import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Bundle_Request] A container for a collection of resources.

@freezed
class Bundle_Request with _$Bundle_Request {
  const Bundle_Request._();

  const factory Bundle_Request({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [method] In a transaction or batch, this is the HTTP action to be
/// executed for this entry. In a history bundle, this indicates the HTTP
/// action that occurred.

    @JsonKey(name: 'method') FhirCode? method,
/// [_method] Extensions for method

    @JsonKey(name: '_method') PrimitiveElement? methodElement,
/// [url] The URL for this entry, relative to the root (the address to
/// which the request is posted).

    @JsonKey(name: 'url') FhirUri? url,
/// [_url] Extensions for url

    @JsonKey(name: '_url') PrimitiveElement? urlElement,
/// [ifNoneMatch] If the ETag values match, return a 304 Not Modified
/// status. See the API documentation for ["Conditional
/// Read"](http.html#cread).

    @JsonKey(name: 'ifNoneMatch') String? ifNoneMatch,
/// [_ifNoneMatch] Extensions for ifNoneMatch

    @JsonKey(name: '_ifNoneMatch') PrimitiveElement? ifNoneMatchElement,
/// [ifModifiedSince] Only perform the operation if the last updated date
/// matches. See the API documentation for ["Conditional
/// Read"](http.html#cread).

    @JsonKey(name: 'ifModifiedSince') FhirInstant? ifModifiedSince,
/// [_ifModifiedSince] Extensions for ifModifiedSince

    @JsonKey(name: '_ifModifiedSince') PrimitiveElement? ifModifiedSinceElement,
/// [ifMatch] Only perform the operation if the Etag value matches. For
/// more information, see the API section ["Managing Resource
/// Contention"](http.html#concurrency).

    @JsonKey(name: 'ifMatch') String? ifMatch,
/// [_ifMatch] Extensions for ifMatch

    @JsonKey(name: '_ifMatch') PrimitiveElement? ifMatchElement,
/// [ifNoneExist] Instruct the server not to perform the create if a
/// specified resource already exists. For further information, see the API
/// documentation for ["Conditional Create"](http.html#ccreate). This is just
/// the query portion of the URL - what follows the "?" (not including the
/// "?").

    @JsonKey(name: 'ifNoneExist') String? ifNoneExist,
/// [_ifNoneExist] Extensions for ifNoneExist

    @JsonKey(name: '_ifNoneExist') PrimitiveElement? ifNoneExistElement,
  }) = _$Bundle_Request;

  @override
  String get fhirType => 'Bundle_Request';

  factory Bundle_Request.fromJson(Map<String, dynamic> json) =>
      _$Bundle_RequestFromJson(json);

  factory Bundle_Request.fromYaml(dynamic yaml) => yaml is String
      ? Bundle_Request.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Bundle_Request.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Bundle_Request cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Bundle_Request.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Bundle_RequestFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
