import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [RegulatedAuthorization] Regulatory approval, clearance or licencing
/// related to a regulated product, treatment, facility or activity that is
/// cited in a guidance, regulation, rule or legislative act. An example is
/// Market Authorization relating to a Medicinal Product.

@freezed
class RegulatedAuthorization with _$RegulatedAuthorization {
  const RegulatedAuthorization._();

  const factory RegulatedAuthorization({
/// [resourceType] This is a RegulatedAuthorization resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] Business identifier for the authorization, typically
/// assigned by the authorizing body.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [subject] The product type, treatment, facility or activity that is
/// being authorized.

    @JsonKey(name: 'subject') List<List<Reference>>? subject,
/// [type] Overall type of this authorization, for example drug marketing
/// approval, orphan drug designation.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [description] General textual supporting information.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [region] The territory (e.g., country, jurisdiction etc.) in which the
/// authorization has been granted.

    @JsonKey(name: 'region') List<List<CodeableConcept>>? region,
/// [status] The status that is authorised e.g. approved. Intermediate
/// states and actions can be tracked with cases and applications.

    @JsonKey(name: 'status') CodeableConcept? status,
/// [statusDate] The date at which the current status was assigned.

    @JsonKey(name: 'statusDate') FhirDateTime? statusDate,
/// [_statusDate] Extensions for statusDate

    @JsonKey(name: '_statusDate') PrimitiveElement? statusDateElement,
/// [validityPeriod] The time period in which the regulatory approval,
/// clearance or licencing is in effect. As an example, a Marketing
/// Authorization includes the date of authorization and/or an expiration date.

    @JsonKey(name: 'validityPeriod') Period? validityPeriod,
/// [indication] Condition for which the use of the regulated product
/// applies.

    @JsonKey(name: 'indication') List<List<CodeableReference>>? indication,
/// [intendedUse] The intended use of the product, e.g. prevention,
/// treatment, diagnosis.

    @JsonKey(name: 'intendedUse') CodeableConcept? intendedUse,
/// [basis] The legal or regulatory framework against which this
/// authorization is granted, or other reasons for it.

    @JsonKey(name: 'basis') List<List<CodeableConcept>>? basis,
/// [holder] The organization that has been granted this authorization, by
/// some authoritative body (the 'regulator').

    @JsonKey(name: 'holder') Reference? holder,
/// [regulator] The regulatory authority or authorizing body granting the
/// authorization. For example, European Medicines Agency (EMA), Food and Drug
/// Administration (FDA), Health Canada (HC), etc.

    @JsonKey(name: 'regulator') Reference? regulator,
/// [attachedDocument] Additional information or supporting documentation
/// about the authorization.

    @JsonKey(name: 'attachedDocument') List<List<Reference>>? attachedDocument,
/// [case] The case or regulatory procedure for granting or amending a
/// regulated authorization. An authorization is granted in response to
/// submissions/applications by those seeking authorization. A case is the
/// administrative process that deals with the application(s) that relate to
/// this and assesses them. Note: This area is subject to ongoing review and
/// the workgroup is seeking implementer feedback on its use (see link at
/// bottom of page).

    @JsonKey(name: 'case') RegulatedAuthorization_Case? case,
  }) = _$RegulatedAuthorization;

  @override
  String get fhirType => 'RegulatedAuthorization';

  factory RegulatedAuthorization.fromJson(Map<String, dynamic> json) =>
      _$RegulatedAuthorizationFromJson(json);

  factory RegulatedAuthorization.fromYaml(dynamic yaml) => yaml is String
      ? RegulatedAuthorization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RegulatedAuthorization.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RegulatedAuthorization cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory RegulatedAuthorization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RegulatedAuthorizationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
