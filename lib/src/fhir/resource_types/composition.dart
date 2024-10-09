import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Composition] /// A set of healthcare-related information that is assembled together into a
/// single logical package that provides a single coherent statement of
/// meaning, establishes its own context and that has clinical attestation with
/// regard to who is making the statement. A Composition defines the structure
/// and narrative content necessary for a document. However, a Composition
/// alone does not constitute a document. Rather, the Composition must be the
/// first entry in a Bundle where Bundle.type=document, and any other resources
/// referenced from Composition must be included as subsequent entries in the
/// Bundle (for example Patient, Practitioner, Encounter, etc.).
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
  }) : super(resourceType: R4ResourceType.Composition);

  @override
  String get fhirType => 'Composition';

  @Id()
  int dbId = 0;

  /// [identifier] /// A version-independent identifier for the Composition. This identifier stays
  /// constant as the composition is changed over time.
  final Identifier? identifier;

  /// [status] /// The workflow/clinical status of this composition. The status is a marker
  /// for the clinical standing of the document.
  final CompositionStatus status;
  final Element? statusElement;

  /// [type] /// Specifies the particular kind of composition (e.g. History and Physical,
  /// Discharge Summary, Progress Note). This usually equates to the purpose of
  /// making the composition.
  final CodeableConcept type;

  /// [category] /// A categorization for the type of the composition - helps for indexing and
  /// searching. This may be implied by or derived from the code specified in the
  /// Composition Type.
  final List<CodeableConcept>? category;

  /// [subject] /// Who or what the composition is about. The composition can be about a
  /// person, (patient or healthcare practitioner), a device (e.g. a machine) or
  /// even a group of subjects (such as a document about a herd of livestock, or
  /// a set of patients that share a common exposure).
  final Reference? subject;

  /// [encounter] /// Describes the clinical encounter or type of care this documentation is
  /// associated with.
  final Reference? encounter;

  /// [date] /// The composition editing time, when the composition was last logically
  /// changed by the author.
  final FhirDateTime date;
  final Element? dateElement;

  /// [author] /// Identifies who is responsible for the information in the composition, not
  /// necessarily who typed it in.
  final List<Reference> author;

  /// [title] /// Official human-readable label for the composition.
  final FhirString title;
  final Element? titleElement;

  /// [confidentiality] /// The code specifying the level of confidentiality of the Composition.
  final FhirCode? confidentiality;
  final Element? confidentialityElement;

  /// [attester] /// A participant who has attested to the accuracy of the composition/document.
  final List<CompositionAttester>? attester;

  /// [custodian] /// Identifies the organization or group who is responsible for ongoing
  /// maintenance of and access to the composition/document information.
  final Reference? custodian;

  /// [relatesTo] /// Relationships that this composition has with other compositions or
  /// documents that already exist.
  final List<CompositionRelatesTo>? relatesTo;

  /// [event] /// The clinical service, such as a colonoscopy or an appendectomy, being
  /// documented.
  final List<CompositionEvent>? event;

  /// [section] /// The root of the sections that make up the composition.
  final List<CompositionSection>? section;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }
    json['status'] = status.toJson();
    json['type'] = type.toJson();
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    json['date'] = date.value;
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    json['author'] = author.map<dynamic>((Reference v) => v.toJson()).toList();
    json['title'] = title.value;
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (confidentiality?.value != null) {
      json['confidentiality'] = confidentiality!.value;
    }
    if (confidentialityElement != null) {
      json['_confidentiality'] = confidentialityElement!.toJson();
    }
    if (attester != null && attester!.isNotEmpty) {
      json['attester'] = attester!
          .map<dynamic>((CompositionAttester v) => v.toJson())
          .toList();
    }
    if (custodian != null) {
      json['custodian'] = custodian!.toJson();
    }
    if (relatesTo != null && relatesTo!.isNotEmpty) {
      json['relatesTo'] = relatesTo!
          .map<dynamic>((CompositionRelatesTo v) => v.toJson())
          .toList();
    }
    if (event != null && event!.isNotEmpty) {
      json['event'] =
          event!.map<dynamic>((CompositionEvent v) => v.toJson()).toList();
    }
    if (section != null && section!.isNotEmpty) {
      json['section'] =
          section!.map<dynamic>((CompositionSection v) => v.toJson()).toList();
    }
    return json;
  }

  factory Composition.fromJson(Map<String, dynamic> json) {
    return Composition(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
          : null,
      status:
          CompositionStatus.fromJson(json['status'] as Map<String, dynamic>),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(json['subject'] as Map<String, dynamic>)
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      date: FhirDateTime(json['date']),
      dateElement: Element.fromJson(json['_date'] as Map<String, dynamic>),
      author: (json['author'] as List<dynamic>)
          .map<Reference>(
              (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
          .toList(),
      title: FhirString(json['title']),
      titleElement: Element.fromJson(json['_title'] as Map<String, dynamic>),
      confidentiality: json['confidentiality'] != null
          ? FhirCode(json['confidentiality'])
          : null,
      confidentialityElement: json['_confidentiality'] != null
          ? Element.fromJson(json['_confidentiality'] as Map<String, dynamic>)
          : null,
      attester: json['attester'] != null
          ? (json['attester'] as List<dynamic>)
              .map<CompositionAttester>((dynamic v) =>
                  CompositionAttester.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      custodian: json['custodian'] != null
          ? Reference.fromJson(json['custodian'] as Map<String, dynamic>)
          : null,
      relatesTo: json['relatesTo'] != null
          ? (json['relatesTo'] as List<dynamic>)
              .map<CompositionRelatesTo>((dynamic v) =>
                  CompositionRelatesTo.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      event: json['event'] != null
          ? (json['event'] as List<dynamic>)
              .map<CompositionEvent>((dynamic v) =>
                  CompositionEvent.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      section: json['section'] != null
          ? (json['section'] as List<dynamic>)
              .map<CompositionSection>((dynamic v) =>
                  CompositionSection.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'CompositionAttester';

  @Id()
  int dbId = 0;

  /// [mode] /// The type of attestation the authenticator offers.
  final CompositionAttestationMode mode;
  final Element? modeElement;

  /// [time] /// When the composition was attested by the party.
  final FhirDateTime? time;
  final Element? timeElement;

  /// [party] /// Who attested the composition in the specified way.
  final Reference? party;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['mode'] = mode.toJson();
    if (time?.value != null) {
      json['time'] = time!.value;
    }
    if (timeElement != null) {
      json['_time'] = timeElement!.toJson();
    }
    if (party != null) {
      json['party'] = party!.toJson();
    }
    return json;
  }

  factory CompositionAttester.fromJson(Map<String, dynamic> json) {
    return CompositionAttester(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      mode: CompositionAttestationMode.fromJson(
          json['mode'] as Map<String, dynamic>),
      time: json['time'] != null ? FhirDateTime(json['time']) : null,
      timeElement: json['_time'] != null
          ? Element.fromJson(json['_time'] as Map<String, dynamic>)
          : null,
      party: json['party'] != null
          ? Reference.fromJson(json['party'] as Map<String, dynamic>)
          : null,
    );
  }
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
class CompositionRelatesTo extends BackboneElement {
  CompositionRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.targetIdentifier,
    this.targetReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CompositionRelatesTo';

  @Id()
  int dbId = 0;

  /// [code] /// The type of relationship that this composition has with anther composition
  /// or document.
  final DocumentRelationshipType code;
  final Element? codeElement;

  /// [targetIdentifier] /// The target composition/document of this relationship.
  final Identifier? targetIdentifier;

  /// [targetReference] /// The target composition/document of this relationship.
  final Reference? targetReference;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['code'] = code.toJson();
    if (targetIdentifier != null) {
      json['targetIdentifier'] = targetIdentifier!.toJson();
    }
    if (targetReference != null) {
      json['targetReference'] = targetReference!.toJson();
    }
    return json;
  }

  factory CompositionRelatesTo.fromJson(Map<String, dynamic> json) {
    return CompositionRelatesTo(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: DocumentRelationshipType.fromJson(
          json['code'] as Map<String, dynamic>),
      targetIdentifier: json['targetIdentifier'] != null
          ? Identifier.fromJson(
              json['targetIdentifier'] as Map<String, dynamic>)
          : null,
      targetReference: json['targetReference'] != null
          ? Reference.fromJson(json['targetReference'] as Map<String, dynamic>)
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'CompositionEvent';

  @Id()
  int dbId = 0;

  /// [code] /// This list of codes represents the main clinical acts, such as a colonoscopy
  /// or an appendectomy, being documented. In some cases, the event is inherent
  /// in the typeCode, such as a "History and Physical Report" in which the
  /// procedure being documented is necessarily a "History and Physical" act.
  final List<CodeableConcept>? code;

  /// [period] /// The period of time covered by the documentation. There is no assertion that
  /// the documentation is a complete representation for this period, only that
  /// it documents events during this time.
  final Period? period;

  /// [detail] /// The description and/or reference of the event(s) being documented. For
  /// example, this could be used to document such a colonoscopy or an
  /// appendectomy.
  final List<Reference>? detail;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (code != null && code!.isNotEmpty) {
      json['code'] =
          code!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    if (detail != null && detail!.isNotEmpty) {
      json['detail'] =
          detail!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  factory CompositionEvent.fromJson(Map<String, dynamic> json) {
    return CompositionEvent(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'CompositionSection';

  @Id()
  int dbId = 0;

  /// [title] /// The label for this particular section. This will be part of the rendered
  /// content for the document, and is often used to build a table of contents.
  final FhirString? title;
  final Element? titleElement;

  /// [code] /// A code identifying the kind of content contained within the section. This
  /// must be consistent with the section title.
  final CodeableConcept? code;

  /// [author] /// Identifies who is responsible for the information in this section, not
  /// necessarily who typed it in.
  final List<Reference>? author;

  /// [focus] /// The actual focus of the section when it is not the subject of the
  /// composition, but instead represents something or someone associated with
  /// the subject such as (for a patient subject) a spouse, parent, fetus, or
  /// donor. If not focus is specified, the focus is assumed to be focus of the
  /// parent section, or, for a section in the Composition itself, the subject of
  /// the composition. Sections with a focus SHALL only include resources where
  /// the logical subject (patient, subject, focus, etc.) matches the section
  /// focus, or the resources have no logical subject (few resources).
  final Reference? focus;

  /// [text] /// A human-readable narrative that contains the attested content of the
  /// section, used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative.
  final Narrative? text;

  /// [mode] /// How the entry list was prepared - whether it is a working list that is
  /// suitable for being maintained on an ongoing basis, or if it represents a
  /// snapshot of a list of items from another source, or whether it is a
  /// prepared list where items may be marked as added, modified or deleted.
  final ListMode? mode;
  final Element? modeElement;

  /// [orderedBy] /// Specifies the order applied to the items in the section entries.
  final CodeableConcept? orderedBy;

  /// [entry] /// A reference to the actual resource from which the narrative in the section
  /// is derived.
  final List<Reference>? entry;

  /// [emptyReason] /// If the section is empty, why the list is empty. An empty section typically
  /// has some text explaining the empty reason.
  final CodeableConcept? emptyReason;

  /// [section] /// A nested sub-section within this section.
  final List<CompositionSection>? section;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (title?.value != null) {
      json['title'] = title!.value;
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (author != null && author!.isNotEmpty) {
      json['author'] =
          author!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (focus != null) {
      json['focus'] = focus!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (mode != null) {
      json['mode'] = mode!.toJson();
    }
    if (orderedBy != null) {
      json['orderedBy'] = orderedBy!.toJson();
    }
    if (entry != null && entry!.isNotEmpty) {
      json['entry'] = entry!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (emptyReason != null) {
      json['emptyReason'] = emptyReason!.toJson();
    }
    if (section != null && section!.isNotEmpty) {
      json['section'] =
          section!.map<dynamic>((CompositionSection v) => v.toJson()).toList();
    }
    return json;
  }

  factory CompositionSection.fromJson(Map<String, dynamic> json) {
    return CompositionSection(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      title: json['title'] != null ? FhirString(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      author: json['author'] != null
          ? (json['author'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      focus: json['focus'] != null
          ? Reference.fromJson(json['focus'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      mode: json['mode'] != null
          ? ListMode.fromJson(json['mode'] as Map<String, dynamic>)
          : null,
      orderedBy: json['orderedBy'] != null
          ? CodeableConcept.fromJson(json['orderedBy'] as Map<String, dynamic>)
          : null,
      entry: json['entry'] != null
          ? (json['entry'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      emptyReason: json['emptyReason'] != null
          ? CodeableConcept.fromJson(
              json['emptyReason'] as Map<String, dynamic>)
          : null,
      section: json['section'] != null
          ? (json['section'] as List<dynamic>)
              .map<CompositionSection>((dynamic v) =>
                  CompositionSection.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  CompositionSection clone() => throw UnimplementedError();
  @override
  CompositionSection copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    Element? titleElement,
    CodeableConcept? code,
    List<Reference>? author,
    Reference? focus,
    Narrative? text,
    ListMode? mode,
    Element? modeElement,
    CodeableConcept? orderedBy,
    List<Reference>? entry,
    CodeableConcept? emptyReason,
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
