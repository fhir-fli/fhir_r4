import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MedicinalProductDefinition_Usage] A medicinal product, being a
/// substance or combination of substances that is intended to treat, prevent
/// or diagnose a disease, or to restore, correct or modify physiological
/// functions by exerting a pharmacological, immunological or metabolic action.
/// This resource is intended to define and detail such products and their
/// properties, for uses other than direct patient care (e.g. regulatory use,
/// or drug catalogs).

@freezed
class MedicinalProductDefinition_Usage with _$MedicinalProductDefinition_Usage {
  const MedicinalProductDefinition_Usage._();

  const factory MedicinalProductDefinition_Usage({
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
/// [country] Country code for where this name applies.

    @JsonKey(name: 'country') CodeableConcept? country,
/// [jurisdiction] Jurisdiction code for where this name applies. A
/// jurisdiction may be a sub- or supra-national entity (e.g. a state or a
/// geographic region).

    @JsonKey(name: 'jurisdiction') CodeableConcept? jurisdiction,
/// [language] Language code for this name.

    @JsonKey(name: 'language') CodeableConcept? language,
  }) = _$MedicinalProductDefinition_Usage;

  @override
  String get fhirType => 'MedicinalProductDefinition_Usage';

  factory MedicinalProductDefinition_Usage.fromJson(Map<String, dynamic> json) =>
      _$MedicinalProductDefinition_UsageFromJson(json);

  factory MedicinalProductDefinition_Usage.fromYaml(dynamic yaml) => yaml is String
      ? MedicinalProductDefinition_Usage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinition_Usage.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinition_Usage cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicinalProductDefinition_Usage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinition_UsageFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
