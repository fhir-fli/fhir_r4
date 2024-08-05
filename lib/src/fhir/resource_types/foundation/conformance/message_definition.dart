// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'message_definition.freezed.dart';
part 'message_definition.g.dart';

/// [MessageDefinition] Defines the characteristics of a message that can be
@freezed
class MessageDefinition extends DomainResource with _$MessageDefinition {
  /// [MessageDefinition] Defines the characteristics of a message that can be
  MessageDefinition._();

  /// [MessageDefinition] Defines the characteristics of a message that can be
  /// shared between systems, including the type of event that initiates the
  /// message, the content to be transmitted and what response(s), if any, are
  ///  permitted.
  ///
  /// [resourceType] This is a MessageDefinition resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [url] The business identifier that is used to reference the
  /// MessageDefinition and *is* expected to be consistent from server to
  ///  server.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [identifier] A formal identifier that is used to identify this message
  /// definition when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  ///
  /// [version] The identifier that is used to identify this version of the
  /// message definition when it is referenced in a specification, model, design
  /// or instance. This is an arbitrary value managed by the message definition
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There
  /// is also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [name] A natural language name identifying the message definition. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the message
  ///  definition.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [replaces] A MessageDefinition that is superseded by this definition.
  ///
  /// [status] The status of this message definition. Enables tracking the
  ///  life-cycle of the content.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this message definition
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  ///
  /// [experimentalElement] Extensions for experimental
  ///
  /// [date] The date  (and optionally time) when the message definition was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the message definition changes.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [publisher] The name of the organization or individual that published the
  ///  message definition.
  ///
  /// [publisherElement] Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the message
  ///  definition from a consumer's perspective.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate message definition instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the message
  ///  definition is intended to be used.
  ///
  /// [purpose] Explanation of why this message definition is needed and why it
  ///  has been designed as it has.
  ///
  /// [purposeElement] Extensions for purpose
  ///
  /// [copyright] A copyright statement relating to the message definition
  /// and/or its contents. Copyright statements are generally legal restrictions
  ///  on the use and publishing of the message definition.
  ///
  /// [copyrightElement] Extensions for copyright
  ///
  /// [base] The MessageDefinition that is the basis for the contents of this
  ///  resource.
  ///
  /// [parent] Identifies a protocol or workflow that this MessageDefinition
  ///  represents a step in.
  ///
  /// [eventCoding] Event code or link to the EventDefinition.
  ///
  /// [eventUri] Event code or link to the EventDefinition.
  ///
  /// [eventUriElement] Extensions for eventUri
  ///
  /// [category] The impact of the content of the message.
  ///
  /// [categoryElement] Extensions for category
  ///
  /// [focus] Identifies the resource (or resources) that are being addressed
  /// by the event.  For example, the Encounter for an admit message or two
  ///  Account records for a merge.
  ///
  /// [responseRequired] Declare at a message definition level whether a
  ///  response is required or only upon error or success, or never.
  ///
  /// [responseRequiredElement] Extensions for responseRequired
  ///
  /// [allowedResponse] Indicates what types of messages may be sent as an
  ///  application-level response to this message.
  ///
  /// [graph] Canonical reference to a GraphDefinition. If a URL is provided,
  /// it is the canonical reference to a [[[GraphDefinition]]] that it controls
  /// what resources are to be added to the bundle when building the document.
  /// The GraphDefinition can also specify profiles that apply to the various
  ///  resources.
  factory MessageDefinition({
    @Default(R4ResourceType.MessageDefinition)
    @JsonKey(unknownEnumValue: R4ResourceType.MessageDefinition)

    /// [resourceType] This is a MessageDefinition resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [url] The business identifier that is used to reference the
    /// MessageDefinition and *is* expected to be consistent from server to
    ///  server.
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [identifier] A formal identifier that is used to identify this message
    /// definition when it is represented in other formats, or referenced in a
    ///  specification, model, design or an instance.
    List<Identifier>? identifier,

    /// [version] The identifier that is used to identify this version of the
    /// message definition when it is referenced in a specification, model, design
    /// or instance. This is an arbitrary value managed by the message definition
    /// author and is not expected to be globally unique. For example, it might be
    /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There
    /// is also no expectation that versions can be placed in a lexicographical
    ///  sequence.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [name] A natural language name identifying the message definition. This
    /// name should be usable as an identifier for the module by machine
    ///  processing applications such as code generation.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [title] A short, descriptive, user-friendly title for the message
    ///  definition.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [replaces] A MessageDefinition that is superseded by this definition.
    List<FhirCanonical>? replaces,

    /// [status] The status of this message definition. Enables tracking the
    ///  life-cycle of the content.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [experimental] A Boolean value to indicate that this message definition
    /// is authored for testing purposes (or education/evaluation/marketing) and
    ///  is not intended to be used for genuine usage.
    FhirBoolean? experimental,

    /// [experimentalElement] Extensions for experimental
    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,

    /// [date] The date  (and optionally time) when the message definition was
    /// published. The date must change when the business version changes and it
    /// must change if the status code changes. In addition, it should change when
    ///  the substantive content of the message definition changes.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [publisher] The name of the organization or individual that published the
    ///  message definition.
    String? publisher,

    /// [publisherElement] Extensions for publisher
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the publisher.
    List<ContactDetail>? contact,

    /// [description] A free text natural language description of the message
    ///  definition from a consumer's perspective.
    FhirMarkdown? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of
    /// supporting the contexts that are listed. These contexts may be general
    /// categories (gender, age, ...) or may be references to specific programs
    /// (insurance plans, studies, ...) and may be used to assist with indexing
    ///  and searching for appropriate message definition instances.
    List<UsageContext>? useContext,

    /// [jurisdiction] A legal or geographic region in which the message
    ///  definition is intended to be used.
    List<CodeableConcept>? jurisdiction,

    /// [purpose] Explanation of why this message definition is needed and why it
    ///  has been designed as it has.
    FhirMarkdown? purpose,

    /// [purposeElement] Extensions for purpose
    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,

    /// [copyright] A copyright statement relating to the message definition
    /// and/or its contents. Copyright statements are generally legal restrictions
    ///  on the use and publishing of the message definition.
    FhirMarkdown? copyright,

    /// [copyrightElement] Extensions for copyright
    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,

    /// [base] The MessageDefinition that is the basis for the contents of this
    ///  resource.
    FhirCanonical? base,

    /// [parent] Identifies a protocol or workflow that this MessageDefinition
    ///  represents a step in.
    List<FhirCanonical>? parent,

    /// [eventCoding] Event code or link to the EventDefinition.
    Coding? eventCoding,

    /// [eventUri] Event code or link to the EventDefinition.
    FhirUri? eventUri,

    /// [eventUriElement] Extensions for eventUri
    @JsonKey(name: '_eventUri') PrimitiveElement? eventUriElement,

    /// [category] The impact of the content of the message.
    FhirCode? category,

    /// [categoryElement] Extensions for category
    @JsonKey(name: '_category') PrimitiveElement? categoryElement,

    /// [focus] Identifies the resource (or resources) that are being addressed
    /// by the event.  For example, the Encounter for an admit message or two
    ///  Account records for a merge.
    List<MessageDefinitionFocus>? focus,

    /// [responseRequired] Declare at a message definition level whether a
    ///  response is required or only upon error or success, or never.
    FhirCode? responseRequired,

    /// [responseRequiredElement] Extensions for responseRequired
    @JsonKey(name: '_responseRequired')
    PrimitiveElement? responseRequiredElement,

    /// [allowedResponse] Indicates what types of messages may be sent as an
    ///  application-level response to this message.
    List<MessageDefinitionAllowedResponse>? allowedResponse,

    /// [graph] Canonical reference to a GraphDefinition. If a URL is provided,
    /// it is the canonical reference to a [[[GraphDefinition]]] that it controls
    /// what resources are to be added to the bundle when building the document.
    /// The GraphDefinition can also specify profiles that apply to the various
    ///  resources.
    List<FhirCanonical>? graph,
  }) = _MessageDefinition;

  @override
  String get fhirType => 'MessageDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MessageDefinition.fromYaml(dynamic yaml) => yaml is String
      ? MessageDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MessageDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MessageDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MessageDefinition.fromJson(Map<String, dynamic> json) =>
      _$MessageDefinitionFromJson(json);

  /// Acts like a constructor, returns a [MessageDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MessageDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MessageDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
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

/// [MessageDefinitionFocus] Defines the characteristics of a message that
@freezed

/// [MessageDefinitionFocus] Defines the characteristics of a message that
@freezed
class MessageDefinitionFocus extends BackboneElement
    with _$MessageDefinitionFocus {
  /// [MessageDefinitionFocus] Defines the characteristics of a message that
  MessageDefinitionFocus._();

  /// [MessageDefinitionFocus] Defines the characteristics of a message that
  /// can be shared between systems, including the type of event that initiates
  /// the message, the content to be transmitted and what response(s), if any,
  ///  are permitted.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [code] The kind of resource that must be the focus for this message.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [profile] A profile that reflects constraints for the focal resource (and
  ///  potentially for related resources).
  ///
  /// [min] Identifies the minimum number of resources of this type that must
  /// be pointed to by a message in order for it to be valid against this
  ///  MessageDefinition.
  ///
  /// [minElement] Extensions for min
  ///
  /// [max] Identifies the maximum number of resources of this type that must
  /// be pointed to by a message in order for it to be valid against this
  ///  MessageDefinition.
  ///
  /// [maxElement] Extensions for max
  factory MessageDefinitionFocus({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [code] The kind of resource that must be the focus for this message.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [profile] A profile that reflects constraints for the focal resource (and
    ///  potentially for related resources).
    FhirCanonical? profile,

    /// [min] Identifies the minimum number of resources of this type that must
    /// be pointed to by a message in order for it to be valid against this
    ///  MessageDefinition.
    FhirUnsignedInt? min,

    /// [minElement] Extensions for min
    @JsonKey(name: '_min') PrimitiveElement? minElement,

    /// [max] Identifies the maximum number of resources of this type that must
    /// be pointed to by a message in order for it to be valid against this
    ///  MessageDefinition.
    String? max,

    /// [maxElement] Extensions for max
    @JsonKey(name: '_max') PrimitiveElement? maxElement,
  }) = _MessageDefinitionFocus;

  @override
  String get fhirType => 'MessageDefinitionFocus';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MessageDefinitionFocus.fromYaml(dynamic yaml) => yaml is String
      ? MessageDefinitionFocus.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MessageDefinitionFocus.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MessageDefinitionFocus cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MessageDefinitionFocus.fromJson(Map<String, dynamic> json) =>
      _$MessageDefinitionFocusFromJson(json);

  /// Acts like a constructor, returns a [MessageDefinitionFocus], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MessageDefinitionFocus.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MessageDefinitionFocusFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
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

/// [MessageDefinitionAllowedResponse] Defines the characteristics of a
@freezed

/// [MessageDefinitionAllowedResponse] Defines the characteristics of a
@freezed
class MessageDefinitionAllowedResponse extends BackboneElement
    with _$MessageDefinitionAllowedResponse {
  /// [MessageDefinitionAllowedResponse] Defines the characteristics of a
  MessageDefinitionAllowedResponse._();

  /// [MessageDefinitionAllowedResponse] Defines the characteristics of a
  /// message that can be shared between systems, including the type of event
  /// that initiates the message, the content to be transmitted and what
  ///  response(s), if any, are permitted.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [message] A reference to the message definition that must be adhered to
  ///  by this supported response.
  ///
  /// [situation] Provides a description of the circumstances in which this
  ///  response should be used (as opposed to one of the alternative responses).
  ///
  /// [situationElement] Extensions for situation
  factory MessageDefinitionAllowedResponse({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [message] A reference to the message definition that must be adhered to
    ///  by this supported response.
    required FhirCanonical message,

    /// [situation] Provides a description of the circumstances in which this
    ///  response should be used (as opposed to one of the alternative responses).
    FhirMarkdown? situation,

    /// [situationElement] Extensions for situation
    @JsonKey(name: '_situation') PrimitiveElement? situationElement,
  }) = _MessageDefinitionAllowedResponse;

  @override
  String get fhirType => 'MessageDefinitionAllowedResponse';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MessageDefinitionAllowedResponse.fromYaml(dynamic yaml) => yaml
          is String
      ? MessageDefinitionAllowedResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MessageDefinitionAllowedResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MessageDefinitionAllowedResponse cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory MessageDefinitionAllowedResponse.fromJson(
          Map<String, dynamic> json) =>
      _$MessageDefinitionAllowedResponseFromJson(json);

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
