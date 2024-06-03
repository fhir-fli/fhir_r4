import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Device] A type of a manufactured item that is used in the provision of
/// healthcare without being substantially changed through that activity. The
/// device may be a medical or non-medical device.

@freezed
class Device with _$Device {
  const Device._();

  const factory Device({
/// [resourceType] This is a Device resource

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
/// [identifier] Unique instance identifiers assigned to a device by
/// manufacturers other organizations or owners.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [displayName] The name used to display by default when the device is
/// referenced. Based on intent of use by the resource creator, this may
/// reflect one of the names in Device.name, or may be another simple name.

    @JsonKey(name: 'displayName') String? displayName,
/// [_displayName] Extensions for displayName

    @JsonKey(name: '_displayName') PrimitiveElement? displayNameElement,
/// [definition] The reference to the definition for the device.

    @JsonKey(name: 'definition') CodeableReference? definition,
/// [udiCarrier] Unique device identifier (UDI) assigned to device label or
/// package.  Note that the Device may include multiple udiCarriers as it
/// either may include just the udiCarrier for the jurisdiction it is sold, or
/// for multiple jurisdictions it could have been sold.

    @JsonKey(name: 'udiCarrier') List<List<Device_UdiCarrier>>? udiCarrier,
/// [status] The Device record status. This is not the status of the device
/// like availability.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [availabilityStatus] The availability of the device.

    @JsonKey(name: 'availabilityStatus') CodeableConcept? availabilityStatus,
/// [biologicalSourceEvent] An identifier that supports traceability to the
/// event during which material in this product from one or more biological
/// entities was obtained or pooled.

    @JsonKey(name: 'biologicalSourceEvent') Identifier? biologicalSourceEvent,
/// [manufacturer] A name of the manufacturer or entity legally responsible
/// for the device.

    @JsonKey(name: 'manufacturer') String? manufacturer,
/// [_manufacturer] Extensions for manufacturer

    @JsonKey(name: '_manufacturer') PrimitiveElement? manufacturerElement,
/// [manufactureDate] The date and time when the device was manufactured.

    @JsonKey(name: 'manufactureDate') FhirDateTime? manufactureDate,
/// [_manufactureDate] Extensions for manufactureDate

    @JsonKey(name: '_manufactureDate') PrimitiveElement? manufactureDateElement,
/// [expirationDate] The date and time beyond which this device is no
/// longer valid or should not be used (if applicable).

    @JsonKey(name: 'expirationDate') FhirDateTime? expirationDate,
/// [_expirationDate] Extensions for expirationDate

    @JsonKey(name: '_expirationDate') PrimitiveElement? expirationDateElement,
/// [lotNumber] Lot number assigned by the manufacturer.

    @JsonKey(name: 'lotNumber') String? lotNumber,
/// [_lotNumber] Extensions for lotNumber

    @JsonKey(name: '_lotNumber') PrimitiveElement? lotNumberElement,
/// [serialNumber] The serial number assigned by the organization when the
/// device was manufactured.

    @JsonKey(name: 'serialNumber') String? serialNumber,
/// [_serialNumber] Extensions for serialNumber

    @JsonKey(name: '_serialNumber') PrimitiveElement? serialNumberElement,
/// [name] This represents the manufacturer's name of the device as
/// provided by the device, from a UDI label, or by a person describing the
/// Device.  This typically would be used when a person provides the name(s) or
/// when the device represents one of the names available from
/// DeviceDefinition.

    @JsonKey(name: 'name') List<List<Device_Name>>? name,
/// [modelNumber] The manufacturer's model number for the device.

    @JsonKey(name: 'modelNumber') String? modelNumber,
/// [_modelNumber] Extensions for modelNumber

    @JsonKey(name: '_modelNumber') PrimitiveElement? modelNumberElement,
/// [partNumber] The part number or catalog number of the device.

    @JsonKey(name: 'partNumber') String? partNumber,
/// [_partNumber] Extensions for partNumber

    @JsonKey(name: '_partNumber') PrimitiveElement? partNumberElement,
/// [category] Devices may be associated with one or more categories.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [type] The kind or type of device. A device instance may have more than
/// one type - in which case those are the types that apply to the specific
/// instance of the device.

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// [deviceVersion] The actual design of the device or software version
/// running on the device.

    @JsonKey(name: 'deviceVersion') List<List<Device_DeviceVersion>>? deviceVersion,
/// [conformsTo] Identifies the standards, specifications, or formal
/// guidances for the capabilities supported by the device. The device may be
/// certified as conformant to these specifications e.g., communication,
/// performance, process, measurement, or specialization standards.

    @JsonKey(name: 'conformsTo') List<List<Device_ConformsTo>>? conformsTo,
/// [property] Static or essentially fixed characteristics or features of
/// the device (e.g., time or timing attributes, resolution, accuracy, intended
/// use or instructions for use, and physical attributes) that are not
/// otherwise captured in more specific attributes.

    @JsonKey(name: 'property') List<List<Device_Property>>? property,
/// [mode] The designated condition for performing a task with the device.

    @JsonKey(name: 'mode') CodeableConcept? mode,
/// [cycle] The series of occurrences that repeats during the operation of
/// the device.

    @JsonKey(name: 'cycle') Count? cycle,
/// [duration] A measurement of time during the device's operation (e.g.,
/// days, hours, mins, etc.).

    @JsonKey(name: 'duration') FhirDuration? duration,
/// [owner] An organization that is responsible for the provision and
/// ongoing maintenance of the device.

    @JsonKey(name: 'owner') Reference? owner,
/// [contact] Contact details for an organization or a particular human
/// that is responsible for the device.

    @JsonKey(name: 'contact') List<List<ContactPoint>>? contact,
/// [location] The place where the device can be found.

    @JsonKey(name: 'location') Reference? location,
/// [url] A network address on which the device may be contacted directly.

    @JsonKey(name: 'url') FhirUri? url,
/// [_url] Extensions for url

    @JsonKey(name: '_url') PrimitiveElement? urlElement,
/// [endpoint] Technical endpoints providing access to services provided by
/// the device defined at this resource.

    @JsonKey(name: 'endpoint') List<List<Reference>>? endpoint,
/// [gateway] The linked device acting as a communication controller, data
/// collector, translator, or concentrator for the current device (e.g., mobile
/// phone application that relays a blood pressure device's data).

    @JsonKey(name: 'gateway') List<List<CodeableReference>>? gateway,
/// [note] Descriptive information, usage information or implantation
/// information that is not captured in an existing element.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [safety] Provides additional safety characteristics about a medical
/// device.  For example devices containing latex.

    @JsonKey(name: 'safety') List<List<CodeableConcept>>? safety,
/// [parent] The higher level or encompassing device that this device is a
/// logical part of.

    @JsonKey(name: 'parent') Reference? parent,
  }) = _$Device;

  @override
  String get fhirType => 'Device';

  factory Device.fromJson(Map<String, dynamic> json) =>
      _$DeviceFromJson(json);

  factory Device.fromYaml(dynamic yaml) => yaml is String
      ? Device.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Device.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Device cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Device.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
