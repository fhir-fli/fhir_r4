import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DeviceDefinition] The characteristics, operational status and
/// capabilities of a medical-related component of a medical device.

@freezed
class DeviceDefinition with _$DeviceDefinition {
  const DeviceDefinition._();

  const factory DeviceDefinition({
/// [resourceType] This is a DeviceDefinition resource

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
/// [url] An absolute URI that is used to identify this {{title}} when it
/// is referenced in a specification, model, design or an instance; also called
/// its canonical identifier. This SHOULD be globally unique and SHOULD be a
/// literal address at which an authoritative instance of this {{title}} is (or
/// will be) published. This URL can be the target of a canonical reference. It
/// SHALL remain the same when the {{title}} is stored on different servers.

    @JsonKey(name: 'url') FhirUri? url,
/// [_url] Extensions for url

    @JsonKey(name: '_url') PrimitiveElement? urlElement,
/// [identifier] Unique instance identifiers assigned to a device by the
/// software, manufacturers, other organizations or owners. For example: handle
/// ID. The identifier is typically valued if the udiDeviceIdentifier,
/// partNumber or modelNumber is not valued and represents a different type of
/// identifier.  However, it is permissible to still include those identifiers
/// in DeviceDefinition.identifier with the appropriate identifier.type.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [version] The identifier that is used to identify this version of the
/// {{title}} when it is referenced in a specification, model, design or
/// instance. This is an arbitrary value managed by the {{title}} author and is
/// not expected to be globally unique. For example, it might be a timestamp
/// (e.g. yyyymmdd) if a managed version is not available. There is also no
/// expectation that versions can be placed in a lexicographical sequence
/// without additional knowledge.  (See the versionAlgorithm element.)

    @JsonKey(name: 'version') String? version,
/// [_version] Extensions for version

    @JsonKey(name: '_version') PrimitiveElement? versionElement,
/// [versionAlgorithmString] Indicates the mechanism used to compare
/// versions to determine which is more current.

    @JsonKey(name: 'versionAlgorithmString') String? versionAlgorithmString,
/// [_versionAlgorithmString] Extensions for versionAlgorithmString

    @JsonKey(name: '_versionAlgorithmString') PrimitiveElement? versionAlgorithmStringElement,
/// [versionAlgorithmCoding] Indicates the mechanism used to compare
/// versions to determine which is more current.

    @JsonKey(name: 'versionAlgorithmCoding') Coding? versionAlgorithmCoding,
/// [name] A natural language name identifying the {{title}}. This name
/// should be usable as an identifier for the resource by machine processing
/// applications such as code generation.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [title] A short, descriptive, user-friendly title for the {{title}}.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [status] The current state of this {{title}}.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [experimental] A Boolean value to indicate that this {{title}} is
/// authored for testing purposes (or education/evaluation/marketing) and is
/// not intended for genuine usage.

    @JsonKey(name: 'experimental') FhirBoolean? experimental,
/// [_experimental] Extensions for experimental

    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
/// [date] The date (and optionally time) when the {{title}} was last
/// significantly changed. The date must change when the business version
/// changes and it must change if the status code changes. In addition, it
/// should change when the substantive content of the {{title}} changes.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [publisher] The name of the organization or individual responsible for
/// the release and ongoing maintenance of the {{title}}.

    @JsonKey(name: 'publisher') String? publisher,
/// [_publisher] Extensions for publisher

    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
/// [contact] Contact details for an organization or a particular human
/// that is responsible for the device.

    @JsonKey(name: 'contact') List<List<ContactPoint>>? contact,
/// [description] Additional information to describe the device.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [useContext] The content was developed with a focus and intent of
/// supporting the contexts that are listed. These contexts may be general
/// categories (gender, age, ...) or may be references to specific programs
/// (insurance plans, studies, ...) and may be used to assist with indexing and
/// searching for appropriate {{title}}s.

    @JsonKey(name: 'useContext') List<List<UsageContext>>? useContext,
/// [jurisdiction] A legal or geographic region in which the {{title}} is
/// intended to be used.

    @JsonKey(name: 'jurisdiction') List<List<CodeableConcept>>? jurisdiction,
/// [purpose] Explanation of why this {{title}} is needed and why it has
/// been designed as it has.

    @JsonKey(name: 'purpose') FhirMarkdown? purpose,
/// [_purpose] Extensions for purpose

    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
/// [copyright] A copyright statement relating to the {{title}} and/or its
/// contents. Copyright statements are generally legal restrictions on the use
/// and publishing of the {{title}}.

    @JsonKey(name: 'copyright') FhirMarkdown? copyright,
/// [_copyright] Extensions for copyright

    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
/// [copyrightLabel] A short string (<50 characters), suitable for
/// inclusion in a page footer that identifies the copyright holder, effective
/// period, and optionally whether rights are resctricted. (e.g. 'All rights
/// reserved', 'Some rights reserved').

    @JsonKey(name: 'copyrightLabel') String? copyrightLabel,
/// [_copyrightLabel] Extensions for copyrightLabel

    @JsonKey(name: '_copyrightLabel') PrimitiveElement? copyrightLabelElement,
/// [udiDeviceIdentifier] Unique device identifier (UDI) assigned to device
/// label or package.  Note that the Device may include multiple udiCarriers as
/// it either may include just the udiCarrier for the jurisdiction it is sold,
/// or for multiple jurisdictions it could have been sold.

    @JsonKey(name: 'udiDeviceIdentifier') List<List<DeviceDefinition_UdiDeviceIdentifier>>? udiDeviceIdentifier,
/// [regulatoryIdentifier] Identifier associated with the regulatory
/// documentation (certificates, technical documentation, post-market
/// surveillance documentation and reports) of a set of device models sharing
/// the same intended purpose, risk class and essential design and
/// manufacturing characteristics. One example is the Basic UDI-DI in Europe.

    @JsonKey(name: 'regulatoryIdentifier') List<List<DeviceDefinition_RegulatoryIdentifier>>? regulatoryIdentifier,
/// [partNumber] The part number or catalog number of the device.

    @JsonKey(name: 'partNumber') String? partNumber,
/// [_partNumber] Extensions for partNumber

    @JsonKey(name: '_partNumber') PrimitiveElement? partNumberElement,
/// [manufacturer] A name of the manufacturer  or legal representative e.g.
/// labeler. Whether this is the actual manufacturer or the labeler or
/// responsible depends on implementation and jurisdiction.

    @JsonKey(name: 'manufacturer') Reference? manufacturer,
/// [deviceName] The name or names of the device as given by the
/// manufacturer.

    @JsonKey(name: 'deviceName') List<List<DeviceDefinition_DeviceName>>? deviceName,
/// [modelNumber] The model number for the device for example as defined by
/// the manufacturer or labeler, or other agency.

    @JsonKey(name: 'modelNumber') String? modelNumber,
/// [_modelNumber] Extensions for modelNumber

    @JsonKey(name: '_modelNumber') PrimitiveElement? modelNumberElement,
/// [classification] What kind of device or device system this is.

    @JsonKey(name: 'classification') List<List<DeviceDefinition_Classification>>? classification,
/// [conformsTo] Identifies the standards, specifications, or formal
/// guidances for the capabilities supported by the device. The device may be
/// certified as conformant to these specifications e.g., communication,
/// performance, process, measurement, or specialization standards.

    @JsonKey(name: 'conformsTo') List<List<DeviceDefinition_ConformsTo>>? conformsTo,
/// [hasPart] A device that is part (for example a component) of the
/// present device.

    @JsonKey(name: 'hasPart') List<List<DeviceDefinition_HasPart>>? hasPart,
/// [packaging] Information about the packaging of the device, i.e. how the
/// device is packaged.

    @JsonKey(name: 'packaging') List<List<DeviceDefinition_Packaging>>? packaging,
/// [deviceVersion] The version of the device or software.

    @JsonKey(name: 'deviceVersion') List<List<DeviceDefinition_DeviceVersion>>? deviceVersion,
/// [safety] Safety characteristics of the device.

    @JsonKey(name: 'safety') List<List<CodeableConcept>>? safety,
/// [shelfLifeStorage] Shelf Life and storage information.

    @JsonKey(name: 'shelfLifeStorage') List<List<ProductShelfLife>>? shelfLifeStorage,
/// [languageCode] Language code for the human-readable text strings
/// produced by the device (all supported).

    @JsonKey(name: 'languageCode') List<List<CodeableConcept>>? languageCode,
/// [property] Static or essentially fixed characteristics or features of
/// this kind of device that are otherwise not captured in more specific
/// attributes, e.g., time or timing attributes, resolution, accuracy, and
/// physical attributes.

    @JsonKey(name: 'property') List<List<DeviceDefinition_Property>>? property,
/// [owner] An organization that is responsible for the provision and
/// ongoing maintenance of the device.

    @JsonKey(name: 'owner') Reference? owner,
/// [link] An associated device, attached to, used with, communicating with
/// or linking a previous or new device model to the focal device.

    @JsonKey(name: 'link') List<List<DeviceDefinition_Link>>? link,
/// [note] Descriptive information, usage information or implantation
/// information that is not captured in an existing element.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [material] A substance used to create the material(s) of which the
/// device is made.

    @JsonKey(name: 'material') List<List<DeviceDefinition_Material>>? material,
/// [productionIdentifierInUDI] Indicates the production identifier(s) that
/// are expected to appear in the UDI carrier on the device label.

    @JsonKey(name: 'productionIdentifierInUDI') List<List<CodeableConcept>>? productionIdentifierInUDI,
/// [guideline] Information aimed at providing directions for the usage of
/// this model of device.

    @JsonKey(name: 'guideline') DeviceDefinition_Guideline? guideline,
/// [correctiveAction] Tracking of latest field safety corrective action.

    @JsonKey(name: 'correctiveAction') DeviceDefinition_CorrectiveAction? correctiveAction,
/// [chargeItem] Billing code or reference associated with the device.

    @JsonKey(name: 'chargeItem') List<List<DeviceDefinition_ChargeItem>>? chargeItem,
  }) = _$DeviceDefinition;

  @override
  String get fhirType => 'DeviceDefinition';

  factory DeviceDefinition.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinitionFromJson(json);

  factory DeviceDefinition.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
