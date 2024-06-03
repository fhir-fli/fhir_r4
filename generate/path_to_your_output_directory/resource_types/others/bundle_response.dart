import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Bundle_Response] A container for a collection of resources.

@freezed
class Bundle_Response with _$Bundle_Response {
  const Bundle_Response._();

  const factory Bundle_Response({
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
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [status] The status code returned by processing this entry. The status
/// SHALL start with a 3 digit HTTP code (e.g. 404) and may contain the
/// standard HTTP description associated with the status code.

    @JsonKey(name: 'status') String? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [location] The location header created by processing this operation,
/// populated if the operation returns a location.

    @JsonKey(name: 'location') FhirUri? location,
/// [_location] Extensions for location

    @JsonKey(name: '_location') PrimitiveElement? locationElement,
/// [etag] The Etag for the resource, if the operation for the entry
/// produced a versioned resource (see [Resource Metadata and
/// Versioning](http.html#versioning) and [Managing Resource
/// Contention](http.html#concurrency)).

    @JsonKey(name: 'etag') String? etag,
/// [_etag] Extensions for etag

    @JsonKey(name: '_etag') PrimitiveElement? etagElement,
/// [lastModified] The date/time that the resource was modified on the
/// server.

    @JsonKey(name: 'lastModified') FhirInstant? lastModified,
/// [_lastModified] Extensions for lastModified

    @JsonKey(name: '_lastModified') PrimitiveElement? lastModifiedElement,
/// [outcome] An OperationOutcome containing hints and warnings produced as
/// part of processing this entry in a batch or transaction.

    @JsonKey(name: 'outcome') ResourceList? outcome,
  }) = _$Bundle_Response;

  @override
  String get fhirType => 'Bundle_Response';

  factory Bundle_Response.fromJson(Map<String, dynamic> json) =>
      _$Bundle_ResponseFromJson(json);

  factory Bundle_Response.fromYaml(dynamic yaml) => yaml is String
      ? Bundle_Response.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Bundle_Response.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Bundle_Response cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Bundle_Response.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Bundle_ResponseFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
