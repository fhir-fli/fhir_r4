import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Specimen] A sample to be used for analysis.

@freezed
class Specimen with _$Specimen {
  const Specimen._();

  const factory Specimen({
/// [resourceType] This is a Specimen resource

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
/// [identifier] Id for specimen.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [accessionIdentifier] The identifier assigned by the lab when
/// accessioning specimen(s). This is not necessarily the same as the specimen
/// identifier, depending on local lab procedures.

    @JsonKey(name: 'accessionIdentifier') Identifier? accessionIdentifier,
/// [status] The availability of the specimen.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [type] The kind of material that forms the specimen.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [subject] Where the specimen came from. This may be from patient(s),
/// from a location (e.g., the source of an environmental sample), or a
/// sampling of a substance, a biologically-derived product, or a device.

    @JsonKey(name: 'subject') Reference? subject,
/// [receivedTime] Time when specimen is received by the testing laboratory
/// for processing or testing.

    @JsonKey(name: 'receivedTime') FhirDateTime? receivedTime,
/// [_receivedTime] Extensions for receivedTime

    @JsonKey(name: '_receivedTime') PrimitiveElement? receivedTimeElement,
/// [parent] Reference to the parent (source) specimen which is used when
/// the specimen was either derived from or a component of another specimen.

    @JsonKey(name: 'parent') List<List<Reference>>? parent,
/// [request] Details concerning a service request that required a specimen
/// to be collected.

    @JsonKey(name: 'request') List<List<Reference>>? request,
/// [combined] This element signifies if the specimen is part of a group or
/// pooled.

    @JsonKey(name: 'combined') FhirCode? combined,
/// [_combined] Extensions for combined

    @JsonKey(name: '_combined') PrimitiveElement? combinedElement,
/// [role] The role or reason for the specimen in the testing workflow.

    @JsonKey(name: 'role') List<List<CodeableConcept>>? role,
/// [feature] A physical feature or landmark on a specimen, highlighted for
/// context by the collector of the specimen (e.g. surgeon), that identifies
/// the type of feature as well as its meaning (e.g. the red ink indicating the
/// resection margin of the right lobe of the excised prostate tissue or wire
/// loop at radiologically suspected tumor location).

    @JsonKey(name: 'feature') List<List<Specimen_Feature>>? feature,
/// [collection] Details concerning the specimen collection.

    @JsonKey(name: 'collection') Specimen_Collection? collection,
/// [processing] Details concerning processing and processing steps for the
/// specimen.

    @JsonKey(name: 'processing') List<List<Specimen_Processing>>? processing,
/// [container] The container holding the specimen.  The recursive nature
/// of containers; i.e. blood in tube in tray in rack is not addressed here.

    @JsonKey(name: 'container') List<List<Specimen_Container>>? container,
/// [condition] A mode or state of being that describes the nature of the
/// specimen.

    @JsonKey(name: 'condition') List<List<CodeableConcept>>? condition,
/// [note] To communicate any details or issues about the specimen or
/// during the specimen collection. (for example: broken vial, sent with
/// patient, frozen).

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$Specimen;

  @override
  String get fhirType => 'Specimen';

  factory Specimen.fromJson(Map<String, dynamic> json) =>
      _$SpecimenFromJson(json);

  factory Specimen.fromYaml(dynamic yaml) => yaml is String
      ? Specimen.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Specimen.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Specimen cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Specimen.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SpecimenFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
