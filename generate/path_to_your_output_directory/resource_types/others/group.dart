import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Group] Represents a defined collection of entities that may be
/// discussed or acted upon collectively but which are not expected to act
/// collectively, and are not formally or legally recognized; i.e. a collection
/// of entities that isn't an Organization.

@freezed
class Group with _$Group {
  const Group._();

  const factory Group({
/// [resourceType] This is a Group resource

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
/// [url] An absolute URI that is used to identify this Group when it is
/// referenced in a specification, model, design or an instance; also called
/// its canonical identifier. This SHOULD be globally unique and SHOULD be a
/// literal address at which an authoritative instance of this Group is (or
/// will be) published. This URL can be the target of a canonical reference. It
/// SHALL remain the same when the Group is stored on different servers.

    @JsonKey(name: 'url') FhirUri? url,
/// [_url] Extensions for url

    @JsonKey(name: '_url') PrimitiveElement? urlElement,
/// [identifier] Business identifiers assigned to this participant by one
/// of the applications involved.  These identifiers remain constant as the
/// resource is updated and propagates from server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [version] The identifier that is used to identify this version of the
/// Group when it is referenced in a specification, model, design or instance.
/// This is an arbitrary value managed by the Group author and is not expected
/// to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd)
/// if a managed version is not available. There is also no expectation that
/// versions can be placed in a lexicographical sequence without additional
/// knowledge.

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
/// [name] A label assigned to the group for human identification and
/// communication.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [title] A short, descriptive, user-friendly title for the Group.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [status] The current state of this Group.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [experimental] A Boolean value to indicate that this Group is authored
/// for testing purposes (or education/evaluation/marketing) and is not
/// intended for genuine usage.

    @JsonKey(name: 'experimental') FhirBoolean? experimental,
/// [_experimental] Extensions for experimental

    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
/// [date] The date (and optionally time) when the Group was last
/// significantly changed. The date must change when the business version
/// changes and it must change if the status code changes. In addition, it
/// should change when the substantive content of the Group changes.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [publisher] The name of the organization or individual responsible for
/// the release and ongoing maintenance of the Group.

    @JsonKey(name: 'publisher') String? publisher,
/// [_publisher] Extensions for publisher

    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
/// [contact] Contact details to assist a user in finding and communicating
/// with the publisher.

    @JsonKey(name: 'contact') List<List<ContactDetail>>? contact,
/// [description] Explanation of what the group represents and how it is
/// intended to be used.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [useContext] The content was developed with a focus and intent of
/// supporting the contexts that are listed. These contexts may be general
/// categories (gender, age, ...) or may be references to specific programs
/// (insurance plans, studies, ...) and may be used to assist with indexing and
/// searching for appropriate Groups.

    @JsonKey(name: 'useContext') List<List<UsageContext>>? useContext,
/// [jurisdiction] A legal or geographic region in which the {{title}} is
/// intended to be used.

    @JsonKey(name: 'jurisdiction') List<List<CodeableConcept>>? jurisdiction,
/// [purpose] Explanation of why this Group is needed and why it has been
/// designed as it has.

    @JsonKey(name: 'purpose') FhirMarkdown? purpose,
/// [_purpose] Extensions for purpose

    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
/// [copyright] A copyright statement relating to the Group and/or its
/// contents. Copyright statements are generally legal restrictions on the use
/// and publishing of the Group.

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
/// [type] Identifies the broad classification of the kind of resources the
/// group includes.

    @JsonKey(name: 'type') FhirCode? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [membership] Basis for membership in the Group:
///
/// * 'definitional': The Group.characteristics specified are both necessary
/// and sufficient to determine membership. All entities that meet the criteria
/// are considered to be members of the group, whether referenced by the group
/// or not. If members are present, they are individuals that happen to be
/// known as meeting the Group.characteristics. The list cannot be presumed to
/// be complete.
/// * 'conceptual': The Group.characteristics specified are both necessary and
/// sufficient to determine membership. The 'conceptual' Group is a
/// 'definitional' Group in which the Group.type is not bound to FHIR types.
/// * 'enumerated': The Group.characteristics are necessary but not sufficient
/// to determine membership. Membership is determined by being listed as one of
/// the Group.member.

    @JsonKey(name: 'membership') FhirCode? membership,
/// [_membership] Extensions for membership

    @JsonKey(name: '_membership') PrimitiveElement? membershipElement,
/// [code] Provides a specific type of resource the group includes; e.g.
/// "cow", "syringe", etc.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [quantity] A count of the number of resource instances that are part of
/// the group.

    @JsonKey(name: 'quantity') FhirUnsignedInt? quantity,
/// [_quantity] Extensions for quantity

    @JsonKey(name: '_quantity') PrimitiveElement? quantityElement,
/// [managingEntity] Entity responsible for defining and maintaining Group
/// characteristics and/or registered members.

    @JsonKey(name: 'managingEntity') Reference? managingEntity,
/// [combinationMethod] Used to specify how two or more characteristics are
/// combined.

    @JsonKey(name: 'combinationMethod') FhirCode? combinationMethod,
/// [_combinationMethod] Extensions for combinationMethod

    @JsonKey(name: '_combinationMethod') PrimitiveElement? combinationMethodElement,
/// [combinationThreshold] Provides the value of "n" when "at-least" or
/// "at-most" codes are used for combinationMethod.

    @JsonKey(name: 'combinationThreshold') FhirPositiveInt? combinationThreshold,
/// [_combinationThreshold] Extensions for combinationThreshold

    @JsonKey(name: '_combinationThreshold') PrimitiveElement? combinationThresholdElement,
/// [characteristic] Identifies traits whose presence r absence is shared
/// by members of the group.

    @JsonKey(name: 'characteristic') List<List<Group_Characteristic>>? characteristic,
/// [member] Identifies the resource instances that are members of the
/// group.

    @JsonKey(name: 'member') List<List<Group_Member>>? member,
  }) = _$Group;

  @override
  String get fhirType => 'Group';

  factory Group.fromJson(Map<String, dynamic> json) =>
      _$GroupFromJson(json);

  factory Group.fromYaml(dynamic yaml) => yaml is String
      ? Group.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Group.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Group cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Group.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$GroupFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
