import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'composition.g.dart';

/// [Composition] /// A set of healthcare-related information that is assembled together into a
/// single logical package that provides a single coherent statement of
/// meaning, establishes its own context and that has clinical attestation with
/// regard to who is making the statement. A Composition defines the structure
/// and narrative content necessary for a document. However, a Composition
/// alone does not constitute a document. Rather, the Composition must be the
/// first entry in a Bundle where Bundle.type=document, and any other resources
/// referenced from Composition must be included as subsequent entries in the
/// Bundle (for example Patient, Practitioner, Encounter, etc.).
@JsonSerializable()
class Composition extends DomainResource {
  Composition({
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
    this.identifier,
    required this.status,
    this.statusElement,
    required this.type,
    this.category,
    this.subject,
    this.encounter,
    required this.date,
    this.dateElement,
    required this.author,
    required this.title,
    this.titleElement,
    this.confidentiality,
    this.confidentialityElement,
    this.attester,
    this.custodian,
    this.relatesTo,
    this.event,
    this.section,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Composition, fhirType: 'Composition');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A version-independent identifier for the Composition. This identifier stays
  /// constant as the composition is changed over time.
  @JsonKey(name: 'identifier')
  final Identifier? identifier;

  /// [status] /// The workflow/clinical status of this composition. The status is a marker
  /// for the clinical standing of the document.
  @JsonKey(name: 'status')
  final CompositionStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [type] /// Specifies the particular kind of composition (e.g. History and Physical,
  /// Discharge Summary, Progress Note). This usually equates to the purpose of
  /// making the composition.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [category] /// A categorization for the type of the composition - helps for indexing and
  /// searching. This may be implied by or derived from the code specified in the
  /// Composition Type.
  @JsonKey(name: 'category')
  final List<CodeableConcept>? category;

  /// [subject] /// Who or what the composition is about. The composition can be about a
  /// person, (patient or healthcare practitioner), a device (e.g. a machine) or
  /// even a group of subjects (such as a document about a herd of livestock, or
  /// a set of patients that share a common exposure).
  @JsonKey(name: 'subject')
  final Reference? subject;

  /// [encounter] /// Describes the clinical encounter or type of care this documentation is
  /// associated with.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [date] /// The composition editing time, when the composition was last logically
  /// changed by the author.
  @JsonKey(name: 'date')
  final FhirDateTime date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [author] /// Identifies who is responsible for the information in the composition, not
  /// necessarily who typed it in.
  @JsonKey(name: 'author')
  final List<Reference> author;

  /// [title] /// Official human-readable label for the composition.
  @JsonKey(name: 'title')
  final FhirString title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [confidentiality] /// The code specifying the level of confidentiality of the Composition.
  @JsonKey(name: 'confidentiality')
  final FhirCode? confidentiality;
  @JsonKey(name: '_confidentiality')
  final Element? confidentialityElement;

  /// [attester] /// A participant who has attested to the accuracy of the composition/document.
  @JsonKey(name: 'attester')
  final List<CompositionAttester>? attester;

  /// [custodian] /// Identifies the organization or group who is responsible for ongoing
  /// maintenance of and access to the composition/document information.
  @JsonKey(name: 'custodian')
  final Reference? custodian;

  /// [relatesTo] /// Relationships that this composition has with other compositions or
  /// documents that already exist.
  @JsonKey(name: 'relatesTo')
  final List<CompositionRelatesTo>? relatesTo;

  /// [event] /// The clinical service, such as a colonoscopy or an appendectomy, being
  /// documented.
  @JsonKey(name: 'event')
  final List<CompositionEvent>? event;

  /// [section] /// The root of the sections that make up the composition.
  @JsonKey(name: 'section')
  final List<CompositionSection>? section;
  factory Composition.fromJson(Map<String, dynamic> json) =>
      _$CompositionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CompositionToJson(this);

  @override
  Composition clone() => throw UnimplementedError();
  @override
  Composition copyWith({
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
    Identifier? identifier,
    CompositionStatus? status,
    Element? statusElement,
    CodeableConcept? type,
    List<CodeableConcept>? category,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? date,
    Element? dateElement,
    List<Reference>? author,
    FhirString? title,
    Element? titleElement,
    FhirCode? confidentiality,
    Element? confidentialityElement,
    List<CompositionAttester>? attester,
    Reference? custodian,
    List<CompositionRelatesTo>? relatesTo,
    List<CompositionEvent>? event,
    List<CompositionSection>? section,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Composition(
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
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      type: type ?? this.type,
      category: category ?? this.category,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      author: author ?? this.author,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      confidentiality: confidentiality ?? this.confidentiality,
      confidentialityElement:
          confidentialityElement ?? this.confidentialityElement,
      attester: attester ?? this.attester,
      custodian: custodian ?? this.custodian,
      relatesTo: relatesTo ?? this.relatesTo,
      event: event ?? this.event,
      section: section ?? this.section,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Composition.fromYaml(dynamic yaml) => yaml is String
      ? Composition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Composition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Composition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Composition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Composition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CompositionAttester] /// A participant who has attested to the accuracy of the composition/document.
@JsonSerializable()
class CompositionAttester extends BackboneElement {
  CompositionAttester({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.modeElement,
    this.time,
    this.timeElement,
    this.party,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CompositionAttester');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [mode] /// The type of attestation the authenticator offers.
  @JsonKey(name: 'mode')
  final CompositionAttestationMode mode;
  @JsonKey(name: '_mode')
  final Element? modeElement;

  /// [time] /// When the composition was attested by the party.
  @JsonKey(name: 'time')
  final FhirDateTime? time;
  @JsonKey(name: '_time')
  final Element? timeElement;

  /// [party] /// Who attested the composition in the specified way.
  @JsonKey(name: 'party')
  final Reference? party;
  factory CompositionAttester.fromJson(Map<String, dynamic> json) =>
      _$CompositionAttesterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CompositionAttesterToJson(this);

  @override
  CompositionAttester clone() => throw UnimplementedError();
  @override
  CompositionAttester copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CompositionAttestationMode? mode,
    Element? modeElement,
    FhirDateTime? time,
    Element? timeElement,
    Reference? party,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CompositionAttester(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      time: time ?? this.time,
      timeElement: timeElement ?? this.timeElement,
      party: party ?? this.party,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CompositionAttester.fromYaml(dynamic yaml) => yaml is String
      ? CompositionAttester.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CompositionAttester.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CompositionAttester cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CompositionAttester.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CompositionAttester.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CompositionRelatesTo] /// Relationships that this composition has with other compositions or
/// documents that already exist.
@JsonSerializable()
class CompositionRelatesTo extends BackboneElement {
  CompositionRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    required this.targetIdentifier,
    required this.targetReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CompositionRelatesTo');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The type of relationship that this composition has with anther composition
  /// or document.
  @JsonKey(name: 'code')
  final DocumentRelationshipType code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [targetIdentifier] /// The target composition/document of this relationship.
  @JsonKey(name: 'targetIdentifier')
  final Identifier targetIdentifier;

  /// [targetReference] /// The target composition/document of this relationship.
  @JsonKey(name: 'targetReference')
  final Reference targetReference;
  factory CompositionRelatesTo.fromJson(Map<String, dynamic> json) =>
      _$CompositionRelatesToFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CompositionRelatesToToJson(this);

  @override
  CompositionRelatesTo clone() => throw UnimplementedError();
  @override
  CompositionRelatesTo copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DocumentRelationshipType? code,
    Element? codeElement,
    Identifier? targetIdentifier,
    Reference? targetReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CompositionRelatesTo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      targetIdentifier: targetIdentifier ?? this.targetIdentifier,
      targetReference: targetReference ?? this.targetReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CompositionRelatesTo.fromYaml(dynamic yaml) => yaml is String
      ? CompositionRelatesTo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CompositionRelatesTo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CompositionRelatesTo cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CompositionRelatesTo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CompositionRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CompositionEvent] /// The clinical service, such as a colonoscopy or an appendectomy, being
/// documented.
@JsonSerializable()
class CompositionEvent extends BackboneElement {
  CompositionEvent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.period,
    this.detail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CompositionEvent');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// This list of codes represents the main clinical acts, such as a colonoscopy
  /// or an appendectomy, being documented. In some cases, the event is inherent
  /// in the typeCode, such as a "History and Physical Report" in which the
  /// procedure being documented is necessarily a "History and Physical" act.
  @JsonKey(name: 'code')
  final List<CodeableConcept>? code;

  /// [period] /// The period of time covered by the documentation. There is no assertion that
  /// the documentation is a complete representation for this period, only that
  /// it documents events during this time.
  @JsonKey(name: 'period')
  final Period? period;

  /// [detail] /// The description and/or reference of the event(s) being documented. For
  /// example, this could be used to document such a colonoscopy or an
  /// appendectomy.
  @JsonKey(name: 'detail')
  final List<Reference>? detail;
  factory CompositionEvent.fromJson(Map<String, dynamic> json) =>
      _$CompositionEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CompositionEventToJson(this);

  @override
  CompositionEvent clone() => throw UnimplementedError();
  @override
  CompositionEvent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? code,
    Period? period,
    List<Reference>? detail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CompositionEvent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      period: period ?? this.period,
      detail: detail ?? this.detail,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CompositionEvent.fromYaml(dynamic yaml) => yaml is String
      ? CompositionEvent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CompositionEvent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CompositionEvent cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CompositionEvent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CompositionEvent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CompositionSection] /// The root of the sections that make up the composition.
@JsonSerializable()
class CompositionSection extends BackboneElement {
  CompositionSection({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.title,
    this.titleElement,
    this.code,
    this.author,
    this.focus,
    this.text,
    this.mode,
    this.modeElement,
    this.orderedBy,
    this.entry,
    this.emptyReason,
    this.section,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CompositionSection');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [title] /// The label for this particular section. This will be part of the rendered
  /// content for the document, and is often used to build a table of contents.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [code] /// A code identifying the kind of content contained within the section. This
  /// must be consistent with the section title.
  @JsonKey(name: 'code')
  final DocumentSectionCodes? code;

  /// [author] /// Identifies who is responsible for the information in this section, not
  /// necessarily who typed it in.
  @JsonKey(name: 'author')
  final List<Reference>? author;

  /// [focus] /// The actual focus of the section when it is not the subject of the
  /// composition, but instead represents something or someone associated with
  /// the subject such as (for a patient subject) a spouse, parent, fetus, or
  /// donor. If not focus is specified, the focus is assumed to be focus of the
  /// parent section, or, for a section in the Composition itself, the subject of
  /// the composition. Sections with a focus SHALL only include resources where
  /// the logical subject (patient, subject, focus, etc.) matches the section
  /// focus, or the resources have no logical subject (few resources).
  @JsonKey(name: 'focus')
  final Reference? focus;

  /// [text] /// A human-readable narrative that contains the attested content of the
  /// section, used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative.
  @JsonKey(name: 'text')
  final Narrative? text;

  /// [mode] /// How the entry list was prepared - whether it is a working list that is
  /// suitable for being maintained on an ongoing basis, or if it represents a
  /// snapshot of a list of items from another source, or whether it is a
  /// prepared list where items may be marked as added, modified or deleted.
  @JsonKey(name: 'mode')
  final ListMode? mode;
  @JsonKey(name: '_mode')
  final Element? modeElement;

  /// [orderedBy] /// Specifies the order applied to the items in the section entries.
  @JsonKey(name: 'orderedBy')
  final ListOrderCodes? orderedBy;

  /// [entry] /// A reference to the actual resource from which the narrative in the section
  /// is derived.
  @JsonKey(name: 'entry')
  final List<Reference>? entry;

  /// [emptyReason] /// If the section is empty, why the list is empty. An empty section typically
  /// has some text explaining the empty reason.
  @JsonKey(name: 'emptyReason')
  final ListEmptyReasons? emptyReason;

  /// [section] /// A nested sub-section within this section.
  @JsonKey(name: 'section')
  final List<CompositionSection>? section;
  factory CompositionSection.fromJson(Map<String, dynamic> json) =>
      _$CompositionSectionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CompositionSectionToJson(this);

  @override
  CompositionSection clone() => throw UnimplementedError();
  @override
  CompositionSection copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    Element? titleElement,
    DocumentSectionCodes? code,
    List<Reference>? author,
    Reference? focus,
    Narrative? text,
    ListMode? mode,
    Element? modeElement,
    ListOrderCodes? orderedBy,
    List<Reference>? entry,
    ListEmptyReasons? emptyReason,
    List<CompositionSection>? section,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CompositionSection(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      code: code ?? this.code,
      author: author ?? this.author,
      focus: focus ?? this.focus,
      text: text ?? this.text,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      orderedBy: orderedBy ?? this.orderedBy,
      entry: entry ?? this.entry,
      emptyReason: emptyReason ?? this.emptyReason,
      section: section ?? this.section,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CompositionSection.fromYaml(dynamic yaml) => yaml is String
      ? CompositionSection.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CompositionSection.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CompositionSection cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CompositionSection.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CompositionSection.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
