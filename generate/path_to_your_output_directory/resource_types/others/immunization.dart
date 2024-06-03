import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Immunization] Describes the event of a patient being administered a
/// vaccine or a record of an immunization as reported by a patient, a
/// clinician or another party.

@freezed
class Immunization with _$Immunization {
  const Immunization._();

  const factory Immunization({
/// [resourceType] This is a Immunization resource

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
/// [identifier] A unique identifier assigned to this immunization record.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [basedOn] A plan, order or recommendation fulfilled in whole or in part
/// by this immunization.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [status] Indicates the current status of the immunization event.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [statusReason] Indicates the reason the immunization event was not
/// performed.

    @JsonKey(name: 'statusReason') CodeableConcept? statusReason,
/// [vaccineCode] Vaccine that was administered or was to be administered.

    @JsonKey(name: 'vaccineCode') CodeableConcept? vaccineCode,
/// [administeredProduct] An indication of which product was administered
/// to the patient. This is typically a more detailed representation of the
/// concept conveyed by the vaccineCode data element. If a Medication resource
/// is referenced, it may be to a stand-alone resource or a contained resource
/// within the Immunization resource.

    @JsonKey(name: 'administeredProduct') CodeableReference? administeredProduct,
/// [manufacturer] Name of vaccine manufacturer.

    @JsonKey(name: 'manufacturer') CodeableReference? manufacturer,
/// [lotNumber] Lot number of the  vaccine product.

    @JsonKey(name: 'lotNumber') String? lotNumber,
/// [_lotNumber] Extensions for lotNumber

    @JsonKey(name: '_lotNumber') PrimitiveElement? lotNumberElement,
/// [expirationDate] Date vaccine batch expires.

    @JsonKey(name: 'expirationDate') FhirDate? expirationDate,
/// [_expirationDate] Extensions for expirationDate

    @JsonKey(name: '_expirationDate') PrimitiveElement? expirationDateElement,
/// [patient] The patient who either received or did not receive the
/// immunization.

    @JsonKey(name: 'patient') Reference? patient,
/// [encounter] The visit or admission or other contact between patient and
/// health care provider the immunization was performed as part of.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [supportingInformation] Additional information that is relevant to the
/// immunization (e.g. for a vaccine recipient who is pregnant, the gestational
/// age of the fetus). The reason why a vaccine was given (e.g. occupation,
/// underlying medical condition) should be conveyed in Immunization.reason,
/// not as supporting information. The reason why a vaccine was not given (e.g.
/// contraindication) should be conveyed in Immunization.statusReason, not as
/// supporting information.

    @JsonKey(name: 'supportingInformation') List<List<Reference>>? supportingInformation,
/// [occurrenceDateTime] Date vaccine administered or was to be
/// administered.

    @JsonKey(name: 'occurrenceDateTime') FhirDateTime? occurrenceDateTime,
/// [_occurrenceDateTime] Extensions for occurrenceDateTime

    @JsonKey(name: '_occurrenceDateTime') PrimitiveElement? occurrenceDateTimeElement,
/// [occurrenceString] Date vaccine administered or was to be administered.

    @JsonKey(name: 'occurrenceString') String? occurrenceString,
/// [_occurrenceString] Extensions for occurrenceString

    @JsonKey(name: '_occurrenceString') PrimitiveElement? occurrenceStringElement,
/// [primarySource] Indicates whether the data contained in the resource
/// was captured by the individual/organization which was responsible for the
/// administration of the vaccine rather than as 'secondary reported' data
/// documented by a third party. A value of 'true' means this data originated
/// with the individual/organization which was responsible for the
/// administration of the vaccine.

    @JsonKey(name: 'primarySource') FhirBoolean? primarySource,
/// [_primarySource] Extensions for primarySource

    @JsonKey(name: '_primarySource') PrimitiveElement? primarySourceElement,
/// [informationSource] Typically the source of the data when the report of
/// the immunization event is not based on information from the person who
/// administered the vaccine.

    @JsonKey(name: 'informationSource') CodeableReference? informationSource,
/// [location] The service delivery location where the vaccine
/// administration occurred.

    @JsonKey(name: 'location') Reference? location,
/// [site] Body site where vaccine was administered.

    @JsonKey(name: 'site') CodeableConcept? site,
/// [route] The path by which the vaccine product is taken into the body.

    @JsonKey(name: 'route') CodeableConcept? route,
/// [doseQuantity] The quantity of vaccine product that was administered.

    @JsonKey(name: 'doseQuantity') Quantity? doseQuantity,
/// [performer] Indicates who performed the immunization event.

    @JsonKey(name: 'performer') List<List<Immunization_Performer>>? performer,
/// [note] Extra information about the immunization that is not conveyed by
/// the other attributes.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [reason] Describes why the immunization occurred in coded or textual
/// form, or Indicates another resource (Condition, Observation or
/// DiagnosticReport) whose existence justifies this immunization.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [isSubpotent] Indication if a dose is considered to be subpotent. By
/// default, a dose should be considered to be potent.

    @JsonKey(name: 'isSubpotent') FhirBoolean? isSubpotent,
/// [_isSubpotent] Extensions for isSubpotent

    @JsonKey(name: '_isSubpotent') PrimitiveElement? isSubpotentElement,
/// [subpotentReason] Reason why a dose is considered to be subpotent.

    @JsonKey(name: 'subpotentReason') List<List<CodeableConcept>>? subpotentReason,
/// [programEligibility] Indicates a patient's eligibility for a funding
/// program.

    @JsonKey(name: 'programEligibility') List<List<Immunization_ProgramEligibility>>? programEligibility,
/// [fundingSource] Indicates the source of the vaccine actually
/// administered. This may be different than the patient eligibility (e.g. the
/// patient may be eligible for a publically purchased vaccine but due to
/// inventory issues, vaccine purchased with private funds was actually
/// administered).

    @JsonKey(name: 'fundingSource') CodeableConcept? fundingSource,
/// [reaction] Categorical data indicating that an adverse event is
/// associated in time to an immunization.

    @JsonKey(name: 'reaction') List<List<Immunization_Reaction>>? reaction,
/// [protocolApplied] The protocol (set of recommendations) being followed
/// by the provider who administered the dose.

    @JsonKey(name: 'protocolApplied') List<List<Immunization_ProtocolApplied>>? protocolApplied,
  }) = _$Immunization;

  @override
  String get fhirType => 'Immunization';

  factory Immunization.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationFromJson(json);

  factory Immunization.fromYaml(dynamic yaml) => yaml is String
      ? Immunization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Immunization.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Immunization cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Immunization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImmunizationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
