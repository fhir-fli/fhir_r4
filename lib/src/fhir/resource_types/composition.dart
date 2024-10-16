import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Composition]
/// A set of healthcare-related information that is assembled together into
/// a single logical package that provides a single coherent statement of
/// meaning, establishes its own context and that has clinical attestation
/// with regard to who is making the statement. A Composition defines the
/// structure and narrative content necessary for a document. However, a
/// Composition alone does not constitute a document. Rather, the
/// Composition must be the first entry in a Bundle where
/// Bundle.type=document, and any other resources referenced from
/// Composition must be included as subsequent entries in the Bundle (for
/// example Patient, Practitioner, Encounter, etc.).
class Composition extends DomainResource {
  /// Primary constructor for [Composition]

  Composition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    required this.type,
    this.category,
    this.subject,
    this.encounter,
    required this.date,
    required this.author,
    required this.title,
    this.confidentiality,
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
  }) : super(
          resourceType: R4ResourceType.Composition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Composition.fromJson(Map<String, dynamic> json) {
    return Composition(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      status: CompositionStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(
              json['subject'] as Map<String, dynamic>,
            )
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      date: FhirDateTime.fromJson({
        'value': json['date'],
        '_value': json['_date'],
      }),
      author: ensureNonNullList((json['author'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
      title: FhirString.fromJson({
        'value': json['title'],
        '_value': json['_title'],
      }),
      confidentiality: json['confidentiality'] != null
          ? FhirCode.fromJson({
              'value': json['confidentiality'],
              '_value': json['_confidentiality'],
            })
          : null,
      attester: json['attester'] != null
          ? (json['attester'] as List<dynamic>)
              .map<CompositionAttester>(
                (v) => CompositionAttester.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      custodian: json['custodian'] != null
          ? Reference.fromJson(
              json['custodian'] as Map<String, dynamic>,
            )
          : null,
      relatesTo: json['relatesTo'] != null
          ? (json['relatesTo'] as List<dynamic>)
              .map<CompositionRelatesTo>(
                (v) => CompositionRelatesTo.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      event: json['event'] != null
          ? (json['event'] as List<dynamic>)
              .map<CompositionEvent>(
                (v) => CompositionEvent.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      section: json['section'] != null
          ? (json['section'] as List<dynamic>)
              .map<CompositionSection>(
                (v) => CompositionSection.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Composition] from a [String]
  /// or [YamlMap] object
  factory Composition.fromYaml(dynamic yaml) => yaml is String
      ? Composition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Composition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Composition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Composition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Composition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Composition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Composition';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// A version-independent identifier for the Composition. This identifier
  /// stays constant as the composition is changed over time.
  final Identifier? identifier;

  /// [status]
  /// The workflow/clinical status of this composition. The status is a
  /// marker for the clinical standing of the document.
  final CompositionStatus status;

  /// [type]
  /// Specifies the particular kind of composition (e.g. History and
  /// Physical, Discharge Summary, Progress Note). This usually equates to
  /// the purpose of making the composition.
  final CodeableConcept type;

  /// [category]
  /// A categorization for the type of the composition - helps for indexing
  /// and searching. This may be implied by or derived from the code
  /// specified in the Composition Type.
  final List<CodeableConcept>? category;

  /// [subject]
  /// Who or what the composition is about. The composition can be about a
  /// person, (patient or healthcare practitioner), a device (e.g. a machine)
  /// or even a group of subjects (such as a document about a herd of
  /// livestock, or a set of patients that share a common exposure).
  final Reference? subject;

  /// [encounter]
  /// Describes the clinical encounter or type of care this documentation is
  /// associated with.
  final Reference? encounter;

  /// [date]
  /// The composition editing time, when the composition was last logically
  /// changed by the author.
  final FhirDateTime date;

  /// [author]
  /// Identifies who is responsible for the information in the composition,
  /// not necessarily who typed it in.
  final List<Reference> author;

  /// [title]
  /// Official human-readable label for the composition.
  final FhirString title;

  /// [confidentiality]
  /// The code specifying the level of confidentiality of the Composition.
  final FhirCode? confidentiality;

  /// [attester]
  /// A participant who has attested to the accuracy of the
  /// composition/document.
  final List<CompositionAttester>? attester;

  /// [custodian]
  /// Identifies the organization or group who is responsible for ongoing
  /// maintenance of and access to the composition/document information.
  final Reference? custodian;

  /// [relatesTo]
  /// Relationships that this composition has with other compositions or
  /// documents that already exist.
  final List<CompositionRelatesTo>? relatesTo;

  /// [event]
  /// The clinical service, such as a colonoscopy or an appendectomy, being
  /// documented.
  final List<CompositionEvent>? event;

  /// [section]
  /// The root of the sections that make up the composition.
  final List<CompositionSection>? section;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }
    json['status'] = status.toJson();
    json['type'] = type.toJson();
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    json['date'] = date.toJson();
    json['author'] = author.map<dynamic>((Reference v) => v.toJson()).toList();
    json['title'] = title.toJson();
    if (confidentiality?.value != null) {
      json['confidentiality'] = confidentiality!.toJson();
    }
    if (attester != null && attester!.isNotEmpty) {
      json['attester'] =
          attester!.map((CompositionAttester v) => v.toJson()).toList();
    }
    if (custodian != null) {
      json['custodian'] = custodian!.toJson();
    }
    if (relatesTo != null && relatesTo!.isNotEmpty) {
      json['relatesTo'] =
          relatesTo!.map((CompositionRelatesTo v) => v.toJson()).toList();
    }
    if (event != null && event!.isNotEmpty) {
      json['event'] = event!.map((CompositionEvent v) => v.toJson()).toList();
    }
    if (section != null && section!.isNotEmpty) {
      json['section'] =
          section!.map((CompositionSection v) => v.toJson()).toList();
    }
    return json;
  }

  @override
  Composition clone() => throw UnimplementedError();
  @override
  Composition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    CompositionStatus? status,
    CodeableConcept? type,
    List<CodeableConcept>? category,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? date,
    List<Reference>? author,
    FhirString? title,
    FhirCode? confidentiality,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      type: type ?? this.type,
      category: category ?? this.category,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      date: date ?? this.date,
      author: author ?? this.author,
      title: title ?? this.title,
      confidentiality: confidentiality ?? this.confidentiality,
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
}

/// [CompositionAttester]
/// A participant who has attested to the accuracy of the
/// composition/document.
class CompositionAttester extends BackboneElement {
  /// Primary constructor for [CompositionAttester]

  CompositionAttester({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.mode,
    this.time,
    this.party,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CompositionAttester.fromJson(Map<String, dynamic> json) {
    return CompositionAttester(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      mode: CompositionAttestationMode.fromJson({
        'value': json['mode'],
        '_value': json['_mode'],
      }),
      time: json['time'] != null
          ? FhirDateTime.fromJson({
              'value': json['time'],
              '_value': json['_time'],
            })
          : null,
      party: json['party'] != null
          ? Reference.fromJson(
              json['party'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CompositionAttester] from a [String]
  /// or [YamlMap] object
  factory CompositionAttester.fromYaml(dynamic yaml) => yaml is String
      ? CompositionAttester.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CompositionAttester.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'CompositionAttester cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CompositionAttester]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CompositionAttester.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CompositionAttester.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CompositionAttester';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [mode]
  /// The type of attestation the authenticator offers.
  final CompositionAttestationMode mode;

  /// [time]
  /// When the composition was attested by the party.
  final FhirDateTime? time;

  /// [party]
  /// Who attested the composition in the specified way.
  final Reference? party;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['mode'] = mode.toJson();
    if (time?.value != null) {
      json['time'] = time!.toJson();
    }
    if (party != null) {
      json['party'] = party!.toJson();
    }
    return json;
  }

  @override
  CompositionAttester clone() => throw UnimplementedError();
  @override
  CompositionAttester copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CompositionAttestationMode? mode,
    FhirDateTime? time,
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
      time: time ?? this.time,
      party: party ?? this.party,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [CompositionRelatesTo]
/// Relationships that this composition has with other compositions or
/// documents that already exist.
class CompositionRelatesTo extends BackboneElement {
  /// Primary constructor for [CompositionRelatesTo]

  CompositionRelatesTo({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.code,
    this.targetIdentifier,
    this.targetReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CompositionRelatesTo.fromJson(Map<String, dynamic> json) {
    return CompositionRelatesTo(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: DocumentRelationshipType.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      targetIdentifier: json['targetIdentifier'] != null
          ? Identifier.fromJson(
              json['targetIdentifier'] as Map<String, dynamic>,
            )
          : null,
      targetReference: json['targetReference'] != null
          ? Reference.fromJson(
              json['targetReference'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CompositionRelatesTo] from a [String]
  /// or [YamlMap] object
  factory CompositionRelatesTo.fromYaml(dynamic yaml) => yaml is String
      ? CompositionRelatesTo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CompositionRelatesTo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'CompositionRelatesTo cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CompositionRelatesTo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CompositionRelatesTo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CompositionRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CompositionRelatesTo';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [code]
  /// The type of relationship that this composition has with anther
  /// composition or document.
  final DocumentRelationshipType code;

  /// [targetIdentifier]
  /// The target composition/document of this relationship.
  final Identifier? targetIdentifier;

  /// [targetReference]
  /// The target composition/document of this relationship.
  final Reference? targetReference;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
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

  @override
  CompositionRelatesTo clone() => throw UnimplementedError();
  @override
  CompositionRelatesTo copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DocumentRelationshipType? code,
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
}

/// [CompositionEvent]
/// The clinical service, such as a colonoscopy or an appendectomy, being
/// documented.
class CompositionEvent extends BackboneElement {
  /// Primary constructor for [CompositionEvent]

  CompositionEvent({
    super.id,
    this.extension_,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CompositionEvent.fromJson(Map<String, dynamic> json) {
    return CompositionEvent(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [CompositionEvent] from a [String]
  /// or [YamlMap] object
  factory CompositionEvent.fromYaml(dynamic yaml) => yaml is String
      ? CompositionEvent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CompositionEvent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('CompositionEvent cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CompositionEvent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CompositionEvent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CompositionEvent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CompositionEvent';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [code]
  /// This list of codes represents the main clinical acts, such as a
  /// colonoscopy or an appendectomy, being documented. In some cases, the
  /// event is inherent in the typeCode, such as a "History and Physical
  /// Report" in which the procedure being documented is necessarily a
  /// "History and Physical" act.
  final List<CodeableConcept>? code;

  /// [period]
  /// The period of time covered by the documentation. There is no assertion
  /// that the documentation is a complete representation for this period,
  /// only that it documents events during this time.
  final Period? period;

  /// [detail]
  /// The description and/or reference of the event(s) being documented. For
  /// example, this could be used to document such a colonoscopy or an
  /// appendectomy.
  final List<Reference>? detail;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    if (detail != null && detail!.isNotEmpty) {
      json['detail'] = detail!.map((Reference v) => v.toJson()).toList();
    }
    return json;
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
}

/// [CompositionSection]
/// The root of the sections that make up the composition.
class CompositionSection extends BackboneElement {
  /// Primary constructor for [CompositionSection]

  CompositionSection({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.title,
    this.code,
    this.author,
    this.focus,
    this.text,
    this.mode,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CompositionSection.fromJson(Map<String, dynamic> json) {
    return CompositionSection(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      title: json['title'] != null
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      author: json['author'] != null
          ? (json['author'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      focus: json['focus'] != null
          ? Reference.fromJson(
              json['focus'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      mode: json['mode'] != null
          ? ListMode.fromJson({
              'value': json['mode'],
              '_value': json['_mode'],
            })
          : null,
      orderedBy: json['orderedBy'] != null
          ? CodeableConcept.fromJson(
              json['orderedBy'] as Map<String, dynamic>,
            )
          : null,
      entry: json['entry'] != null
          ? (json['entry'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      emptyReason: json['emptyReason'] != null
          ? CodeableConcept.fromJson(
              json['emptyReason'] as Map<String, dynamic>,
            )
          : null,
      section: json['section'] != null
          ? (json['section'] as List<dynamic>)
              .map<CompositionSection>(
                (v) => CompositionSection.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [CompositionSection] from a [String]
  /// or [YamlMap] object
  factory CompositionSection.fromYaml(dynamic yaml) => yaml is String
      ? CompositionSection.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CompositionSection.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('CompositionSection cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CompositionSection]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CompositionSection.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CompositionSection.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CompositionSection';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [title]
  /// The label for this particular section. This will be part of the
  /// rendered content for the document, and is often used to build a table
  /// of contents.
  final FhirString? title;

  /// [code]
  /// A code identifying the kind of content contained within the section.
  /// This must be consistent with the section title.
  final CodeableConcept? code;

  /// [author]
  /// Identifies who is responsible for the information in this section, not
  /// necessarily who typed it in.
  final List<Reference>? author;

  /// [focus]
  /// The actual focus of the section when it is not the subject of the
  /// composition, but instead represents something or someone associated
  /// with the subject such as (for a patient subject) a spouse, parent,
  /// fetus, or donor. If not focus is specified, the focus is assumed to be
  /// focus of the parent section, or, for a section in the Composition
  /// itself, the subject of the composition. Sections with a focus SHALL
  /// only include resources where the logical subject (patient, subject,
  /// focus, etc.) matches the section focus, or the resources have no
  /// logical subject (few resources).
  final Reference? focus;

  /// [text]
  /// A human-readable narrative that contains the attested content of the
  /// section, used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to
  /// just read the narrative.
  final Narrative? text;

  /// [mode]
  /// How the entry list was prepared - whether it is a working list that is
  /// suitable for being maintained on an ongoing basis, or if it represents
  /// a snapshot of a list of items from another source, or whether it is a
  /// prepared list where items may be marked as added, modified or deleted.
  final ListMode? mode;

  /// [orderedBy]
  /// Specifies the order applied to the items in the section entries.
  final CodeableConcept? orderedBy;

  /// [entry]
  /// A reference to the actual resource from which the narrative in the
  /// section is derived.
  final List<Reference>? entry;

  /// [emptyReason]
  /// If the section is empty, why the list is empty. An empty section
  /// typically has some text explaining the empty reason.
  final CodeableConcept? emptyReason;

  /// [section]
  /// A nested sub-section within this section.
  final List<CompositionSection>? section;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (title?.value != null) {
      json['title'] = title!.toJson();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (author != null && author!.isNotEmpty) {
      json['author'] = author!.map((Reference v) => v.toJson()).toList();
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
      json['entry'] = entry!.map((Reference v) => v.toJson()).toList();
    }
    if (emptyReason != null) {
      json['emptyReason'] = emptyReason!.toJson();
    }
    if (section != null && section!.isNotEmpty) {
      json['section'] =
          section!.map((CompositionSection v) => v.toJson()).toList();
    }
    return json;
  }

  @override
  CompositionSection clone() => throw UnimplementedError();
  @override
  CompositionSection copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    CodeableConcept? code,
    List<Reference>? author,
    Reference? focus,
    Narrative? text,
    ListMode? mode,
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
      code: code ?? this.code,
      author: author ?? this.author,
      focus: focus ?? this.focus,
      text: text ?? this.text,
      mode: mode ?? this.mode,
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
}
