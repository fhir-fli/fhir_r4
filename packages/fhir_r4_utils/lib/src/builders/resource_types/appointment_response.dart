import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        yamlMapToJson,
        yamlToJson,
        R4ResourceType,
        StringExtensionForFHIR,
        AppointmentResponse;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// Extension to change [AppointmentResponse] to a Builder
extension BuilderAppointmentResponse on AppointmentResponse {
  /// Converts [AppointmentResponse] to a [AppointmentResponseBuilder]
  AppointmentResponseBuilder get toBuilder =>
      AppointmentResponseBuilder.fromJson(toJson());
}

/// [AppointmentResponseBuilder]
/// A reply to an appointment request for a patient and/or practitioner(s),
/// such as a confirmation or rejection.
class AppointmentResponseBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [AppointmentResponseBuilder]

  AppointmentResponseBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.appointment,
    this.start,
    this.end,
    this.participantType,
    this.actor,
    this.participantStatus,
    this.comment,
  }) : super(
          objectPath: 'AppointmentResponse',
          resourceType: R4ResourceType.AppointmentResponse,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AppointmentResponseBuilder.empty() => AppointmentResponseBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentResponseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AppointmentResponse';
    return AppointmentResponseBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      appointment: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'appointment',
        ReferenceBuilder.fromJson,
        '$objectPath.appointment',
      ),
      start: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'start',
        FhirInstantBuilder.fromJson,
        '$objectPath.start',
      ),
      end: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'end',
        FhirInstantBuilder.fromJson,
        '$objectPath.end',
      ),
      participantType: (json['participantType'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.participantType',
              },
            ),
          )
          .toList(),
      actor: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'actor',
        ReferenceBuilder.fromJson,
        '$objectPath.actor',
      ),
      participantStatus: JsonParser.parsePrimitive<ParticipationStatusBuilder>(
        json,
        'participantStatus',
        ParticipationStatusBuilder.fromJson,
        '$objectPath.participantStatus',
      ),
      comment: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'comment',
        FhirStringBuilder.fromJson,
        '$objectPath.comment',
      ),
    );
  }

  /// Deserialize [AppointmentResponseBuilder]
  /// from a [String] or [YamlMap] object
  factory AppointmentResponseBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AppointmentResponseBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AppointmentResponseBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AppointmentResponseBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AppointmentResponseBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentResponseBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AppointmentResponseBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [appointment]
  /// Appointment that this response is replying to.
  ReferenceBuilder? appointment;

  /// [start]
  /// Date/Time that the appointment is to take place, or requested new start
  /// time.
  FhirInstantBuilder? start;

  /// [end]
  /// This may be either the same as the appointment request to confirm the
  /// details of the appointment, or alternately a new time to request a
  /// re-negotiation of the end time.
  FhirInstantBuilder? end;

  /// [participantType]
  /// Role of participant in the appointment.
  List<CodeableConceptBuilder>? participantType;

  /// [actor]
  /// A Person, Location, HealthcareService, or Device that is participating
  /// in the appointment.
  ReferenceBuilder? actor;

  /// [participantStatus]
  /// Participation status of the participant. When the status is declined or
  /// tentative if the start/end times are different to the appointment, then
  /// these times should be interpreted as a requested time change. When the
  /// status is accepted, the times can either be the time of the appointment
  /// (as a confirmation of the time) or can be empty.
  ParticipationStatusBuilder? participantStatus;

  /// [comment]
  /// Additional comments about the appointment.
  FhirStringBuilder? comment;

  /// Converts a AppointmentResponseBuilder to [AppointmentResponse]
  AppointmentResponse build() => AppointmentResponse.fromJson(toJson());

  /// Converts a [AppointmentResponseBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('appointment', appointment);
    addField('start', start);
    addField('end', end);
    addField('participantType', participantType);
    addField('actor', actor);
    addField('participantStatus', participantStatus);
    addField('comment', comment);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (appointment != null) {
          fields.add(appointment!);
        }
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
        if (participantStatus != null) {
          fields.add(participantStatus!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [...(contained ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [...(identifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'appointment':
        {
          if (child is ReferenceBuilder) {
            appointment = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'start':
        {
          if (child is FhirInstantBuilder) {
            start = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'end':
        {
          if (child is FhirInstantBuilder) {
            end = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participantType':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            participantType = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            participantType = [...(participantType ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'actor':
        {
          if (child is ReferenceBuilder) {
            actor = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participantStatus':
        {
          if (child is ParticipationStatusBuilder) {
            participantStatus = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'comment':
        {
          if (child is FhirStringBuilder) {
            comment = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'appointment':
        return ['ReferenceBuilder'];
      case 'start':
        return ['FhirInstantBuilder'];
      case 'end':
        return ['FhirInstantBuilder'];
      case 'participantType':
        return ['CodeableConceptBuilder'];
      case 'actor':
        return ['ReferenceBuilder'];
      case 'participantStatus':
        return ['FhirCodeEnumBuilder'];
      case 'comment':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AppointmentResponseBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'appointment':
        {
          appointment = ReferenceBuilder.empty();
          return;
        }
      case 'start':
        {
          start = FhirInstantBuilder.empty();
          return;
        }
      case 'end':
        {
          end = FhirInstantBuilder.empty();
          return;
        }
      case 'participantType':
        {
          participantType = <CodeableConceptBuilder>[];
          return;
        }
      case 'actor':
        {
          actor = ReferenceBuilder.empty();
          return;
        }
      case 'participantStatus':
        {
          participantStatus = ParticipationStatusBuilder.empty();
          return;
        }
      case 'comment':
        {
          comment = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool appointment = false,
    bool start = false,
    bool end = false,
    bool participantType = false,
    bool actor = false,
    bool participantStatus = false,
    bool comment = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (appointment) this.appointment = null;
    if (start) this.start = null;
    if (end) this.end = null;
    if (participantType) this.participantType = null;
    if (actor) this.actor = null;
    if (participantStatus) this.participantStatus = null;
    if (comment) this.comment = null;
  }

  @override
  AppointmentResponseBuilder clone() => throw UnimplementedError();
  @override
  AppointmentResponseBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    ReferenceBuilder? appointment,
    FhirInstantBuilder? start,
    FhirInstantBuilder? end,
    List<CodeableConceptBuilder>? participantType,
    ReferenceBuilder? actor,
    ParticipationStatusBuilder? participantStatus,
    FhirStringBuilder? comment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = AppointmentResponseBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      appointment: appointment ?? this.appointment,
      start: start ?? this.start,
      end: end ?? this.end,
      participantType: participantType ?? this.participantType,
      actor: actor ?? this.actor,
      participantStatus: participantStatus ?? this.participantStatus,
      comment: comment ?? this.comment,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! AppointmentResponseBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
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
    if (!listEquals<CodeableConceptBuilder>(
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
