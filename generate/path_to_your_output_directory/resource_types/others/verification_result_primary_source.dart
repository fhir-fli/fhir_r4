import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [VerificationResult_PrimarySource] Describes validation requirements,
/// source(s), status and dates for one or more elements.

@freezed
class VerificationResult_PrimarySource with _$VerificationResult_PrimarySource {
  const VerificationResult_PrimarySource._();

  const factory VerificationResult_PrimarySource({
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
/// [who] Reference to the primary source.

    @JsonKey(name: 'who') Reference? who,
/// [type] Type of primary source (License Board; Primary Education;
/// Continuing Education; Postal Service; Relationship owner; Registration
/// Authority; legal source; issuing source; authoritative source).

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// [communicationMethod] Method for communicating with the primary source
/// (manual; API; Push).

    @JsonKey(name: 'communicationMethod') List<List<CodeableConcept>>? communicationMethod,
/// [validationStatus] Status of the validation of the target against the
/// primary source (successful; failed; unknown).

    @JsonKey(name: 'validationStatus') CodeableConcept? validationStatus,
/// [validationDate] When the target was validated against the primary
/// source.

    @JsonKey(name: 'validationDate') FhirDateTime? validationDate,
/// [_validationDate] Extensions for validationDate

    @JsonKey(name: '_validationDate') PrimitiveElement? validationDateElement,
/// [canPushUpdates] Ability of the primary source to push updates/alerts
/// (yes; no; undetermined).

    @JsonKey(name: 'canPushUpdates') CodeableConcept? canPushUpdates,
/// [pushTypeAvailable] Type of alerts/updates the primary source can send
/// (specific requested changes; any changes; as defined by source).

    @JsonKey(name: 'pushTypeAvailable') List<List<CodeableConcept>>? pushTypeAvailable,
  }) = _$VerificationResult_PrimarySource;

  @override
  String get fhirType => 'VerificationResult_PrimarySource';

  factory VerificationResult_PrimarySource.fromJson(Map<String, dynamic> json) =>
      _$VerificationResult_PrimarySourceFromJson(json);

  factory VerificationResult_PrimarySource.fromYaml(dynamic yaml) => yaml is String
      ? VerificationResult_PrimarySource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? VerificationResult_PrimarySource.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'VerificationResult_PrimarySource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory VerificationResult_PrimarySource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$VerificationResult_PrimarySourceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
