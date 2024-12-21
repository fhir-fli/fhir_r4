import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Schedule]
/// A container for slots of time that may be available for booking
/// appointments.
class Schedule extends DomainResource {
  /// Primary constructor for
  /// [Schedule]

  const Schedule({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.active,
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    required this.actor,
    this.planningHorizon,
    this.comment,
  }) : super(
          resourceType: R4ResourceType.Schedule,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Schedule.fromJson(
    Map<String, dynamic> json,
  ) {
    return Schedule(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      active: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'active',
        FhirBoolean.fromJson,
      ),
      serviceCategory: (json['serviceCategory'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      serviceType: (json['serviceType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      actor: (json['actor'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      planningHorizon: JsonParser.parseObject<Period>(
        json,
        'planningHorizon',
        Period.fromJson,
      ),
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [Schedule]
  /// from a [String] or [YamlMap] object
  factory Schedule.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Schedule.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Schedule.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Schedule '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Schedule]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Schedule.fromJsonString(
    String source,
  ) {
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

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (active != null) {
      addField('active', active);
    }

    if (serviceCategory != null && serviceCategory!.isNotEmpty) {
      json['serviceCategory'] =
          serviceCategory!.map((e) => e.toJson()).toList();
    }

    if (serviceType != null && serviceType!.isNotEmpty) {
      json['serviceType'] = serviceType!.map((e) => e.toJson()).toList();
    }

    if (specialty != null && specialty!.isNotEmpty) {
      json['specialty'] = specialty!.map((e) => e.toJson()).toList();
    }

    if (actor.isNotEmpty) {
      json['actor'] = actor.map((e) => e.toJson()).toList();
    }

    if (planningHorizon != null) {
      json['planningHorizon'] = planningHorizon!.toJson();
    }

    if (comment != null) {
      addField('comment', comment);
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
    );
  }
}
