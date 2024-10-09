import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'evidence_variable.g.dart';

/// [EvidenceVariable] /// The EvidenceVariable resource describes an element that knowledge
/// (Evidence) is about.
@JsonSerializable()
class EvidenceVariable extends DomainResource {
  EvidenceVariable({
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
    this.shortTitle,
    this.shortTitleElement,
    this.subtitle,
    this.subtitleElement,
    required this.status,
    this.statusElement,
    this.date,
    this.dateElement,
    this.description,
    this.descriptionElement,
    this.note,
    this.useContext,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.actual,
    this.actualElement,
    this.characteristicCombination,
    this.characteristicCombinationElement,
    this.characteristic,
    this.handling,
    this.handlingElement,
    this.category,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.EvidenceVariable);
  @override
  String get fhirType => 'EvidenceVariable';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this evidence variable when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this
  /// evidence variable is (or will be) published. This URL can be the target of
  /// a canonical reference. It SHALL remain the same when the evidence variable
  /// is stored on different servers.
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this evidence variable when it
  /// is represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the evidence
  /// variable when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the evidence variable
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence. To provide a version consistent with the Decision Support Service
  /// specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more
  /// information on versioning knowledge assets, refer to the Decision Support
  /// Service specification. Note that a version is required for non-experimental
  /// active artifacts.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [name] /// A natural language name identifying the evidence variable. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the evidence variable.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [shortTitle] /// The short title provides an alternate title for use in informal descriptive
  /// contexts where the full, formal title is not necessary.
  @JsonKey(name: 'shortTitle')
  final FhirString? shortTitle;
  @JsonKey(name: '_shortTitle')
  final Element? shortTitleElement;

  /// [subtitle] /// An explanatory or alternate title for the EvidenceVariable giving
  /// additional information about its content.
  @JsonKey(name: 'subtitle')
  final FhirString? subtitle;
  @JsonKey(name: '_subtitle')
  final Element? subtitleElement;

  /// [status] /// The status of this evidence variable. Enables tracking the life-cycle of
  /// the content.
  @JsonKey(name: 'status')
  final PublicationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [date] /// The date (and optionally time) when the evidence variable was published.
  /// The date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the evidence variable changes.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [description] /// A free text natural language description of the evidence variable from a
  /// consumer's perspective.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [note] /// A human-readable string to clarify or explain concepts about the resource.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate evidence variable instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [publisher] /// The name of the organization or individual that published the evidence
  /// variable.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [author] /// An individiual or organization primarily involved in the creation and
  /// maintenance of the content.
  @JsonKey(name: 'author')
  final List<ContactDetail>? author;

  /// [editor] /// An individual or organization primarily responsible for internal coherence
  /// of the content.
  @JsonKey(name: 'editor')
  final List<ContactDetail>? editor;

  /// [reviewer] /// An individual or organization primarily responsible for review of some
  /// aspect of the content.
  @JsonKey(name: 'reviewer')
  final List<ContactDetail>? reviewer;

  /// [endorser] /// An individual or organization responsible for officially endorsing the
  /// content for use in some setting.
  @JsonKey(name: 'endorser')
  final List<ContactDetail>? endorser;

  /// [relatedArtifact] /// Related artifacts such as additional documentation, justification, or
  /// bibliographic references.
  @JsonKey(name: 'relatedArtifact')
  final List<RelatedArtifact>? relatedArtifact;

  /// [actual] /// True if the actual variable measured, false if a conceptual representation
  /// of the intended variable.
  @JsonKey(name: 'actual')
  final FhirBoolean? actual;
  @JsonKey(name: '_actual')
  final Element? actualElement;

  /// [characteristicCombination] /// Used to specify if two or more characteristics are combined with OR or AND.
  @JsonKey(name: 'characteristicCombination')
  final CharacteristicCombination? characteristicCombination;
  @JsonKey(name: '_characteristicCombination')
  final Element? characteristicCombinationElement;

  /// [characteristic] /// A characteristic that defines the members of the evidence element. Multiple
  /// characteristics are applied with "and" semantics.
  @JsonKey(name: 'characteristic')
  final List<EvidenceVariableCharacteristic>? characteristic;

  /// [handling] /// Used for an outcome to classify.
  @JsonKey(name: 'handling')
  final EvidenceVariableHandling? handling;
  @JsonKey(name: '_handling')
  final Element? handlingElement;

  /// [category] /// A grouping (or set of values) described along with other groupings to
  /// specify the set of groupings allowed for the variable.
  @JsonKey(name: 'category')
  final List<EvidenceVariableCategory>? category;
  factory EvidenceVariable.fromJson(Map<String, dynamic> json) =>
      _$EvidenceVariableFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EvidenceVariableToJson(this);

  @override
  EvidenceVariable clone() => throw UnimplementedError();
  @override
  EvidenceVariable copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
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
    FhirString? shortTitle,
    Element? shortTitleElement,
    FhirString? subtitle,
    Element? subtitleElement,
    PublicationStatus? status,
    Element? statusElement,
    FhirDateTime? date,
    Element? dateElement,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<Annotation>? note,
    List<UsageContext>? useContext,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    FhirBoolean? actual,
    Element? actualElement,
    CharacteristicCombination? characteristicCombination,
    Element? characteristicCombinationElement,
    List<EvidenceVariableCharacteristic>? characteristic,
    EvidenceVariableHandling? handling,
    Element? handlingElement,
    List<EvidenceVariableCategory>? category,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceVariable(
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
      shortTitle: shortTitle ?? this.shortTitle,
      shortTitleElement: shortTitleElement ?? this.shortTitleElement,
      subtitle: subtitle ?? this.subtitle,
      subtitleElement: subtitleElement ?? this.subtitleElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      note: note ?? this.note,
      useContext: useContext ?? this.useContext,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      author: author ?? this.author,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      actual: actual ?? this.actual,
      actualElement: actualElement ?? this.actualElement,
      characteristicCombination:
          characteristicCombination ?? this.characteristicCombination,
      characteristicCombinationElement: characteristicCombinationElement ??
          this.characteristicCombinationElement,
      characteristic: characteristic ?? this.characteristic,
      handling: handling ?? this.handling,
      handlingElement: handlingElement ?? this.handlingElement,
      category: category ?? this.category,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceVariable.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceVariable.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceVariable.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceVariable cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceVariable.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceVariable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EvidenceVariableCharacteristic] /// A characteristic that defines the members of the evidence element. Multiple
/// characteristics are applied with "and" semantics.
@JsonSerializable()
class EvidenceVariableCharacteristic extends BackboneElement {
  EvidenceVariableCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.definitionReference,
    this.definitionCanonical,
    this.definitionCanonicalElement,
    this.definitionCodeableConcept,
    this.definitionExpression,
    this.method,
    this.device,
    this.exclude,
    this.excludeElement,
    this.timeFromStart,
    this.groupMeasure,
    this.groupMeasureElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'EvidenceVariableCharacteristic';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// A short, natural language description of the characteristic that could be
  /// used to communicate the criteria to an end-user.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [definitionReference] /// Define members of the evidence element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis
  /// onset in the last year).
  @JsonKey(name: 'definitionReference')
  final Reference? definitionReference;

  /// [definitionCanonical] /// Define members of the evidence element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis
  /// onset in the last year).
  @JsonKey(name: 'definitionCanonical')
  final FhirCanonical? definitionCanonical;
  @JsonKey(name: '_definitionCanonical')
  final Element? definitionCanonicalElement;

  /// [definitionCodeableConcept] /// Define members of the evidence element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis
  /// onset in the last year).
  @JsonKey(name: 'definitionCodeableConcept')
  final CodeableConcept? definitionCodeableConcept;

  /// [definitionExpression] /// Define members of the evidence element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis
  /// onset in the last year).
  @JsonKey(name: 'definitionExpression')
  final FhirExpression? definitionExpression;

  /// [method] /// Method used for describing characteristic.
  @JsonKey(name: 'method')
  final CodeableConcept? method;

  /// [device] /// Device used for determining characteristic.
  @JsonKey(name: 'device')
  final Reference? device;

  /// [exclude] /// When true, members with this characteristic are excluded from the element.
  @JsonKey(name: 'exclude')
  final FhirBoolean? exclude;
  @JsonKey(name: '_exclude')
  final Element? excludeElement;

  /// [timeFromStart] /// Indicates duration, period, or point of observation from the participant's
  /// study entry.
  @JsonKey(name: 'timeFromStart')
  final EvidenceVariableTimeFromStart? timeFromStart;

  /// [groupMeasure] /// Indicates how elements are aggregated within the study effective period.
  @JsonKey(name: 'groupMeasure')
  final GroupMeasure? groupMeasure;
  @JsonKey(name: '_groupMeasure')
  final Element? groupMeasureElement;
  factory EvidenceVariableCharacteristic.fromJson(Map<String, dynamic> json) =>
      _$EvidenceVariableCharacteristicFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EvidenceVariableCharacteristicToJson(this);

  @override
  EvidenceVariableCharacteristic clone() => throw UnimplementedError();
  @override
  EvidenceVariableCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    Reference? definitionReference,
    FhirCanonical? definitionCanonical,
    Element? definitionCanonicalElement,
    CodeableConcept? definitionCodeableConcept,
    FhirExpression? definitionExpression,
    CodeableConcept? method,
    Reference? device,
    FhirBoolean? exclude,
    Element? excludeElement,
    EvidenceVariableTimeFromStart? timeFromStart,
    GroupMeasure? groupMeasure,
    Element? groupMeasureElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceVariableCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      definitionReference: definitionReference ?? this.definitionReference,
      definitionCanonical: definitionCanonical ?? this.definitionCanonical,
      definitionCanonicalElement:
          definitionCanonicalElement ?? this.definitionCanonicalElement,
      definitionCodeableConcept:
          definitionCodeableConcept ?? this.definitionCodeableConcept,
      definitionExpression: definitionExpression ?? this.definitionExpression,
      method: method ?? this.method,
      device: device ?? this.device,
      exclude: exclude ?? this.exclude,
      excludeElement: excludeElement ?? this.excludeElement,
      timeFromStart: timeFromStart ?? this.timeFromStart,
      groupMeasure: groupMeasure ?? this.groupMeasure,
      groupMeasureElement: groupMeasureElement ?? this.groupMeasureElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceVariableCharacteristic.fromYaml(dynamic yaml) => yaml
          is String
      ? EvidenceVariableCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceVariableCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceVariableCharacteristic cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceVariableCharacteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceVariableCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EvidenceVariableTimeFromStart] /// Indicates duration, period, or point of observation from the participant's
/// study entry.
@JsonSerializable()
class EvidenceVariableTimeFromStart extends BackboneElement {
  EvidenceVariableTimeFromStart({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.quantity,
    this.range,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'EvidenceVariableTimeFromStart';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// A short, natural language description.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [quantity] /// Used to express the observation at a defined amount of time after the study
  /// start.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [range] /// Used to express the observation within a period after the study start.
  @JsonKey(name: 'range')
  final Range? range;

  /// [note] /// A human-readable string to clarify or explain concepts about the resource.
  @JsonKey(name: 'note')
  final List<Annotation>? note;
  factory EvidenceVariableTimeFromStart.fromJson(Map<String, dynamic> json) =>
      _$EvidenceVariableTimeFromStartFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EvidenceVariableTimeFromStartToJson(this);

  @override
  EvidenceVariableTimeFromStart clone() => throw UnimplementedError();
  @override
  EvidenceVariableTimeFromStart copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    Quantity? quantity,
    Range? range,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceVariableTimeFromStart(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      quantity: quantity ?? this.quantity,
      range: range ?? this.range,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceVariableTimeFromStart.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceVariableTimeFromStart.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceVariableTimeFromStart.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceVariableTimeFromStart cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceVariableTimeFromStart.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceVariableTimeFromStart.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EvidenceVariableCategory] /// A grouping (or set of values) described along with other groupings to
/// specify the set of groupings allowed for the variable.
@JsonSerializable()
class EvidenceVariableCategory extends BackboneElement {
  EvidenceVariableCategory({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.nameElement,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'EvidenceVariableCategory';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// A human-readable title or representation of the grouping.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [valueCodeableConcept] /// Value or set of values that define the grouping.
  @JsonKey(name: 'valueCodeableConcept')
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] /// Value or set of values that define the grouping.
  @JsonKey(name: 'valueQuantity')
  final Quantity? valueQuantity;

  /// [valueRange] /// Value or set of values that define the grouping.
  @JsonKey(name: 'valueRange')
  final Range? valueRange;
  factory EvidenceVariableCategory.fromJson(Map<String, dynamic> json) =>
      _$EvidenceVariableCategoryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EvidenceVariableCategoryToJson(this);

  @override
  EvidenceVariableCategory clone() => throw UnimplementedError();
  @override
  EvidenceVariableCategory copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    Range? valueRange,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceVariableCategory(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceVariableCategory.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceVariableCategory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceVariableCategory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceVariableCategory cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceVariableCategory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceVariableCategory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
