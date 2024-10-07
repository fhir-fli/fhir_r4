import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [MessageDefinition] /// Defines the characteristics of a message that can be shared between
/// systems, including the type of event that initiates the message, the
/// content to be transmitted and what response(s), if any, are permitted.
class MessageDefinition extends DomainResource {
  MessageDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.replaces,
    this.replacesElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    required this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.base,
    this.baseElement,
    this.parent,
    this.parentElement,
    required this.eventCoding,
    required this.eventUri,
    this.eventUriElement,
    this.category,
    this.categoryElement,
    this.focus,
    this.responseRequired,
    this.responseRequiredElement,
    this.allowedResponse,
    this.graph,
    this.graphElement,
  }) : super(resourceType: R4ResourceType.MessageDefinition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// The business identifier that is used to reference the MessageDefinition and
  /// *is* expected to be consistent from server to server.
  final FhirUri? url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this message definition when
  /// it is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the message
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the message definition
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the message definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the message definition.
  final FhirString? title;
  final Element? titleElement;

  /// [replaces] /// A MessageDefinition that is superseded by this definition.
  final List<FhirCanonical>? replaces;
  final List<Element>? replacesElement;

  /// [status] /// The status of this message definition. Enables tracking the life-cycle of
  /// the content.
  final FhirCode status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this message definition is authored for
  /// testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the message definition was published.
  /// The date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the message definition changes.
  final FhirDateTime date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the message
  /// definition.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the message definition from a
  /// consumer's perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate message definition instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the message definition is intended to
  /// be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this message definition is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the message definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  /// and publishing of the message definition.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [base] /// The MessageDefinition that is the basis for the contents of this resource.
  final FhirCanonical? base;
  final Element? baseElement;

  /// [parent] /// Identifies a protocol or workflow that this MessageDefinition represents a
  /// step in.
  final List<FhirCanonical>? parent;
  final List<Element>? parentElement;

  /// [eventCoding] /// Event code or link to the EventDefinition.
  final Coding eventCoding;

  /// [eventUri] /// Event code or link to the EventDefinition.
  final FhirUri eventUri;
  final Element? eventUriElement;

  /// [category] /// The impact of the content of the message.
  final FhirCode? category;
  final Element? categoryElement;

  /// [focus] /// Identifies the resource (or resources) that are being addressed by the
  /// event. For example, the Encounter for an admit message or two Account
  /// records for a merge.
  final List<MessageDefinitionFocus>? focus;

  /// [responseRequired] /// Declare at a message definition level whether a response is required or
  /// only upon error or success, or never.
  final FhirCode? responseRequired;
  final Element? responseRequiredElement;

  /// [allowedResponse] /// Indicates what types of messages may be sent as an application-level
  /// response to this message.
  final List<MessageDefinitionAllowedResponse>? allowedResponse;

  /// [graph] /// Canonical reference to a GraphDefinition. If a URL is provided, it is the
  /// canonical reference to a [GraphDefinition](graphdefinition.html) that it
  /// controls what resources are to be added to the bundle when building the
  /// document. The GraphDefinition can also specify profiles that apply to the
  /// various resources.
  final List<FhirCanonical>? graph;
  final List<Element>? graphElement;
  @override
  MessageDefinition clone() => throw UnimplementedError();
  MessageDefinition copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    Element? urlElement,
    List<Identifier>? identifier,
    FhirString? version,
    Element? versionElement,
    FhirString? name,
    Element? nameElement,
    FhirString? title,
    Element? titleElement,
    List<FhirCanonical>? replaces,
    List<Element>? replacesElement,
    FhirCode? status,
    Element? statusElement,
    FhirBoolean? experimental,
    Element? experimentalElement,
    FhirDateTime? date,
    Element? dateElement,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    Element? purposeElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
    FhirCanonical? base,
    Element? baseElement,
    List<FhirCanonical>? parent,
    List<Element>? parentElement,
    Coding? eventCoding,
    FhirUri? eventUri,
    Element? eventUriElement,
    FhirCode? category,
    Element? categoryElement,
    List<MessageDefinitionFocus>? focus,
    FhirCode? responseRequired,
    Element? responseRequiredElement,
    List<MessageDefinitionAllowedResponse>? allowedResponse,
    List<FhirCanonical>? graph,
    List<Element>? graphElement,
  }) {
    return MessageDefinition(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      replaces: replaces ?? this.replaces,
      replacesElement: replacesElement ?? this.replacesElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      experimental: experimental ?? this.experimental,
      experimentalElement: experimentalElement ?? this.experimentalElement,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
      base: base ?? this.base,
      baseElement: baseElement ?? this.baseElement,
      parent: parent ?? this.parent,
      parentElement: parentElement ?? this.parentElement,
      eventCoding: eventCoding ?? this.eventCoding,
      eventUri: eventUri ?? this.eventUri,
      eventUriElement: eventUriElement ?? this.eventUriElement,
      category: category ?? this.category,
      categoryElement: categoryElement ?? this.categoryElement,
      focus: focus ?? this.focus,
      responseRequired: responseRequired ?? this.responseRequired,
      responseRequiredElement:
          responseRequiredElement ?? this.responseRequiredElement,
      allowedResponse: allowedResponse ?? this.allowedResponse,
      graph: graph ?? this.graph,
      graphElement: graphElement ?? this.graphElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MessageDefinitionFocus] /// Identifies the resource (or resources) that are being addressed by the
/// event. For example, the Encounter for an admit message or two Account
/// records for a merge.
class MessageDefinitionFocus extends BackboneElement {
  MessageDefinitionFocus({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.profile,
    this.profileElement,
    required this.min,
    this.minElement,
    this.max,
    this.maxElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The kind of resource that must be the focus for this message.
  final FhirCode code;
  final Element? codeElement;

  /// [profile] /// A profile that reflects constraints for the focal resource (and potentially
  /// for related resources).
  final FhirCanonical? profile;
  final Element? profileElement;

  /// [min] /// Identifies the minimum number of resources of this type that must be
  /// pointed to by a message in order for it to be valid against this
  /// MessageDefinition.
  final FhirUnsignedInt min;
  final Element? minElement;

  /// [max] /// Identifies the maximum number of resources of this type that must be
  /// pointed to by a message in order for it to be valid against this
  /// MessageDefinition.
  final FhirString? max;
  final Element? maxElement;
  @override
  MessageDefinitionFocus clone() => throw UnimplementedError();
  MessageDefinitionFocus copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    FhirCanonical? profile,
    Element? profileElement,
    FhirUnsignedInt? min,
    Element? minElement,
    FhirString? max,
    Element? maxElement,
  }) {
    return MessageDefinitionFocus(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      profile: profile ?? this.profile,
      profileElement: profileElement ?? this.profileElement,
      min: min ?? this.min,
      minElement: minElement ?? this.minElement,
      max: max ?? this.max,
      maxElement: maxElement ?? this.maxElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MessageDefinitionAllowedResponse] /// Indicates what types of messages may be sent as an application-level
/// response to this message.
class MessageDefinitionAllowedResponse extends BackboneElement {
  MessageDefinitionAllowedResponse({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.message,
    this.messageElement,
    this.situation,
    this.situationElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [message] /// A reference to the message definition that must be adhered to by this
  /// supported response.
  final FhirCanonical message;
  final Element? messageElement;

  /// [situation] /// Provides a description of the circumstances in which this response should
  /// be used (as opposed to one of the alternative responses).
  final FhirMarkdown? situation;
  final Element? situationElement;
  @override
  MessageDefinitionAllowedResponse clone() => throw UnimplementedError();
  MessageDefinitionAllowedResponse copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? message,
    Element? messageElement,
    FhirMarkdown? situation,
    Element? situationElement,
  }) {
    return MessageDefinitionAllowedResponse(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      message: message ?? this.message,
      messageElement: messageElement ?? this.messageElement,
      situation: situation ?? this.situation,
      situationElement: situationElement ?? this.situationElement,
    );
  }
}
