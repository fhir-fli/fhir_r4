import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [OperationDefinition] A formal computable definition of an operation
/// (on the RESTful interface) or a named query (using the search interaction).

@freezed
class OperationDefinition with _$OperationDefinition {
  const OperationDefinition._();

  const factory OperationDefinition({
/// [resourceType] This is a OperationDefinition resource

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
/// [url] An absolute URI that is used to identify this operation
/// definition when it is referenced in a specification, model, design or an
/// instance; also called its canonical identifier. This SHOULD be globally
/// unique and SHOULD be a literal address at which an authoritative instance
/// of this operation definition is (or will be) published. This URL can be the
/// target of a canonical reference. It SHALL remain the same when the
/// operation definition is stored on different servers.

    @JsonKey(name: 'url') FhirUri? url,
/// [_url] Extensions for url

    @JsonKey(name: '_url') PrimitiveElement? urlElement,
/// [identifier] A formal identifier that is used to identify this
/// implementation guide when it is represented in other formats, or referenced
/// in a specification, model, design or an instance.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [version] The identifier that is used to identify this version of the
/// operation definition when it is referenced in a specification, model,
/// design or instance. This is an arbitrary value managed by the operation
/// definition author and is not expected to be globally unique. For example,
/// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
/// available. There is also no expectation that versions can be placed in a
/// lexicographical sequence.

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
/// [name] A natural language name identifying the operation definition.
/// This name should be usable as an identifier for the module by machine
/// processing applications such as code generation.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [title] A short, descriptive, user-friendly title for the operation
/// definition.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [status] The current state of this operation definition.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [experimental] A Boolean value to indicate that this operation
/// definition is authored for testing purposes (or
/// education/evaluation/marketing) and is not intended for genuine usage.

    @JsonKey(name: 'experimental') FhirBoolean? experimental,
/// [_experimental] Extensions for experimental

    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
/// [date] The date  (and optionally time) when the operation definition
/// was last significantly changed. The date must change when the business
/// version changes and it must change if the status code changes. In addition,
/// it should change when the substantive content of the operation definition
/// changes.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [publisher] The name of the organization or individual responsible for
/// the release and ongoing maintenance of the operation definition.

    @JsonKey(name: 'publisher') String? publisher,
/// [_publisher] Extensions for publisher

    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
/// [contact] Contact details to assist a user in finding and communicating
/// with the publisher.

    @JsonKey(name: 'contact') List<List<ContactDetail>>? contact,
/// [description] A free text natural language description of the operation
/// definition from a consumer's perspective.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [useContext] The content was developed with a focus and intent of
/// supporting the contexts that are listed. These contexts may be general
/// categories (gender, age, ...) or may be references to specific programs
/// (insurance plans, studies, ...) and may be used to assist with indexing and
/// searching for appropriate operation definition.

    @JsonKey(name: 'useContext') List<List<UsageContext>>? useContext,
/// [jurisdiction] A legal or geographic region in which the operation
/// definition is intended to be used.

    @JsonKey(name: 'jurisdiction') List<List<CodeableConcept>>? jurisdiction,
/// [purpose] Explanation of why this operation definition is needed and
/// why it has been designed as it has.

    @JsonKey(name: 'purpose') FhirMarkdown? purpose,
/// [_purpose] Extensions for purpose

    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
/// [copyright] A copyright statement relating to the operation definition
/// and/or its contents. Copyright statements are generally legal restrictions
/// on the use and publishing of the operation definition.

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
/// [kind] Whether this is an operation or a named query.

    @JsonKey(name: 'kind') FhirCode? kind,
/// [_kind] Extensions for kind

    @JsonKey(name: '_kind') PrimitiveElement? kindElement,
/// [affectsState] Whether the operation affects state. Side effects such
/// as producing audit trail entries do not count as 'affecting  state'.

    @JsonKey(name: 'affectsState') FhirBoolean? affectsState,
/// [_affectsState] Extensions for affectsState

    @JsonKey(name: '_affectsState') PrimitiveElement? affectsStateElement,
/// [code] The label that is recommended to be used in the URL for this
/// operation. In some cases, servers may need to use a different
/// CapabilityStatement operation.name to differentiate between multiple
/// SearchParameters that happen to have the same code.

    @JsonKey(name: 'code') FhirCode? code,
/// [_code] Extensions for code

    @JsonKey(name: '_code') PrimitiveElement? codeElement,
/// [comment] Additional information about how to use this operation or
/// named query.

    @JsonKey(name: 'comment') FhirMarkdown? comment,
/// [_comment] Extensions for comment

    @JsonKey(name: '_comment') PrimitiveElement? commentElement,
/// [base] Indicates that this operation definition is a constraining
/// profile on the base.

    @JsonKey(name: 'base') FhirCanonical? base,
/// [resource] The types on which this operation can be executed.

    @JsonKey(name: 'resource') List<List<FhirCode>>? resource,
/// [_resource] Extensions for resource

    @JsonKey(name: '_resource') List<PrimitiveElement>? resourceElement,
/// [system] Indicates whether this operation or named query can be invoked
/// at the system level (e.g. without needing to choose a resource type for the
/// context).

    @JsonKey(name: 'system') FhirBoolean? system,
/// [_system] Extensions for system

    @JsonKey(name: '_system') PrimitiveElement? systemElement,
/// [type] Indicates whether this operation or named query can be invoked
/// at the resource type level for any given resource type level (e.g. without
/// needing to choose a specific resource id for the context).

    @JsonKey(name: 'type') FhirBoolean? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [instance] Indicates whether this operation can be invoked on a
/// particular instance of one of the given types.

    @JsonKey(name: 'instance') FhirBoolean? instance,
/// [_instance] Extensions for instance

    @JsonKey(name: '_instance') PrimitiveElement? instanceElement,
/// [inputProfile] Additional validation information for the in parameters
/// - a single profile that covers all the parameters. The profile is a
/// constraint on the parameters resource as a whole.

    @JsonKey(name: 'inputProfile') FhirCanonical? inputProfile,
/// [outputProfile] Additional validation information for the out
/// parameters - a single profile that covers all the parameters. The profile
/// is a constraint on the parameters resource.

    @JsonKey(name: 'outputProfile') FhirCanonical? outputProfile,
/// [parameter] The parameters for the operation/query.

    @JsonKey(name: 'parameter') List<List<OperationDefinition_Parameter>>? parameter,
/// [overload] Defines an appropriate combination of parameters to use when
/// invoking this operation, to help code generators when generating overloaded
/// parameter sets for this operation.

    @JsonKey(name: 'overload') List<List<OperationDefinition_Overload>>? overload,
  }) = _$OperationDefinition;

  @override
  String get fhirType => 'OperationDefinition';

  factory OperationDefinition.fromJson(Map<String, dynamic> json) =>
      _$OperationDefinitionFromJson(json);

  factory OperationDefinition.fromYaml(dynamic yaml) => yaml is String
      ? OperationDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? OperationDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'OperationDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory OperationDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$OperationDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
