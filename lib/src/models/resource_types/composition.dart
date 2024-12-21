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
  /// Primary constructor for
  /// [Composition]

  const Composition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
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
  }) : super(
          resourceType: R4ResourceType.Composition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Composition.fromJson(
    Map<String, dynamic> json,
  ) {
    return Composition(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
      status: JsonParser.parsePrimitive<CompositionStatus>(
        json,
        'status',
        CompositionStatus.fromJson,
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      )!,
      author: (json['author'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      )!,
      confidentiality: JsonParser.parsePrimitive<FhirCode>(
        json,
        'confidentiality',
        FhirCode.fromJson,
      ),
      attester: (json['attester'] as List<dynamic>?)
          ?.map<CompositionAttester>(
            (v) => CompositionAttester.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      custodian: JsonParser.parseObject<Reference>(
        json,
        'custodian',
        Reference.fromJson,
      ),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<CompositionRelatesTo>(
            (v) => CompositionRelatesTo.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      event: (json['event'] as List<dynamic>?)
          ?.map<CompositionEvent>(
            (v) => CompositionEvent.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      section: (json['section'] as List<dynamic>?)
          ?.map<CompositionSection>(
            (v) => CompositionSection.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Composition]
  /// from a [String] or [YamlMap] object
  factory Composition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Composition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Composition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Composition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Composition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Composition.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }

    addField('status', status);
    json['type'] = type.toJson();

    if (category != null && category!.isNotEmpty) {
      json['category'] = category!.map((e) => e.toJson()).toList();
    }

    if (subject != null) {
      json['subject'] = subject!.toJson();
    }

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    addField('date', date);
    if (author.isNotEmpty) {
      json['author'] = author.map((e) => e.toJson()).toList();
    }

    addField('title', title);
    if (confidentiality != null) {
      addField('confidentiality', confidentiality);
    }

    if (attester != null && attester!.isNotEmpty) {
      json['attester'] = attester!.map((e) => e.toJson()).toList();
    }

    if (custodian != null) {
      json['custodian'] = custodian!.toJson();
    }

    if (relatesTo != null && relatesTo!.isNotEmpty) {
      json['relatesTo'] = relatesTo!.map((e) => e.toJson()).toList();
    }

    if (event != null && event!.isNotEmpty) {
      json['event'] = event!.map((e) => e.toJson()).toList();
    }

    if (section != null && section!.isNotEmpty) {
      json['section'] = section!.map((e) => e.toJson()).toList();
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
    );
  }
}

/// [CompositionAttester]
/// A participant who has attested to the accuracy of the
/// composition/document.
class CompositionAttester extends BackboneElement {
  /// Primary constructor for
  /// [CompositionAttester]

  const CompositionAttester({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.time,
    this.party,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CompositionAttester.fromJson(
    Map<String, dynamic> json,
  ) {
    return CompositionAttester(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      mode: JsonParser.parsePrimitive<CompositionAttestationMode>(
        json,
        'mode',
        CompositionAttestationMode.fromJson,
      )!,
      time: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'time',
        FhirDateTime.fromJson,
      ),
      party: JsonParser.parseObject<Reference>(
        json,
        'party',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [CompositionAttester]
  /// from a [String] or [YamlMap] object
  factory CompositionAttester.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CompositionAttester.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CompositionAttester.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CompositionAttester '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CompositionAttester]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CompositionAttester.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('mode', mode);
    if (time != null) {
      addField('time', time);
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
  }) {
    return CompositionAttester(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      time: time ?? this.time,
      party: party ?? this.party,
    );
  }
}

/// [CompositionRelatesTo]
/// Relationships that this composition has with other compositions or
/// documents that already exist.
class CompositionRelatesTo extends BackboneElement {
  /// Primary constructor for
  /// [CompositionRelatesTo]

  const CompositionRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.targetX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CompositionRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) {
    return CompositionRelatesTo(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: JsonParser.parsePrimitive<DocumentRelationshipType>(
        json,
        'code',
        DocumentRelationshipType.fromJson,
      )!,
      targetX: JsonParser.parsePolymorphic<TargetXCompositionRelatesTo>(json, {
        'targetIdentifier': Identifier.fromJson,
        'targetReference': Reference.fromJson,
      })!,
    );
  }

  /// Deserialize [CompositionRelatesTo]
  /// from a [String] or [YamlMap] object
  factory CompositionRelatesTo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CompositionRelatesTo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CompositionRelatesTo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CompositionRelatesTo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CompositionRelatesTo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CompositionRelatesTo.fromJsonString(
    String source,
  ) {
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

  /// [code]
  /// The type of relationship that this composition has with anther
  /// composition or document.
  final DocumentRelationshipType code;

  /// [targetX]
  /// The target composition/document of this relationship.
  final TargetXCompositionRelatesTo targetX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('code', code);
    json['target${targetX.fhirType.capitalize()}'] = targetX.toJson();

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
    TargetXCompositionRelatesTo? targetX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CompositionRelatesTo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      targetX: targetX ?? this.targetX,
    );
  }
}

/// [CompositionEvent]
/// The clinical service, such as a colonoscopy or an appendectomy, being
/// documented.
class CompositionEvent extends BackboneElement {
  /// Primary constructor for
  /// [CompositionEvent]

  const CompositionEvent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.period,
    this.detail,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CompositionEvent.fromJson(
    Map<String, dynamic> json,
  ) {
    return CompositionEvent(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CompositionEvent]
  /// from a [String] or [YamlMap] object
  factory CompositionEvent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CompositionEvent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CompositionEvent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CompositionEvent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CompositionEvent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CompositionEvent.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((e) => e.toJson()).toList();
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    if (detail != null && detail!.isNotEmpty) {
      json['detail'] = detail!.map((e) => e.toJson()).toList();
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
  }) {
    return CompositionEvent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      period: period ?? this.period,
      detail: detail ?? this.detail,
    );
  }
}

/// [CompositionSection]
/// The root of the sections that make up the composition.
class CompositionSection extends BackboneElement {
  /// Primary constructor for
  /// [CompositionSection]

  const CompositionSection({
    super.id,
    super.extension_,
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CompositionSection.fromJson(
    Map<String, dynamic> json,
  ) {
    return CompositionSection(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      author: (json['author'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      focus: JsonParser.parseObject<Reference>(
        json,
        'focus',
        Reference.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      mode: JsonParser.parsePrimitive<ListMode>(
        json,
        'mode',
        ListMode.fromJson,
      ),
      orderedBy: JsonParser.parseObject<CodeableConcept>(
        json,
        'orderedBy',
        CodeableConcept.fromJson,
      ),
      entry: (json['entry'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      emptyReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'emptyReason',
        CodeableConcept.fromJson,
      ),
      section: (json['section'] as List<dynamic>?)
          ?.map<CompositionSection>(
            (v) => CompositionSection.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CompositionSection]
  /// from a [String] or [YamlMap] object
  factory CompositionSection.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CompositionSection.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CompositionSection.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CompositionSection '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CompositionSection]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CompositionSection.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (title != null) {
      addField('title', title);
    }

    if (code != null) {
      json['code'] = code!.toJson();
    }

    if (author != null && author!.isNotEmpty) {
      json['author'] = author!.map((e) => e.toJson()).toList();
    }

    if (focus != null) {
      json['focus'] = focus!.toJson();
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (mode != null) {
      addField('mode', mode);
    }

    if (orderedBy != null) {
      json['orderedBy'] = orderedBy!.toJson();
    }

    if (entry != null && entry!.isNotEmpty) {
      json['entry'] = entry!.map((e) => e.toJson()).toList();
    }

    if (emptyReason != null) {
      json['emptyReason'] = emptyReason!.toJson();
    }

    if (section != null && section!.isNotEmpty) {
      json['section'] = section!.map((e) => e.toJson()).toList();
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
    );
  }
}
