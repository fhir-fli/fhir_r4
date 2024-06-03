import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MedicinalProductDefinition_Part] A medicinal product, being a
/// substance or combination of substances that is intended to treat, prevent
/// or diagnose a disease, or to restore, correct or modify physiological
/// functions by exerting a pharmacological, immunological or metabolic action.
/// This resource is intended to define and detail such products and their
/// properties, for uses other than direct patient care (e.g. regulatory use,
/// or drug catalogs).

@freezed
class MedicinalProductDefinition_Part with _$MedicinalProductDefinition_Part {
  const MedicinalProductDefinition_Part._();

  const factory MedicinalProductDefinition_Part({
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
/// [part] A fragment of a product name.

    @JsonKey(name: 'part') String? part,
/// [_part] Extensions for part

    @JsonKey(name: '_part') PrimitiveElement? partElement,
/// [type] Identifying type for this part of the name (e.g. strength part).

    @JsonKey(name: 'type') CodeableConcept? type,
  }) = _$MedicinalProductDefinition_Part;

  @override
  String get fhirType => 'MedicinalProductDefinition_Part';

  factory MedicinalProductDefinition_Part.fromJson(Map<String, dynamic> json) =>
      _$MedicinalProductDefinition_PartFromJson(json);

  factory MedicinalProductDefinition_Part.fromYaml(dynamic yaml) => yaml is String
      ? MedicinalProductDefinition_Part.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinition_Part.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinition_Part cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicinalProductDefinition_Part.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinition_PartFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
