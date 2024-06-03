import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [HealthcareService] The details of a healthcare service available at a
/// location.

@freezed
class HealthcareService with _$HealthcareService {
  const HealthcareService._();

  const factory HealthcareService({
/// [resourceType] This is a HealthcareService resource

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

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] External identifiers for this item.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [active] This flag is used to mark the record to not be used. This is
/// not used when a center is closed for maintenance, or for holidays, the
/// notAvailable period is to be used for this.

    @JsonKey(name: 'active') FhirBoolean? active,
/// [_active] Extensions for active

    @JsonKey(name: '_active') PrimitiveElement? activeElement,
/// [providedBy] The organization that provides this healthcare service.

    @JsonKey(name: 'providedBy') Reference? providedBy,
/// [offeredIn] When the HealthcareService is representing a specific,
/// schedulable service, the availableIn property can refer to a generic
/// service.

    @JsonKey(name: 'offeredIn') List<List<Reference>>? offeredIn,
/// [category] Identifies the broad category of service being performed or
/// delivered.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [type] The specific type of service that may be delivered or performed.

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// [specialty] Collection of specialties handled by the Healthcare
/// service. This is more of a medical term.

    @JsonKey(name: 'specialty') List<List<CodeableConcept>>? specialty,
/// [location] The location(s) where this healthcare service may be
/// provided.

    @JsonKey(name: 'location') List<List<Reference>>? location,
/// [name] Further description of the service as it would be presented to a
/// consumer while searching.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [comment] Any additional description of the service and/or any specific
/// issues not covered by the other attributes, which can be displayed as
/// further detail under the serviceName.

    @JsonKey(name: 'comment') FhirMarkdown? comment,
/// [_comment] Extensions for comment

    @JsonKey(name: '_comment') PrimitiveElement? commentElement,
/// [extraDetails] Extra details about the service that can't be placed in
/// the other fields.

    @JsonKey(name: 'extraDetails') FhirMarkdown? extraDetails,
/// [_extraDetails] Extensions for extraDetails

    @JsonKey(name: '_extraDetails') PrimitiveElement? extraDetailsElement,
/// [photo] If there is a photo/symbol associated with this
/// HealthcareService, it may be included here to facilitate quick
/// identification of the service in a list.

    @JsonKey(name: 'photo') Attachment? photo,
/// [contact] The contact details of communication devices available
/// relevant to the specific HealthcareService. This can include addresses,
/// phone numbers, fax numbers, mobile numbers, email addresses and web sites.

    @JsonKey(name: 'contact') List<List<ExtendedContactDetail>>? contact,
/// [coverageArea] The location(s) that this service is available to (not
/// where the service is provided).

    @JsonKey(name: 'coverageArea') List<List<Reference>>? coverageArea,
/// [serviceProvisionCode] The code(s) that detail the conditions under
/// which the healthcare service is available/offered.

    @JsonKey(name: 'serviceProvisionCode') List<List<CodeableConcept>>? serviceProvisionCode,
/// [eligibility] Does this service have specific eligibility requirements
/// that need to be met in order to use the service?

    @JsonKey(name: 'eligibility') List<List<HealthcareService_Eligibility>>? eligibility,
/// [program] Programs that this service is applicable to.

    @JsonKey(name: 'program') List<List<CodeableConcept>>? program,
/// [characteristic] Collection of characteristics (attributes).

    @JsonKey(name: 'characteristic') List<List<CodeableConcept>>? characteristic,
/// [communication] Some services are specifically made available in
/// multiple languages, this property permits a directory to declare the
/// languages this is offered in. Typically this is only provided where a
/// service operates in communities with mixed languages used.

    @JsonKey(name: 'communication') List<List<CodeableConcept>>? communication,
/// [referralMethod] Ways that the service accepts referrals, if this is
/// not provided then it is implied that no referral is required.

    @JsonKey(name: 'referralMethod') List<List<CodeableConcept>>? referralMethod,
/// [referralRequired] Indicates whether or not a prospective consumer will
/// require a referral for a particular service at a site to be provided by the
/// Organization.

    @JsonKey(name: 'referralRequired') FhirBoolean? referralRequired,
/// [_referralRequired] Extensions for referralRequired

    @JsonKey(name: '_referralRequired') PrimitiveElement? referralRequiredElement,
/// [appointmentRequired] Indicates whether or not a prospective consumer
/// will require an appointment for a particular service at a site to be
/// provided by the Organization.

    @JsonKey(name: 'appointmentRequired') FhirBoolean? appointmentRequired,
/// [_appointmentRequired] Extensions for appointmentRequired

    @JsonKey(name: '_appointmentRequired') PrimitiveElement? appointmentRequiredElement,
/// [availability] A collection of times that the healthcare service is
/// available.

    @JsonKey(name: 'availability') Availability? availability,
/// [endpoint] Technical endpoints providing access to services operated
/// for the specific healthcare services defined at this resource.

    @JsonKey(name: 'endpoint') List<List<Reference>>? endpoint,
  }) = _$HealthcareService;

  @override
  String get fhirType => 'HealthcareService';

  factory HealthcareService.fromJson(Map<String, dynamic> json) =>
      _$HealthcareServiceFromJson(json);

  factory HealthcareService.fromYaml(dynamic yaml) => yaml is String
      ? HealthcareService.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? HealthcareService.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'HealthcareService cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory HealthcareService.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$HealthcareServiceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
