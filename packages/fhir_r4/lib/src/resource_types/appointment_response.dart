import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [AppointmentResponse]
/// A reply to an appointment request for a patient and/or practitioner(s),
/// such as a confirmation or rejection.
class AppointmentResponse extends DomainResource {
  /// Primary constructor for
  /// [AppointmentResponse]

  const AppointmentResponse({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.appointment,
    this.start,
    this.end,
    this.participantType,
    this.actor,
    required this.participantStatus,
    this.comment,
  }) : super(
          objectPath: 'AppointmentResponse',
          resourceType: R4ResourceType.AppointmentResponse,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory AppointmentResponse.empty() => AppointmentResponse(
        appointment: Reference.empty(),
        participantStatus: ParticipationStatus.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AppointmentResponse';
    return AppointmentResponse(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      appointment: JsonParser.parseObject<Reference>(
        json,
        'appointment',
        Reference.fromJson,
        '$objectPath.appointment',
      )!,
      start: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'start',
        FhirInstant.fromJson,
        '$objectPath.start',
      ),
      end: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'end',
        FhirInstant.fromJson,
        '$objectPath.end',
      ),
      participantType: (json['participantType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.participantType',
              },
            ),
          )
          .toList(),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
        '$objectPath.actor',
      ),
      participantStatus: JsonParser.parsePrimitive<ParticipationStatus>(
        json,
        'participantStatus',
        ParticipationStatus.fromJson,
        '$objectPath.participantStatus',
      )!,
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
        '$objectPath.comment',
      ),
    );
  }

  /// Deserialize [AppointmentResponse]
  /// from a [String] or [YamlMap] object
  factory AppointmentResponse.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AppointmentResponse.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AppointmentResponse.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AppointmentResponse '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AppointmentResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentResponse.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AppointmentResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AppointmentResponse';

  /// [identifier]
  /// This records identifiers associated with this appointment response
  /// concern that are defined by business processes and/ or used to refer to
  /// it when a direct URL reference to the resource itself is not
  /// appropriate.
  final List<Identifier>? identifier;

  /// [appointment]
  /// Appointment that this response is replying to.
  final Reference appointment;

  /// [start]
  /// Date/Time that the appointment is to take place, or requested new start
  /// time.
  final FhirInstant? start;

  /// [end]
  /// This may be either the same as the appointment request to confirm the
  /// details of the appointment, or alternately a new time to request a
  /// re-negotiation of the end time.
  final FhirInstant? end;

  /// [participantType]
  /// Role of participant in the appointment.
  final List<CodeableConcept>? participantType;

  /// [actor]
  /// A Person, Location, HealthcareService, or Device that is participating
  /// in the appointment.
  final Reference? actor;

  /// [participantStatus]
  /// Participation status of the participant. When the status is declined or
  /// tentative if the start/end times are different to the appointment, then
  /// these times should be interpreted as a requested time change. When the
  /// status is accepted, the times can either be the time of the appointment
  /// (as a confirmation of the time) or can be empty.
  final ParticipationStatus participantStatus;

  /// [comment]
  /// Additional comments about the appointment.
  final FhirString? comment;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'appointment',
      appointment,
    );
    addField(
      'start',
      start,
    );
    addField(
      'end',
      end,
    );
    addField(
      'participantType',
      participantType,
    );
    addField(
      'actor',
      actor,
    );
    addField(
      'participantStatus',
      participantStatus,
    );
    addField(
      'comment',
      comment,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'appointment',
      'start',
      'end',
      'participantType',
      'actor',
      'participantStatus',
      'comment',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'appointment':
        fields.add(appointment);
      case 'start':
        if (start != null) {
          fields.add(start!);
        }
      case 'end':
        if (end != null) {
          fields.add(end!);
        }
      case 'participantType':
        if (participantType != null) {
          fields.addAll(participantType!);
        }
      case 'actor':
        if (actor != null) {
          fields.add(actor!);
        }
      case 'participantStatus':
        fields.add(participantStatus);
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [...?contained, child];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [...?identifier, child];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'appointment':
        {
          if (child is Reference) {
            return copyWith(appointment: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'start':
        {
          if (child is FhirInstant) {
            return copyWith(start: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'end':
        {
          if (child is FhirInstant) {
            return copyWith(end: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participantType':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?participantType, ...child];
            return copyWith(participantType: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?participantType, child];
            return copyWith(participantType: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'actor':
        {
          if (child is Reference) {
            return copyWith(actor: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participantStatus':
        {
          if (child is ParticipationStatus) {
            return copyWith(participantStatus: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'comment':
        {
          if (child is FhirString) {
            return copyWith(comment: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'appointment':
        return ['Reference'];
      case 'start':
        return ['FhirInstant'];
      case 'end':
        return ['FhirInstant'];
      case 'participantType':
        return ['CodeableConcept'];
      case 'actor':
        return ['Reference'];
      case 'participantStatus':
        return ['FhirCode'];
      case 'comment':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AppointmentResponse]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  AppointmentResponse createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'appointment':
        {
          return copyWith(
            appointment: Reference.empty(),
          );
        }
      case 'start':
        {
          return copyWith(
            start: FhirInstant.empty(),
          );
        }
      case 'end':
        {
          return copyWith(
            end: FhirInstant.empty(),
          );
        }
      case 'participantType':
        {
          return copyWith(
            participantType: <CodeableConcept>[],
          );
        }
      case 'actor':
        {
          return copyWith(
            actor: Reference.empty(),
          );
        }
      case 'participantStatus':
        {
          return copyWith(
            participantStatus: ParticipationStatus.empty(),
          );
        }
      case 'comment':
        {
          return copyWith(
            comment: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  AppointmentResponse clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool start = false,
    bool end = false,
    bool participantType = false,
    bool actor = false,
    bool comment = false,
  }) {
    return AppointmentResponse(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      appointment: appointment,
      start: start ? null : this.start,
      end: end ? null : this.end,
      participantType: participantType ? null : this.participantType,
      actor: actor ? null : this.actor,
      participantStatus: participantStatus,
      comment: comment ? null : this.comment,
    );
  }

  @override
  AppointmentResponse clone() => throw UnimplementedError();
  @override
  AppointmentResponse copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    Reference? appointment,
    FhirInstant? start,
    FhirInstant? end,
    List<CodeableConcept>? participantType,
    Reference? actor,
    ParticipationStatus? participantStatus,
    FhirString? comment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return AppointmentResponse(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      appointment: appointment?.copyWith(
            objectPath: '$newObjectPath.appointment',
          ) ??
          this.appointment,
      start: start?.copyWith(
            objectPath: '$newObjectPath.start',
          ) ??
          this.start,
      end: end?.copyWith(
            objectPath: '$newObjectPath.end',
          ) ??
          this.end,
      participantType: participantType
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.participantType',
                ),
              )
              .toList() ??
          this.participantType,
      actor: actor?.copyWith(
            objectPath: '$newObjectPath.actor',
          ) ??
          this.actor,
      participantStatus: participantStatus?.copyWith(
            objectPath: '$newObjectPath.participantStatus',
          ) ??
          this.participantStatus,
      comment: comment?.copyWith(
            objectPath: '$newObjectPath.comment',
          ) ??
          this.comment,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AppointmentResponse) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      appointment,
      o.appointment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      start,
      o.start,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      end,
      o.end,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      participantType,
      o.participantType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actor,
      o.actor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      participantStatus,
      o.participantStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comment,
      o.comment,
    )) {
      return false;
    }
    return true;
  }
}
