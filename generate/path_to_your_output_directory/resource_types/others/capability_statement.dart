import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CapabilityStatement] A Capability Statement documents a set of
/// capabilities (behaviors) of a FHIR Server or Client for a particular
/// version of FHIR that may be used as a statement of actual server
/// functionality or a statement of required or desired server implementation.

@freezed
class CapabilityStatement with _$CapabilityStatement {
  const CapabilityStatement._();

  const factory CapabilityStatement({
/// [resourceType] This is a CapabilityStatement resource

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
/// [url] An absolute URI that is used to identify this capability
/// statement when it is referenced in a specification, model, design or an
/// instance; also called its canonical identifier. This SHOULD be globally
/// unique and SHOULD be a literal address at which an authoritative instance
/// of this capability statement is (or will be) published. This URL can be the
/// target of a canonical reference. It SHALL remain the same when the
/// capability statement is stored on different servers.

    @JsonKey(name: 'url') FhirUri? url,
/// [_url] Extensions for url

    @JsonKey(name: '_url') PrimitiveElement? urlElement,
/// [identifier] A formal identifier that is used to identify this
/// CapabilityStatement when it is represented in other formats, or referenced
/// in a specification, model, design or an instance.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [version] The identifier that is used to identify this version of the
/// capability statement when it is referenced in a specification, model,
/// design or instance. This is an arbitrary value managed by the capability
/// statement author and is not expected to be globally unique. For example, it
/// might be a timestamp (e.g. yyyymmdd) if a managed version is not available.
/// There is also no expectation that versions can be placed in a
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
/// [name] A natural language name identifying the capability statement.
/// This name should be usable as an identifier for the module by machine
/// processing applications such as code generation.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [title] A short, descriptive, user-friendly title for the capability
/// statement.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [status] The status of this capability statement. Enables tracking the
/// life-cycle of the content.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [experimental] A Boolean value to indicate that this capability
/// statement is authored for testing purposes (or
/// education/evaluation/marketing) and is not intended to be used for genuine
/// usage.

    @JsonKey(name: 'experimental') FhirBoolean? experimental,
/// [_experimental] Extensions for experimental

    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
/// [date] The date  (and optionally time) when the capability statement
/// was last significantly changed. The date must change when the business
/// version changes and it must change if the status code changes. In addition,
/// it should change when the substantive content of the capability statement
/// changes.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [publisher] The name of the organization or individual responsible for
/// the release and ongoing maintenance of the capability statement.

    @JsonKey(name: 'publisher') String? publisher,
/// [_publisher] Extensions for publisher

    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
/// [contact] Contact details to assist a user in finding and communicating
/// with the publisher.

    @JsonKey(name: 'contact') List<List<ContactDetail>>? contact,
/// [description] A free text natural language description of the
/// capability statement from a consumer's perspective. Typically, this is used
/// when the capability statement describes a desired rather than an actual
/// solution, for example as a formal expression of requirements as part of an
/// RFP.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [useContext] The content was developed with a focus and intent of
/// supporting the contexts that are listed. These contexts may be general
/// categories (gender, age, ...) or may be references to specific programs
/// (insurance plans, studies, ...) and may be used to assist with indexing and
/// searching for appropriate capability statement instances.

    @JsonKey(name: 'useContext') List<List<UsageContext>>? useContext,
/// [jurisdiction] A legal or geographic region in which the capability
/// statement is intended to be used.

    @JsonKey(name: 'jurisdiction') List<List<CodeableConcept>>? jurisdiction,
/// [purpose] Explanation of why this capability statement is needed and
/// why it has been designed as it has.

    @JsonKey(name: 'purpose') FhirMarkdown? purpose,
/// [_purpose] Extensions for purpose

    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
/// [copyright] A copyright statement relating to the capability statement
/// and/or its contents. Copyright statements are generally legal restrictions
/// on the use and publishing of the capability statement.

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
/// [kind] The way that this statement is intended to be used, to describe
/// an actual running instance of software, a particular product (kind, not
/// instance of software) or a class of implementation (e.g. a desired
/// purchase).

    @JsonKey(name: 'kind') FhirCode? kind,
/// [_kind] Extensions for kind

    @JsonKey(name: '_kind') PrimitiveElement? kindElement,
/// [instantiates] Reference to a canonical URL of another
/// CapabilityStatement that this software implements. This capability
/// statement is a published API description that corresponds to a business
/// service. The server may actually implement a subset of the capability
/// statement it claims to implement, so the capability statement must specify
/// the full capability details.

    @JsonKey(name: 'instantiates') List<List<FhirCanonical>>? instantiates,
/// [imports] Reference to a canonical URL of another CapabilityStatement
/// that this software adds to. The capability statement automatically includes
/// everything in the other statement, and it is not duplicated, though the
/// server may repeat the same resources, interactions and operations to add
/// additional details to them.

    @JsonKey(name: 'imports') List<List<FhirCanonical>>? imports,
/// [software] Software that is covered by this capability statement.  It
/// is used when the capability statement describes the capabilities of a
/// particular software version, independent of an installation.

    @JsonKey(name: 'software') CapabilityStatement_Software? software,
/// [implementation] Identifies a specific implementation instance that is
/// described by the capability statement - i.e. a particular installation,
/// rather than the capabilities of a software program.

    @JsonKey(name: 'implementation') CapabilityStatement_Implementation? implementation,
/// [fhirVersion] The version of the FHIR specification that this
/// CapabilityStatement describes (which SHALL be the same as the FHIR version
/// of the CapabilityStatement itself). There is no default value.

    @JsonKey(name: 'fhirVersion') FhirCode? fhirVersion,
/// [_fhirVersion] Extensions for fhirVersion

    @JsonKey(name: '_fhirVersion') PrimitiveElement? fhirVersionElement,
/// [format] A list of the formats supported by this implementation using
/// their content types.

    @JsonKey(name: 'format') List<List<FhirCode>>? format,
/// [_format] Extensions for format

    @JsonKey(name: '_format') List<PrimitiveElement>? formatElement,
/// [patchFormat] A list of the patch formats supported by this
/// implementation using their content types.

    @JsonKey(name: 'patchFormat') List<List<FhirCode>>? patchFormat,
/// [_patchFormat] Extensions for patchFormat

    @JsonKey(name: '_patchFormat') List<PrimitiveElement>? patchFormatElement,
/// [acceptLanguage] A list of the languages supported by this
/// implementation that are usefully supported in the ```Accept-Language```
/// header.

    @JsonKey(name: 'acceptLanguage') List<List<FhirCode>>? acceptLanguage,
/// [_acceptLanguage] Extensions for acceptLanguage

    @JsonKey(name: '_acceptLanguage') List<PrimitiveElement>? acceptLanguageElement,
/// [implementationGuide] A list of implementation guides that the server
/// does (or should) support in their entirety.

    @JsonKey(name: 'implementationGuide') List<List<FhirCanonical>>? implementationGuide,
/// [rest] A definition of the restful capabilities of the solution, if
/// any.

    @JsonKey(name: 'rest') List<List<CapabilityStatement_Rest>>? rest,
/// [messaging] A description of the messaging capabilities of the
/// solution.

    @JsonKey(name: 'messaging') List<List<CapabilityStatement_Messaging>>? messaging,
/// [document] A document definition.

    @JsonKey(name: 'document') List<List<CapabilityStatement_Document>>? document,
  }) = _$CapabilityStatement;

  @override
  String get fhirType => 'CapabilityStatement';

  factory CapabilityStatement.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementFromJson(json);

  factory CapabilityStatement.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatement.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatement cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CapabilityStatement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatementFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
