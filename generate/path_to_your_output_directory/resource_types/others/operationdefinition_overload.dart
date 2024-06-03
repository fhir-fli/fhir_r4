import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [OperationDefinition_Overload] A formal computable definition of an
/// operation (on the RESTful interface) or a named query (using the search
/// interaction).

@freezed
class OperationDefinition_Overload with _$OperationDefinition_Overload {
  const OperationDefinition_Overload._();

  const factory OperationDefinition_Overload({
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
/// [parameterName] Name of parameter to include in overload.

    @JsonKey(name: 'parameterName') List<List<String>>? parameterName,
/// [_parameterName] Extensions for parameterName

    @JsonKey(name: '_parameterName') List<PrimitiveElement>? parameterNameElement,
/// [comment] Comments to go on overload.

    @JsonKey(name: 'comment') String? comment,
/// [_comment] Extensions for comment

    @JsonKey(name: '_comment') PrimitiveElement? commentElement,
  }) = _$OperationDefinition_Overload;

  @override
  String get fhirType => 'OperationDefinition_Overload';

  factory OperationDefinition_Overload.fromJson(Map<String, dynamic> json) =>
      _$OperationDefinition_OverloadFromJson(json);

  factory OperationDefinition_Overload.fromYaml(dynamic yaml) => yaml is String
      ? OperationDefinition_Overload.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? OperationDefinition_Overload.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'OperationDefinition_Overload cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory OperationDefinition_Overload.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$OperationDefinition_OverloadFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
