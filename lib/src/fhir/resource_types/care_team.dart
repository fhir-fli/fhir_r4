import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CareTeam]
/// The Care Team includes all the people and organizations who plan to
/// participate in the coordination and delivery of care for a patient.
class CareTeam extends DomainResource {
  /// Primary constructor for
  /// [CareTeam]

  CareTeam({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.category,
    this.name,
    this.subject,
    this.encounter,
    this.period,
    this.participant,
    this.reasonCode,
    this.reasonReference,
    this.managingOrganization,
    this.telecom,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.CareTeam,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CareTeam.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return CareTeam(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: parseField<FhirUri>(
        json['implicitRules'],
        json['_implicitRules'],
        FhirUri.fromJson,
      ),
      language: parseField<CommonLanguages>(
        json['language'],
        json['_language'],
        CommonLanguages.fromJson,
      ),
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: parseList<Resource>(
        json['contained'] as List<dynamic>?,
        json['_contained'] as List<dynamic>?,
        Resource.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      identifier: parseList<Identifier>(
        json['identifier'] as List<dynamic>?,
        json['_identifier'] as List<dynamic>?,
        Identifier.fromJson,
      ),
      status: parseField<CareTeamStatus>(
        json['status'],
        json['_status'],
        CareTeamStatus.fromJson,
      ),
      category: parseList<CodeableConcept>(
        json['category'] as List<dynamic>?,
        json['_category'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      name: parseField<FhirString>(
        json['name'],
        json['_name'],
        FhirString.fromJson,
      ),
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
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      participant: parseList<CareTeamParticipant>(
        json['participant'] as List<dynamic>?,
        json['_participant'] as List<dynamic>?,
        CareTeamParticipant.fromJson,
      ),
      reasonCode: parseList<CodeableConcept>(
        json['reasonCode'] as List<dynamic>?,
        json['_reasonCode'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      reasonReference: parseList<Reference>(
        json['reasonReference'] as List<dynamic>?,
        json['_reasonReference'] as List<dynamic>?,
        Reference.fromJson,
      ),
      managingOrganization: parseList<Reference>(
        json['managingOrganization'] as List<dynamic>?,
        json['_managingOrganization'] as List<dynamic>?,
        Reference.fromJson,
      ),
      telecom: parseList<ContactPoint>(
        json['telecom'] as List<dynamic>?,
        json['_telecom'] as List<dynamic>?,
        ContactPoint.fromJson,
      ),
      note: parseList<Annotation>(
        json['note'] as List<dynamic>?,
        json['_note'] as List<dynamic>?,
        Annotation.fromJson,
      ),
    );
  }

  /// Deserialize [CareTeam]
  /// from a [String] or [YamlMap] object
  factory CareTeam.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CareTeam.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CareTeam.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CareTeam '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CareTeam]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CareTeam.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CareTeam.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CareTeam';

  /// [identifier]
  /// Business identifiers assigned to this care team by the performer or
  /// other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  final List<Identifier>? identifier;

  /// [status]
  /// Indicates the current state of the care team.
  final CareTeamStatus? status;

  /// [category]
  /// Identifies what kind of team. This is to support differentiation
  /// between multiple co-existing teams, such as care plan team, episode of
  /// care team, longitudinal care team.
  final List<CodeableConcept>? category;

  /// [name]
  /// A label for human use intended to distinguish like teams. E.g. the
  /// "red" vs. "green" trauma teams.
  final FhirString? name;

  /// [subject]
  /// Identifies the patient or group whose intended care is handled by the
  /// team.
  final Reference? subject;

  /// [encounter]
  /// The Encounter during which this CareTeam was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [period]
  /// Indicates when the team did (or is intended to) come into effect and
  /// end.
  final Period? period;

  /// [participant]
  /// Identifies all people and organizations who are expected to be involved
  /// in the care team.
  final List<CareTeamParticipant>? participant;

  /// [reasonCode]
  /// Describes why the care team exists.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Condition(s) that this care team addresses.
  final List<Reference>? reasonReference;

  /// [managingOrganization]
  /// The organization responsible for the care team.
  final List<Reference>? managingOrganization;

  /// [telecom]
  /// A central contact detail for the care team (that applies to all
  /// members).
  final List<ContactPoint>? telecom;

  /// [note]
  /// Comments made about the CareTeam.
  final List<Annotation>? note;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
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

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('status', status);
    if (category != null && category!.isNotEmpty) {
      json['category'] = category!.map((e) => e.toJson()).toList();
    }

    addField('name', name);
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    if (participant != null && participant!.isNotEmpty) {
      json['participant'] = participant!.map((e) => e.toJson()).toList();
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] = reasonCode!.map((e) => e.toJson()).toList();
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((e) => e.toJson()).toList();
    }

    if (managingOrganization != null && managingOrganization!.isNotEmpty) {
      json['managingOrganization'] =
          managingOrganization!.map((e) => e.toJson()).toList();
    }

    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] = telecom!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  CareTeam clone() => throw UnimplementedError();
  @override
  CareTeam copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CareTeamStatus? status,
    List<CodeableConcept>? category,
    FhirString? name,
    Reference? subject,
    Reference? encounter,
    Period? period,
    List<CareTeamParticipant>? participant,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? managingOrganization,
    List<ContactPoint>? telecom,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CareTeam(
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
      category: category ?? this.category,
      name: name ?? this.name,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      period: period ?? this.period,
      participant: participant ?? this.participant,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      telecom: telecom ?? this.telecom,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [CareTeamParticipant]
/// Identifies all people and organizations who are expected to be involved
/// in the care team.
class CareTeamParticipant extends BackboneElement {
  /// Primary constructor for
  /// [CareTeamParticipant]

  CareTeamParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.member,
    this.onBehalfOf,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CareTeamParticipant.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return CareTeamParticipant(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      role: parseList<CodeableConcept>(
        json['role'] as List<dynamic>?,
        json['_role'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      member: json['member'] != null
          ? Reference.fromJson(
              json['member'] as Map<String, dynamic>,
            )
          : null,
      onBehalfOf: json['onBehalfOf'] != null
          ? Reference.fromJson(
              json['onBehalfOf'] as Map<String, dynamic>,
            )
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CareTeamParticipant]
  /// from a [String] or [YamlMap] object
  factory CareTeamParticipant.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CareTeamParticipant.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CareTeamParticipant.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CareTeamParticipant '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CareTeamParticipant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CareTeamParticipant.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CareTeamParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CareTeamParticipant';

  /// [role]
  /// Indicates specific responsibility of an individual within the care
  /// team, such as "Primary care physician", "Trained social worker
  /// counselor", "Caregiver", etc.
  final List<CodeableConcept>? role;

  /// [member]
  /// The specific person or organization who is participating/expected to
  /// participate in the care team.
  final Reference? member;

  /// [onBehalfOf]
  /// The organization of the practitioner.
  final Reference? onBehalfOf;

  /// [period]
  /// Indicates when the specific member or organization did (or is intended
  /// to) come into effect and end.
  final Period? period;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (role != null && role!.isNotEmpty) {
      json['role'] = role!.map((e) => e.toJson()).toList();
    }

    if (member != null) {
      json['member'] = member!.toJson();
    }

    if (onBehalfOf != null) {
      json['onBehalfOf'] = onBehalfOf!.toJson();
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    return json;
  }

  @override
  CareTeamParticipant clone() => throw UnimplementedError();
  @override
  CareTeamParticipant copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? role,
    Reference? member,
    Reference? onBehalfOf,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CareTeamParticipant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      member: member ?? this.member,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
