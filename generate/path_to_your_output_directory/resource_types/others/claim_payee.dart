import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Claim_Payee] A provider issued list of professional services and
/// products which have been provided, or are to be provided, to a patient
/// which is sent to an insurer for reimbursement.

@freezed
class Claim_Payee with _$Claim_Payee {
  const Claim_Payee._();

  const factory Claim_Payee({
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
/// [type] Type of Party to be reimbursed: subscriber, provider, other.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [party] Reference to the individual or organization to whom any payment
/// will be made.

    @JsonKey(name: 'party') Reference? party,
  }) = _$Claim_Payee;

  @override
  String get fhirType => 'Claim_Payee';

  factory Claim_Payee.fromJson(Map<String, dynamic> json) =>
      _$Claim_PayeeFromJson(json);

  factory Claim_Payee.fromYaml(dynamic yaml) => yaml is String
      ? Claim_Payee.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Claim_Payee.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Claim_Payee cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Claim_Payee.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Claim_PayeeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
