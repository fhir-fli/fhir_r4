import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstanceReferenceInformation_Target] Todo.

@freezed
class SubstanceReferenceInformation_Target with _$SubstanceReferenceInformation_Target {
  const SubstanceReferenceInformation_Target._();

  const factory SubstanceReferenceInformation_Target({
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
/// [target] Todo.

    @JsonKey(name: 'target') Identifier? target,
/// [type] Todo.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [interaction] Todo.

    @JsonKey(name: 'interaction') CodeableConcept? interaction,
/// [organism] Todo.

    @JsonKey(name: 'organism') CodeableConcept? organism,
/// [organismType] Todo.

    @JsonKey(name: 'organismType') CodeableConcept? organismType,
/// [amountQuantity] Todo.

    @JsonKey(name: 'amountQuantity') Quantity? amountQuantity,
/// [amountRange] Todo.

    @JsonKey(name: 'amountRange') Range? amountRange,
/// [amountString] Todo.

    @JsonKey(name: 'amountString') String? amountString,
/// [_amountString] Extensions for amountString

    @JsonKey(name: '_amountString') PrimitiveElement? amountStringElement,
/// [amountType] Todo.

    @JsonKey(name: 'amountType') CodeableConcept? amountType,
/// [source] Todo.

    @JsonKey(name: 'source') List<List<Reference>>? source,
  }) = _$SubstanceReferenceInformation_Target;

  @override
  String get fhirType => 'SubstanceReferenceInformation_Target';

  factory SubstanceReferenceInformation_Target.fromJson(Map<String, dynamic> json) =>
      _$SubstanceReferenceInformation_TargetFromJson(json);

  factory SubstanceReferenceInformation_Target.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceReferenceInformation_Target.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceReferenceInformation_Target.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceReferenceInformation_Target cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceReferenceInformation_Target.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceReferenceInformation_TargetFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
