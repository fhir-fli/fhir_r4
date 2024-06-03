import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstanceDefinition_Code] The detailed description of a substance,
/// typically at a level beyond what is used for prescribing.

@freezed
class SubstanceDefinition_Code with _$SubstanceDefinition_Code {
  const SubstanceDefinition_Code._();

  const factory SubstanceDefinition_Code({
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
/// [code] The specific code.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [status] Status of the code assignment, for example 'provisional',
/// 'approved'.

    @JsonKey(name: 'status') CodeableConcept? status,
/// [statusDate] The date at which the code status was changed as part of
/// the terminology maintenance.

    @JsonKey(name: 'statusDate') FhirDateTime? statusDate,
/// [_statusDate] Extensions for statusDate

    @JsonKey(name: '_statusDate') PrimitiveElement? statusDateElement,
/// [note] Any comment can be provided in this field, if necessary.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [source] Supporting literature.

    @JsonKey(name: 'source') List<List<Reference>>? source,
  }) = _$SubstanceDefinition_Code;

  @override
  String get fhirType => 'SubstanceDefinition_Code';

  factory SubstanceDefinition_Code.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinition_CodeFromJson(json);

  factory SubstanceDefinition_Code.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinition_Code.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinition_Code.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinition_Code cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinition_Code.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinition_CodeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
