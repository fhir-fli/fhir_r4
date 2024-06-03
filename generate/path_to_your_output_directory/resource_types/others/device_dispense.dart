import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DeviceDispense] A record of dispensation of a device - i.e., assigning
/// a device to a patient, or to a professional for their use.

@freezed
class DeviceDispense with _$DeviceDispense {
  const DeviceDispense._();

  const factory DeviceDispense({
/// [resourceType] This is a DeviceDispense resource

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
/// [identifier] Business identifier for this dispensation.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [basedOn] The order or request that this dispense is fulfilling.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [partOf] The bigger event that this dispense is a part of.

    @JsonKey(name: 'partOf') List<List<Reference>>? partOf,
/// [status] A code specifying the state of the set of dispense events.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [statusReason] Indicates the reason why a dispense was or was not
/// performed.

    @JsonKey(name: 'statusReason') CodeableReference? statusReason,
/// [category] Indicates the type of device dispense.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [device] Identifies the device being dispensed. This is either a link
/// to a resource representing the details of the device or a simple attribute
/// carrying a code that identifies the device from a known list of devices.

    @JsonKey(name: 'device') CodeableReference? device,
/// [subject] A link to a resource representing the person to whom the
/// device is intended.

    @JsonKey(name: 'subject') Reference? subject,
/// [receiver] Identifies the person who picked up the device or the person
/// or location where the device was delivered.  This may be a patient or their
/// caregiver, but some cases exist where it can be a healthcare professional
/// or a location.

    @JsonKey(name: 'receiver') Reference? receiver,
/// [encounter] The encounter that establishes the context for this event.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [supportingInformation] Additional information that supports the device
/// being dispensed.

    @JsonKey(name: 'supportingInformation') List<List<Reference>>? supportingInformation,
/// [performer] Indicates who or what performed the event.

    @JsonKey(name: 'performer') List<List<DeviceDispense_Performer>>? performer,
/// [location] The principal physical location where the dispense was
/// performed.

    @JsonKey(name: 'location') Reference? location,
/// [type] Indicates the type of dispensing event that is performed.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [quantity] The number of devices that have been dispensed.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// [preparedDate] The time when the dispensed product was packaged and
/// reviewed.

    @JsonKey(name: 'preparedDate') FhirDateTime? preparedDate,
/// [_preparedDate] Extensions for preparedDate

    @JsonKey(name: '_preparedDate') PrimitiveElement? preparedDateElement,
/// [whenHandedOver] The time the dispensed product was made available to
/// the patient or their representative.

    @JsonKey(name: 'whenHandedOver') FhirDateTime? whenHandedOver,
/// [_whenHandedOver] Extensions for whenHandedOver

    @JsonKey(name: '_whenHandedOver') PrimitiveElement? whenHandedOverElement,
/// [destination] Identification of the facility/location where the device
/// was /should be shipped to, as part of the dispense process.

    @JsonKey(name: 'destination') Reference? destination,
/// [note] Extra information about the dispense that could not be conveyed
/// in the other attributes.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [usageInstruction] The full representation of the instructions.

    @JsonKey(name: 'usageInstruction') FhirMarkdown? usageInstruction,
/// [_usageInstruction] Extensions for usageInstruction

    @JsonKey(name: '_usageInstruction') PrimitiveElement? usageInstructionElement,
/// [eventHistory] A summary of the events of interest that have occurred,
/// such as when the dispense was verified.

    @JsonKey(name: 'eventHistory') List<List<Reference>>? eventHistory,
  }) = _$DeviceDispense;

  @override
  String get fhirType => 'DeviceDispense';

  factory DeviceDispense.fromJson(Map<String, dynamic> json) =>
      _$DeviceDispenseFromJson(json);

  factory DeviceDispense.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDispense.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceDispense.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceDispense cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceDispense.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceDispenseFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
