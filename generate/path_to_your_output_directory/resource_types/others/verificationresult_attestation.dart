import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [VerificationResult_Attestation] Describes validation requirements,
/// source(s), status and dates for one or more elements.

@freezed
class VerificationResult_Attestation with _$VerificationResult_Attestation {
  const VerificationResult_Attestation._();

  const factory VerificationResult_Attestation({
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
/// [who] The individual or organization attesting to information.

    @JsonKey(name: 'who') Reference? who,
/// [onBehalfOf] When the who is asserting on behalf of another
/// (organization or individual).

    @JsonKey(name: 'onBehalfOf') Reference? onBehalfOf,
/// [communicationMethod] The method by which attested information was
/// submitted/retrieved (manual; API; Push).

    @JsonKey(name: 'communicationMethod') CodeableConcept? communicationMethod,
/// [date] The date the information was attested to.

    @JsonKey(name: 'date') FhirDate? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [sourceIdentityCertificate] A digital identity certificate associated
/// with the attestation source.

    @JsonKey(name: 'sourceIdentityCertificate') String? sourceIdentityCertificate,
/// [_sourceIdentityCertificate] Extensions for sourceIdentityCertificate

    @JsonKey(name: '_sourceIdentityCertificate') PrimitiveElement? sourceIdentityCertificateElement,
/// [proxyIdentityCertificate] A digital identity certificate associated
/// with the proxy entity submitting attested information on behalf of the
/// attestation source.

    @JsonKey(name: 'proxyIdentityCertificate') String? proxyIdentityCertificate,
/// [_proxyIdentityCertificate] Extensions for proxyIdentityCertificate

    @JsonKey(name: '_proxyIdentityCertificate') PrimitiveElement? proxyIdentityCertificateElement,
/// [proxySignature] Signed assertion by the proxy entity indicating that
/// they have the right to submit attested information on behalf of the
/// attestation source.

    @JsonKey(name: 'proxySignature') Signature? proxySignature,
/// [sourceSignature] Signed assertion by the attestation source that they
/// have attested to the information.

    @JsonKey(name: 'sourceSignature') Signature? sourceSignature,
  }) = _$VerificationResult_Attestation;

  @override
  String get fhirType => 'VerificationResult_Attestation';

  factory VerificationResult_Attestation.fromJson(Map<String, dynamic> json) =>
      _$VerificationResult_AttestationFromJson(json);

  factory VerificationResult_Attestation.fromYaml(dynamic yaml) => yaml is String
      ? VerificationResult_Attestation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? VerificationResult_Attestation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'VerificationResult_Attestation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory VerificationResult_Attestation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$VerificationResult_AttestationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
