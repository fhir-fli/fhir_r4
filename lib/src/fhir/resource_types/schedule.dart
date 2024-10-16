import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Schedule]
/// A container for slots of time that may be available for booking
/// appointments.
class Schedule extends DomainResource {
  /// Primary constructor for [Schedule]

  Schedule({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.active,
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    required this.actor,
    this.planningHorizon,
    this.comment,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Schedule,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Schedule.fromJson(Map<String, dynamic> json) {
    return Schedule(
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
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      active: json['active'] != null
          ? FhirBoolean.fromJson({
              'value': json['active'],
              '_value': json['_active'],
            })
          : null,
      serviceCategory: json['serviceCategory'] != null
          ? (json['serviceCategory'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      serviceType: json['serviceType'] != null
          ? (json['serviceType'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      specialty: json['specialty'] != null
          ? (json['specialty'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      actor: ensureNonNullList((json['actor'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
      planningHorizon: json['planningHorizon'] != null
          ? Period.fromJson(
              json['planningHorizon'] as Map<String, dynamic>,
            )
          : null,
      comment: json['comment'] != null
          ? FhirString.fromJson({
              'value': json['comment'],
              '_value': json['_comment'],
            })
          : null,
    );
  }

  /// Deserialize [Schedule] from a [String]
  /// or [YamlMap] object
  factory Schedule.fromYaml(dynamic yaml) => yaml is String
      ? Schedule.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Schedule.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Schedule cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Schedule]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Schedule.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Schedule.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Schedule';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// External Ids for this item.
  final List<Identifier>? identifier;

  /// [active]
  /// Whether this schedule record is in active use or should not be used
  /// (such as was entered in error).
  final FhirBoolean? active;

  /// [serviceCategory]
  /// A broad categorization of the service that is to be performed during
  /// this appointment.
  final List<CodeableConcept>? serviceCategory;

  /// [serviceType]
  /// The specific service that is to be performed during this appointment.
  final List<CodeableConcept>? serviceType;

  /// [specialty]
  /// The specialty of a practitioner that would be required to perform the
  /// service requested in this appointment.
  final List<CodeableConcept>? specialty;

  /// [actor]
  /// Slots that reference this schedule resource provide the availability
  /// details to these referenced resource(s).
  final List<Reference> actor;

  /// [planningHorizon]
  /// The period of time that the slots that reference this Schedule resource
  /// cover (even if none exist). These cover the amount of time that an
  /// organization's planning horizon; the interval for which they are
  /// currently accepting appointments. This does not define a "template" for
  /// planning outside these dates.
  final Period? planningHorizon;

  /// [comment]
  /// Comments on the availability to describe any extended information. Such
  /// as custom constraints on the slots that may be associated.
  final FhirString? comment;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (active != null) {
      final fieldJson9 = active!.toJson();
      json['active'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_active'] = fieldJson9['_value'];
      }
    }

    if (serviceCategory != null && serviceCategory!.isNotEmpty) {
      final fieldJson10 = serviceCategory!.map((e) => e.toJson()).toList();
      json['serviceCategory'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_serviceCategory'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    if (serviceType != null && serviceType!.isNotEmpty) {
      final fieldJson11 = serviceType!.map((e) => e.toJson()).toList();
      json['serviceType'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_serviceType'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (specialty != null && specialty!.isNotEmpty) {
      final fieldJson12 = specialty!.map((e) => e.toJson()).toList();
      json['specialty'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_specialty'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    final fieldJson13 = actor.map((e) => e.toJson()).toList();
    json['actor'] = fieldJson13.map((e) => e['value']).toList();
    if (fieldJson13.any((e) => e['_value'] != null)) {
      json['_actor'] = fieldJson13.map((e) => e['_value']).toList();
    }

    if (planningHorizon != null) {
      final fieldJson14 = planningHorizon!.toJson();
      json['planningHorizon'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_planningHorizon'] = fieldJson14['_value'];
      }
    }

    if (comment != null) {
      final fieldJson15 = comment!.toJson();
      json['comment'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_comment'] = fieldJson15['_value'];
      }
    }

    return json;
  }

  @override
  Schedule clone() => throw UnimplementedError();
  @override
  Schedule copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirBoolean? active,
    List<CodeableConcept>? serviceCategory,
    List<CodeableConcept>? serviceType,
    List<CodeableConcept>? specialty,
    List<Reference>? actor,
    Period? planningHorizon,
    FhirString? comment,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Schedule(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      active: active ?? this.active,
      serviceCategory: serviceCategory ?? this.serviceCategory,
      serviceType: serviceType ?? this.serviceType,
      specialty: specialty ?? this.specialty,
      actor: actor ?? this.actor,
      planningHorizon: planningHorizon ?? this.planningHorizon,
      comment: comment ?? this.comment,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
