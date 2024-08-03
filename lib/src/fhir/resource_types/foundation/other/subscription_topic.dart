// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'subscription_topic.freezed.dart';
part 'subscription_topic.g.dart';

/// [SubscriptionTopic] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
@freezed
class SubscriptionTopic extends DomainResource with _$SubscriptionTopic {
  /// [SubscriptionTopic] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
  SubscriptionTopic._();

  /// [SubscriptionTopic] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.

  ///
  /// [resourceType] This is a SubscriptionTopic resource;
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  ///
  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  ///
  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  ///
  /// [language] The base language in which the resource is written.;
  ///
  /// [languageElement] (_language): Extensions for language;
  ///
  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  ///
  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [url] An absolute URI that is used to identify this subscription topic when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this subscription topic is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the subscription topic is stored on different servers.;
  ///
  /// [urlElement] (_url): Extensions for url;
  ///
  /// [identifier] Business identifiers assigned to this subscription topic by the performer and/or other systems.  These identifiers remain constant as the resource is updated and propagates from server to server.;
  ///
  /// [version] The identifier that is used to identify this version of the subscription topic when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the Topic author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions are orderable.;
  ///
  /// [versionElement] (_version): Extensions for version;
  ///
  /// [title] A short, descriptive, user-friendly title for the SubscriptionTopic, for example, "admission".;
  ///
  /// [titleElement] (_title): Extensions for title;
  ///
  /// [status] The current state of the SubscriptionTopic.;
  ///
  /// [statusElement] (_status): Extensions for status;
  ///
  /// [experimental] A flag to indicate that this TopSubscriptionTopicic is authored for testing purposes (or education/evaluation/marketing), and is not intended to be used for genuine usage.;
  ///
  /// [experimentalElement] (_experimental): Extensions for experimental;
  ///
  /// [date] For draft definitions, indicates the date of initial creation.  For active definitions, represents the date of activation.  For withdrawn definitions, indicates the date of withdrawal.;
  ///
  /// [dateElement] (_date): Extensions for date;
  ///
  /// [publisher] Helps establish the "authority/credibility" of the SubscriptionTopic.  May also allow for contact.;
  ///
  /// [publisherElement] (_publisher): Extensions for publisher;
  ///
  /// [contact] Contact details to assist a user in finding and communicating with the publisher.;
  ///
  /// [description] A free text natural language description of the Topic from the consumer's perspective.;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [useContext] The content was developed with a focus and intent of supporting the contexts that are listed. These terms may be used to assist with indexing and searching of code system definitions.;
  ///
  /// [jurisdiction] A jurisdiction in which the Topic is intended to be used.;
  ///
  /// [purpose] Explains why this Topic is needed and why it has been designed as it has.;
  ///
  /// [purposeElement] (_purpose): Extensions for purpose;
  ///
  /// [copyright] A copyright statement relating to the SubscriptionTopic and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the SubscriptionTopic.;
  ///
  /// [copyrightElement] (_copyright): Extensions for copyright;
  ///
  /// [derivedFrom] The canonical URL pointing to another FHIR-defined SubscriptionTopic that is adhered to in whole or in part by this SubscriptionTopic.;
  ///
  /// [approvalDate] The date on which the asset content was approved by the publisher. Approval happens once when the content is officially approved for usage.;
  ///
  /// [approvalDateElement] (_approvalDate): Extensions for approvalDate;
  ///
  /// [lastReviewDate] The date on which the asset content was last reviewed. Review happens periodically after that, but doesn't change the original approval date.;
  ///
  /// [lastReviewDateElement] (_lastReviewDate): Extensions for lastReviewDate;
  ///
  /// [effectivePeriod] The period during which the SubscriptionTopic content was or is planned to be effective.;
  ///
  /// [resourceTrigger] A definition of a resource-based event that triggers a notification based on the SubscriptionTopic. The criteria may be just a human readable description and/or a full FHIR search string or FHIRPath expression. Multiple triggers are considered OR joined (e.g., a resource update matching ANY of the definitions will trigger a notification).;
  ///
  /// [eventTrigger] Event definition which can be used to trigger the SubscriptionTopic.;
  ///
  /// [canFilterBy] List of properties by which Subscriptions on the SubscriptionTopic can be filtered. May be defined Search Parameters (e.g., Encounter.patient) or parameters defined within this SubscriptionTopic context (e.g., hub.event).;
  ///
  /// [notificationShape] List of properties to describe the shape (e.g., resources) included in notifications from this Subscription Topic.;
  const factory SubscriptionTopic({
    /// [resourceType] This is a SubscriptionTopic resource;
    @Default(R4ResourceType.SubscriptionTopic) R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
    String? id,

    /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
    FhirUri? implicitRules,

    /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.;
    FhirCode? language,

    /// [languageElement] (_language): Extensions for language;
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [url] An absolute URI that is used to identify this subscription topic when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this subscription topic is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the subscription topic is stored on different servers.;
    FhirUri? url,

    /// [urlElement] (_url): Extensions for url;
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [identifier] Business identifiers assigned to this subscription topic by the performer and/or other systems.  These identifiers remain constant as the resource is updated and propagates from server to server.;
    List<Identifier>? identifier,

    /// [version] The identifier that is used to identify this version of the subscription topic when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the Topic author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions are orderable.;
    String? version,

    /// [versionElement] (_version): Extensions for version;
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [title] A short, descriptive, user-friendly title for the SubscriptionTopic, for example, "admission".;
    String? title,

    /// [titleElement] (_title): Extensions for title;
    @JsonKey(name: '_title') PrimitiveElement? titleElement,
    List<FhirCanonical>? derivedFrom,

    /// [status] The current state of the SubscriptionTopic.;
    FhirCode? status,

    /// [statusElement] (_status): Extensions for status;
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [experimental] A flag to indicate that this TopSubscriptionTopicic is authored for testing purposes (or education/evaluation/marketing), and is not intended to be used for genuine usage.;
    FhirBoolean? experimental,

    /// [experimentalElement] (_experimental): Extensions for experimental;
    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,

    /// [date] For draft definitions, indicates the date of initial creation.  For active definitions, represents the date of activation.  For withdrawn definitions, indicates the date of withdrawal.;
    FhirDateTime? date,

    /// [dateElement] (_date): Extensions for date;
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [publisher] Helps establish the "authority/credibility" of the SubscriptionTopic.  May also allow for contact.;
    String? publisher,

    /// [publisherElement] (_publisher): Extensions for publisher;
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating with the publisher.;
    List<ContactDetail>? contact,

    /// [description] A free text natural language description of the Topic from the consumer's perspective.;
    FhirMarkdown? description,

    /// [descriptionElement] (_description): Extensions for description;
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of supporting the contexts that are listed. These terms may be used to assist with indexing and searching of code system definitions.;
    List<UsageContext>? useContext,

    /// [jurisdiction] A jurisdiction in which the Topic is intended to be used.;
    List<CodeableConcept>? jurisdiction,

    /// [purpose] Explains why this Topic is needed and why it has been designed as it has.;
    FhirMarkdown? purpose,

    /// [purposeElement] (_purpose): Extensions for purpose;
    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,

    /// [copyright] A copyright statement relating to the SubscriptionTopic and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the SubscriptionTopic.;
    FhirMarkdown? copyright,

    /// [copyrightElement] (_copyright): Extensions for copyright;
    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
    FhirDate? approvalDate,
    @JsonKey(name: '_approvalDate') PrimitiveElement? approvalDateElement,
    FhirDate? lastReviewDate,
    @JsonKey(name: '_lastReviewDate') PrimitiveElement? lastReviewDateElement,
    Period? effectivePeriod,
    List<SubscriptionTopicResourceTrigger>? resourceTrigger,
    List<SubscriptionTopicEventTrigger>? eventTrigger,
    List<SubscriptionTopicCanFilterBy>? canFilterBy,
    List<SubscriptionTopicNotificationShape>? notificationShape,
  }) = _SubscriptionTopic;

  @override
  String get fhirType => 'SubscriptionTopic';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubscriptionTopic.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionTopic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubscriptionTopic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubscriptionTopic cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopic.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionTopicFromJson(json);

  /// Acts like a constructor, returns a [SubscriptionTopic], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubscriptionTopic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubscriptionTopicFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [SubscriptionTopicResourceTrigger] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
@freezed

/// [SubscriptionTopicResourceTrigger] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
@freezed
class SubscriptionTopicResourceTrigger extends BackboneElement
    with _$SubscriptionTopicResourceTrigger {
  /// [SubscriptionTopicResourceTrigger] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
  SubscriptionTopicResourceTrigger._();

  /// [SubscriptionTopicResourceTrigger] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [description] The human readable description of this resource trigger for the SubscriptionTopic -  for example, "An Encounter enters the 'in-progress' state".;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [resource] URL of the Resource that is the type used in this resource trigger.  Relative URLs are relative to the StructureDefinition root of the implemented FHIR version (e.g., http://hl7.org/fhir/StructureDefinition). For example, "Patient" maps to http://hl7.org/fhir/StructureDefinition/Patient.  For more information, see <a href="elementdefinition-definitions.html#ElementDefinition.type.code">ElementDefinition.type.code</a>.;
  ///
  /// [resourceElement] (_resource): Extensions for resource;
  ///
  /// [supportedInteraction] The FHIR RESTful interaction which can be used to trigger a notification for the SubscriptionTopic. Multiple values are considered OR joined (e.g., CREATE or UPDATE).;
  ///
  /// [supportedInteractionElement] (_supportedInteraction): Extensions for supportedInteraction;
  ///
  /// [queryCriteria] The FHIR query based rules that the server should use to determine when to trigger a notification for this subscription topic.;
  ///
  /// [fhirPathCriteria] The FHIRPath based rules that the server should use to determine when to trigger a notification for this topic.;
  ///
  /// [fhirPathCriteriaElement] (_fhirPathCriteria): Extensions for fhirPathCriteria;
  const factory SubscriptionTopicResourceTrigger({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
    FhirUri? resource,
    @JsonKey(name: '_resource') PrimitiveElement? resourceElement,
    List<FhirCode>? supportedInteraction,
    @JsonKey(name: '_supportedInteraction')
    List<PrimitiveElement>? supportedInteractionElement,
    SubscriptionTopicQueryCriteria? queryCriteria,
    String? fhirPathCriteria,
    @JsonKey(name: '_fhirPathCriteria')
    PrimitiveElement? fhirPathCriteriaElement,
  }) = _SubscriptionTopicResourceTrigger;

  @override
  String get fhirType => 'SubscriptionTopicResourceTrigger';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubscriptionTopicResourceTrigger.fromYaml(dynamic yaml) => yaml
          is String
      ? SubscriptionTopicResourceTrigger.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubscriptionTopicResourceTrigger.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubscriptionTopicResourceTrigger cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicResourceTrigger.fromJson(
          Map<String, dynamic> json) =>
      _$SubscriptionTopicResourceTriggerFromJson(json);

  /// Acts like a constructor, returns a [SubscriptionTopicResourceTrigger], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubscriptionTopicResourceTrigger.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubscriptionTopicResourceTriggerFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [SubscriptionTopicQueryCriteria] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
@freezed

/// [SubscriptionTopicQueryCriteria] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
@freezed
class SubscriptionTopicQueryCriteria extends BackboneElement
    with _$SubscriptionTopicQueryCriteria {
  /// [SubscriptionTopicQueryCriteria] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
  SubscriptionTopicQueryCriteria._();

  /// [SubscriptionTopicQueryCriteria] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [previous] The FHIR query based rules are applied to the previous resource state (e.g., state before an update).;
  ///
  /// [previousElement] (_previous): Extensions for previous;
  ///
  /// [resultForCreate] For "create" interactions, should the "previous" criteria count as an automatic pass or an automatic fail.;
  ///
  /// [resultForCreateElement] (_resultForCreate): Extensions for resultForCreate;
  ///
  /// [current] The FHIR query based rules are applied to the current resource state (e.g., state after an update).;
  ///
  /// [currentElement] (_current): Extensions for current;
  ///
  /// [resultForDelete] For "delete" interactions, should the "current" criteria count as an automatic pass or an automatic fail.;
  ///
  /// [resultForDeleteElement] (_resultForDelete): Extensions for resultForDelete;
  ///
  /// [requireBoth] If set to true, both current and previous criteria must evaluate true to  trigger a notification for this topic.  Otherwise a notification for this topic will be triggered if either one evaluates to true.;
  ///
  /// [requireBothElement] (_requireBoth): Extensions for requireBoth;
  const factory SubscriptionTopicQueryCriteria({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    String? previous,
    @JsonKey(name: '_previous') PrimitiveElement? previousElement,
    FhirCode? resultForCreate,
    @JsonKey(name: '_resultForCreate') PrimitiveElement? resultForCreateElement,
    String? current,
    @JsonKey(name: '_current') PrimitiveElement? currentElement,
    FhirCode? resultForDelete,
    @JsonKey(name: '_resultForDelete') PrimitiveElement? resultForDeleteElement,
    FhirBoolean? requireBoth,
    @JsonKey(name: '_requireBoth') PrimitiveElement? requireBothElement,
  }) = _SubscriptionTopicQueryCriteria;

  @override
  String get fhirType => 'SubscriptionTopicQueryCriteria';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubscriptionTopicQueryCriteria.fromYaml(dynamic yaml) => yaml
          is String
      ? SubscriptionTopicQueryCriteria.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubscriptionTopicQueryCriteria.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubscriptionTopicQueryCriteria cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicQueryCriteria.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionTopicQueryCriteriaFromJson(json);

  /// Acts like a constructor, returns a [SubscriptionTopicQueryCriteria], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubscriptionTopicQueryCriteria.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubscriptionTopicQueryCriteriaFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [SubscriptionTopicEventTrigger] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
@freezed

/// [SubscriptionTopicEventTrigger] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
@freezed
class SubscriptionTopicEventTrigger extends BackboneElement
    with _$SubscriptionTopicEventTrigger {
  /// [SubscriptionTopicEventTrigger] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
  SubscriptionTopicEventTrigger._();

  /// [SubscriptionTopicEventTrigger] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [description] The human readable description of an event to trigger a notification for the SubscriptionTopic - for example, "Patient Admission, as defined in HL7v2 via message ADT^A01". Multiple values are considered OR joined (e.g., matching any single event listed).;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [event] A well-defined event which can be used to trigger notifications from the SubscriptionTopic.;
  ///
  /// [resource] URL of the Resource that is the focus type used in this event trigger.  Relative URLs are relative to the StructureDefinition root of the implemented FHIR version (e.g., http://hl7.org/fhir/StructureDefinition). For example, "Patient" maps to http://hl7.org/fhir/StructureDefinition/Patient.  For more information, see <a href="elementdefinition-definitions.html#ElementDefinition.type.code">ElementDefinition.type.code</a>.;
  ///
  /// [resourceElement] (_resource): Extensions for resource;
  const factory SubscriptionTopicEventTrigger({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
    required CodeableConcept event,
    FhirUri? resource,
    @JsonKey(name: '_resource') PrimitiveElement? resourceElement,
  }) = _SubscriptionTopicEventTrigger;

  @override
  String get fhirType => 'SubscriptionTopicEventTrigger';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubscriptionTopicEventTrigger.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionTopicEventTrigger.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubscriptionTopicEventTrigger.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubscriptionTopicEventTrigger cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicEventTrigger.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionTopicEventTriggerFromJson(json);

  /// Acts like a constructor, returns a [SubscriptionTopicEventTrigger], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubscriptionTopicEventTrigger.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubscriptionTopicEventTriggerFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [SubscriptionTopicCanFilterBy] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
@freezed

/// [SubscriptionTopicCanFilterBy] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
@freezed
class SubscriptionTopicCanFilterBy extends BackboneElement
    with _$SubscriptionTopicCanFilterBy {
  /// [SubscriptionTopicCanFilterBy] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.
  SubscriptionTopicCanFilterBy._();

  /// [SubscriptionTopicCanFilterBy] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [description] Description of how this filtering parameter is intended to be used.;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [resource] URL of the Resource that is the type used in this filter. This is the "focus" of the topic (or one of them if there are more than one). It will be the same, a generality, or a specificity of SubscriptionTopic.resourceTrigger.resource or SubscriptionTopic.eventTrigger.resource when they are present.;
  ///
  /// [resourceElement] (_resource): Extensions for resource;
  ///
  /// [filterParameter] Either the canonical URL to a search parameter (like "http://hl7.org/fhir/SearchParameter/encounter-patient") or topic-defined parameter (like "hub.event") which is a label for the filter.;
  ///
  /// [filterParameterElement] (_filterParameter): Extensions for filterParameter;
  ///
  /// [filterDefinition] Either the canonical URL to a search parameter (like "http://hl7.org/fhir/SearchParameter/encounter-patient") or the officially-defined URI for a shared filter concept (like "http://example.org/concepts/shared-common-event").;
  ///
  /// [filterDefinitionElement] (_filterDefinition): Extensions for filterDefinition;
  ///
  /// [modifier] Allowable operators to apply when determining matches (Search Modifiers).  If the filterParameter is a SearchParameter, this list of modifiers SHALL be a strict subset of the modifiers defined on that SearchParameter.;
  ///
  /// [modifierElement] (_modifier): Extensions for modifier;
  const factory SubscriptionTopicCanFilterBy({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
    FhirUri? resource,
    @JsonKey(name: '_resource') PrimitiveElement? resourceElement,
    String? filterParameter,
    @JsonKey(name: '_filterParameter') PrimitiveElement? filterParameterElement,
    FhirUri? filterDefinition,
    @JsonKey(name: '_filterDefinition')
    PrimitiveElement? filterDefinitionElement,
    List<FhirCode>? modifier,
    @JsonKey(name: '_modifier') List<PrimitiveElement>? modifierElement,
  }) = _SubscriptionTopicCanFilterBy;

  @override
  String get fhirType => 'SubscriptionTopicCanFilterBy';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubscriptionTopicCanFilterBy.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionTopicCanFilterBy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubscriptionTopicCanFilterBy.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubscriptionTopicCanFilterBy cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicCanFilterBy.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionTopicCanFilterByFromJson(json);

  /// Acts like a constructor, returns a [SubscriptionTopicCanFilterBy], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubscriptionTopicCanFilterBy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubscriptionTopicCanFilterByFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class SubscriptionTopicNotificationShape extends BackboneElement
    with _$SubscriptionTopicNotificationShape {
  SubscriptionTopicNotificationShape._();

  /// [SubscriptionTopicNotificationShape] Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this topic.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [resource] URL of the Resource that is the type used in this shape. This is the "focus" of the topic (or one of them if there are more than one) and the root resource for this shape definition. It will be the same, a generality, or a specificity of SubscriptionTopic.resourceTrigger.resource or SubscriptionTopic.eventTrigger.resource when they are present.;
  ///
  /// [resourceElement] (_resource): Extensions for resource;
  ///
  /// [include] Search-style _include directives, rooted in the resource for this shape. Servers SHOULD include resources listed here, if they exist and the user is authorized to receive them.  Clients SHOULD be prepared to receive these additional resources, but SHALL function properly without them.;
  ///
  /// [includeElement] (_include): Extensions for include;
  ///
  /// [revInclude] Search-style _revinclude directives, rooted in the resource for this shape. Servers SHOULD include resources listed here, if they exist and the user is authorized to receive them.  Clients SHOULD be prepared to receive these additional resources, but SHALL function properly without them.;
  ///
  /// [revIncludeElement] (_revInclude): Extensions for revInclude;
  const factory SubscriptionTopicNotificationShape({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? resource,
    @JsonKey(name: '_resource') PrimitiveElement? resourceElement,
    List<String>? include,
    @JsonKey(name: '_include') List<PrimitiveElement>? includeElement,
    List<String>? revInclude,
    @JsonKey(name: '_revInclude') List<PrimitiveElement>? revIncludeElement,
  }) = _SubscriptionTopicNotificationShape;

  @override
  String get fhirType => 'SubscriptionTopicNotificationShape';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubscriptionTopicNotificationShape.fromYaml(dynamic yaml) => yaml
          is String
      ? SubscriptionTopicNotificationShape.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubscriptionTopicNotificationShape.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubscriptionTopicNotificationShape cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicNotificationShape.fromJson(
          Map<String, dynamic> json) =>
      _$SubscriptionTopicNotificationShapeFromJson(json);

  /// Acts like a constructor, returns a [SubscriptionTopicNotificationShape], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubscriptionTopicNotificationShape.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubscriptionTopicNotificationShapeFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
