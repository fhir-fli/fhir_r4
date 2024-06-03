import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [OperationDefinition_ReferencedFrom] A formal computable definition of
/// an operation (on the RESTful interface) or a named query (using the search
/// interaction).

@freezed
class OperationDefinition_ReferencedFrom with _$OperationDefinition_ReferencedFrom {
  const OperationDefinition_ReferencedFrom._();

  const factory OperationDefinition_ReferencedFrom({
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
/// [source] The name of the parameter or dot-separated path of parameter
/// names pointing to the resource parameter that is expected to contain a
/// reference to this resource.

    @JsonKey(name: 'source') String? source,
/// [_source] Extensions for source

    @JsonKey(name: '_source') PrimitiveElement? sourceElement,
/// [sourceId] The id of the element in the referencing resource that is
/// expected to resolve to this resource.

    @JsonKey(name: 'sourceId') String? sourceId,
/// [_sourceId] Extensions for sourceId

    @JsonKey(name: '_sourceId') PrimitiveElement? sourceIdElement,
  }) = _$OperationDefinition_ReferencedFrom;

  @override
  String get fhirType => 'OperationDefinition_ReferencedFrom';

  factory OperationDefinition_ReferencedFrom.fromJson(Map<String, dynamic> json) =>
      _$OperationDefinition_ReferencedFromFromJson(json);

  factory OperationDefinition_ReferencedFrom.fromYaml(dynamic yaml) => yaml is String
      ? OperationDefinition_ReferencedFrom.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? OperationDefinition_ReferencedFrom.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'OperationDefinition_ReferencedFrom cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory OperationDefinition_ReferencedFrom.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$OperationDefinition_ReferencedFromFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
