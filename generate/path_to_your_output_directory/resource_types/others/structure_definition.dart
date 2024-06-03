import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [StructureDefinition] A definition of a FHIR structure. This resource
/// is used to describe the underlying resources, data types defined in FHIR,
/// and also for describing extensions and constraints on resources and data
/// types.

@freezed
class StructureDefinition with _$StructureDefinition {
  const StructureDefinition._();

  const factory StructureDefinition({
/// [resourceType] This is a StructureDefinition resource

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
/// [url] An absolute URI that is used to identify this structure
/// definition when it is referenced in a specification, model, design or an
/// instance; also called its canonical identifier. This SHOULD be globally
/// unique and SHOULD be a literal address at which an authoritative instance
/// of this structure definition is (or will be) published. This URL can be the
/// target of a canonical reference. It SHALL remain the same when the
/// structure definition is stored on different servers.

    @JsonKey(name: 'url') FhirUri? url,
/// [_url] Extensions for url

    @JsonKey(name: '_url') PrimitiveElement? urlElement,
/// [identifier] A formal identifier that is used to identify this
/// structure definition when it is represented in other formats, or referenced
/// in a specification, model, design or an instance.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [version] The identifier that is used to identify this version of the
/// structure definition when it is referenced in a specification, model,
/// design or instance. This is an arbitrary value managed by the structure
/// definition author and is not expected to be globally unique. There is no
/// expectation that versions can be placed in a lexicographical sequence, so
/// authors are encouraged to populate the
/// StructureDefinition.versionAlgorithm[x] element to enable comparisons. If
/// there is no managed version available, authors can consider using ISO
/// date/time syntax (e.g., '2023-01-01').

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
/// [name] A natural language name identifying the structure definition.
/// This name should be usable as an identifier for the module by machine
/// processing applications such as code generation.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [title] A short, descriptive, user-friendly title for the structure
/// definition.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [status] The status of this structure definition. Enables tracking the
/// life-cycle of the content.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [experimental] A Boolean value to indicate that this structure
/// definition is authored for testing purposes (or
/// education/evaluation/marketing) and is not intended to be used for genuine
/// usage.

    @JsonKey(name: 'experimental') FhirBoolean? experimental,
/// [_experimental] Extensions for experimental

    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
/// [date] The date  (and optionally time) when the structure definition
/// was last significantly changed. The date must change when the business
/// version changes and it must change if the status code changes. In addition,
/// it should change when the substantive content of the structure definition
/// changes.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [publisher] The name of the organization or individual responsible for
/// the release and ongoing maintenance of the structure definition.

    @JsonKey(name: 'publisher') String? publisher,
/// [_publisher] Extensions for publisher

    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
/// [contact] Contact details to assist a user in finding and communicating
/// with the publisher.

    @JsonKey(name: 'contact') List<List<ContactDetail>>? contact,
/// [description] A free text natural language description of the structure
/// definition from a consumer's perspective.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [useContext] The content was developed with a focus and intent of
/// supporting the contexts that are listed. These contexts may be general
/// categories (gender, age, ...) or may be references to specific programs
/// (insurance plans, studies, ...) and may be used to assist with indexing and
/// searching for appropriate structure definition instances.

    @JsonKey(name: 'useContext') List<List<UsageContext>>? useContext,
/// [jurisdiction] A legal or geographic region in which the structure
/// definition is intended to be used.

    @JsonKey(name: 'jurisdiction') List<List<CodeableConcept>>? jurisdiction,
/// [purpose] Explanation of why this structure definition is needed and
/// why it has been designed as it has.

    @JsonKey(name: 'purpose') FhirMarkdown? purpose,
/// [_purpose] Extensions for purpose

    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
/// [copyright] A copyright statement relating to the structure definition
/// and/or its contents. Copyright statements are generally legal restrictions
/// on the use and publishing of the structure definition.  The short copyright
/// declaration (e.g. (c) '2015+ xyz organization' should be sent in the
/// copyrightLabel element.

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
/// [keyword] (DEPRECATED) A set of key words or terms from external
/// terminologies that may be used to assist with indexing and searching of
/// templates nby describing the use of this structure definition, or the
/// content it describes.

    @JsonKey(name: 'keyword') List<List<Coding>>? keyword,
/// [fhirVersion] The version of the FHIR specification on which this
/// StructureDefinition is based - this is the formal version of the
/// specification, without the revision number, e.g.
/// [publication].[major].[minor], which is 4.6.0. for this version.

    @JsonKey(name: 'fhirVersion') FhirCode? fhirVersion,
/// [_fhirVersion] Extensions for fhirVersion

    @JsonKey(name: '_fhirVersion') PrimitiveElement? fhirVersionElement,
/// [mapping] An external specification that the content is mapped to.

    @JsonKey(name: 'mapping') List<List<StructureDefinition_Mapping>>? mapping,
/// [kind] Defines the kind of structure that this definition is
/// describing.

    @JsonKey(name: 'kind') FhirCode? kind,
/// [_kind] Extensions for kind

    @JsonKey(name: '_kind') PrimitiveElement? kindElement,
/// [abstract] Whether structure this definition describes is abstract or
/// not  - that is, whether the structure is not intended to be instantiated.
/// For Resources and Data types, abstract types will never be exchanged
/// between systems.

    @JsonKey(name: 'abstract') FhirBoolean? abstract,
/// [_abstract] Extensions for abstract

    @JsonKey(name: '_abstract') PrimitiveElement? abstractElement,
/// [context] Identifies the types of resource or data type elements to
/// which the extension can be applied. For more guidance on using the
/// 'context' element, see the [defining extensions
/// page](defining-extensions.html#context).

    @JsonKey(name: 'context') List<List<StructureDefinition_Context>>? context,
/// [contextInvariant] A set of rules as FHIRPath Invariants about when the
/// extension can be used (e.g. co-occurrence variants for the extension). All
/// the rules must be true.

    @JsonKey(name: 'contextInvariant') List<List<String>>? contextInvariant,
/// [_contextInvariant] Extensions for contextInvariant

    @JsonKey(name: '_contextInvariant') List<PrimitiveElement>? contextInvariantElement,
/// [type] The type this structure describes. If the derivation kind is
/// 'specialization' then this is the master definition for a type, and there
/// is always one of these (a data type, an extension, a resource, including
/// abstract ones). Otherwise the structure definition is a constraint on the
/// stated type (and in this case, the type cannot be an abstract type).
/// References are URLs that are relative to
/// http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
/// http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
/// allowed in logical models, where they are required.

    @JsonKey(name: 'type') FhirUri? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [baseDefinition] An absolute URI that is the base structure from which
/// this type is derived, either by specialization or constraint.

    @JsonKey(name: 'baseDefinition') FhirCanonical? baseDefinition,
/// [derivation] How the type relates to the baseDefinition.

    @JsonKey(name: 'derivation') FhirCode? derivation,
/// [_derivation] Extensions for derivation

    @JsonKey(name: '_derivation') PrimitiveElement? derivationElement,
/// [snapshot] A snapshot view is expressed in a standalone form that can
/// be used and interpreted without considering the base StructureDefinition.

    @JsonKey(name: 'snapshot') StructureDefinition_Snapshot? snapshot,
/// [differential] A differential view is expressed relative to the base
/// StructureDefinition - a statement of differences that it applies.

    @JsonKey(name: 'differential') StructureDefinition_Differential? differential,
  }) = _$StructureDefinition;

  @override
  String get fhirType => 'StructureDefinition';

  factory StructureDefinition.fromJson(Map<String, dynamic> json) =>
      _$StructureDefinitionFromJson(json);

  factory StructureDefinition.fromYaml(dynamic yaml) => yaml is String
      ? StructureDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory StructureDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
