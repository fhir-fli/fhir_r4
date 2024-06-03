import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Consent_Provision] A record of a healthcare consumer’s  choices  or
/// choices made on their behalf by a third party, which permits or denies
/// identified recipient(s) or recipient role(s) to perform one or more actions
/// within a given policy context, for specific purposes and periods of time.

@freezed
class Consent_Provision with _$Consent_Provision {
  const Consent_Provision._();

  const factory Consent_Provision({
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
/// [period] Timeframe for this provision.

    @JsonKey(name: 'period') Period? period,
/// [actor] Who or what is controlled by this provision. Use group to
/// identify a set of actors by some property they share (e.g. 'admitting
/// officers').

    @JsonKey(name: 'actor') List<List<Consent_Actor>>? actor,
/// [action] Actions controlled by this provision.

    @JsonKey(name: 'action') List<List<CodeableConcept>>? action,
/// [securityLabel] A security label, comprised of 0..* security label
/// fields (Privacy tags), which define which resources are controlled by this
/// exception.

    @JsonKey(name: 'securityLabel') List<List<Coding>>? securityLabel,
/// [purpose] The context of the activities a user is taking - why the user
/// is accessing the data - that are controlled by this provision.

    @JsonKey(name: 'purpose') List<List<Coding>>? purpose,
/// [documentType] The documentType(s) covered by this provision. The type
/// can be a CDA document, or some other type that indicates what sort of
/// information the consent relates to.

    @JsonKey(name: 'documentType') List<List<Coding>>? documentType,
/// [resourceType] The resourceType(s) covered by this provision. The type
/// can be a FHIR resource type or a profile on a type that indicates what
/// information the consent relates to.

    @JsonKey(name: 'resourceType') List<List<Coding>>? resourceType,
/// [code] If this code is found in an instance, then the provision
/// applies.

    @JsonKey(name: 'code') List<List<CodeableConcept>>? code,
/// [dataPeriod] Clinical or Operational Relevant period of time that
/// bounds the data controlled by this provision.

    @JsonKey(name: 'dataPeriod') Period? dataPeriod,
/// [data] The resources controlled by this provision if specific resources
/// are referenced.

    @JsonKey(name: 'data') List<List<Consent_Data>>? data,
/// [expression] A computable (FHIRPath or other) definition of what is
/// controlled by this consent.

    @JsonKey(name: 'expression') FhirExpression? expression,
/// [provision] Provisions which provide exceptions to the base provision
/// or subprovisions.

    @JsonKey(name: 'provision') List<List<Consent_Provision>>? provision,
  }) = _$Consent_Provision;

  @override
  String get fhirType => 'Consent_Provision';

  factory Consent_Provision.fromJson(Map<String, dynamic> json) =>
      _$Consent_ProvisionFromJson(json);

  factory Consent_Provision.fromYaml(dynamic yaml) => yaml is String
      ? Consent_Provision.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Consent_Provision.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Consent_Provision cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Consent_Provision.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Consent_ProvisionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
