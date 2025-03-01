import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Slot]
/// A slot of time on a schedule that may be available for booking
/// appointments.
class Slot extends DomainResource {
  /// Primary constructor for
  /// [Slot]

  const Slot({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    this.appointmentType,
    required this.schedule,
    required this.status,
    required this.start,
    required this.end,
    this.overbooked,
    this.comment,
  }) : super(
          objectPath: 'Slot',
          resourceType: R4ResourceType.Slot,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Slot.empty() => Slot(
        schedule: Reference.empty(),
        status: SlotStatus.values.first,
        start: FhirInstant.empty(),
        end: FhirInstant.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Slot.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Slot';
    return Slot(
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
      serviceCategory: (json['serviceCategory'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.serviceCategory',
              },
            ),
          )
          .toList(),
      serviceType: (json['serviceType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.serviceType',
              },
            ),
          )
          .toList(),
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specialty',
              },
            ),
          )
          .toList(),
      appointmentType: JsonParser.parseObject<CodeableConcept>(
        json,
        'appointmentType',
        CodeableConcept.fromJson,
        '$objectPath.appointmentType',
      ),
      schedule: JsonParser.parseObject<Reference>(
        json,
        'schedule',
        Reference.fromJson,
        '$objectPath.schedule',
      )!,
      status: JsonParser.parsePrimitive<SlotStatus>(
        json,
        'status',
        SlotStatus.fromJson,
        '$objectPath.status',
      )!,
      start: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'start',
        FhirInstant.fromJson,
        '$objectPath.start',
      )!,
      end: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'end',
        FhirInstant.fromJson,
        '$objectPath.end',
      )!,
      overbooked: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'overbooked',
        FhirBoolean.fromJson,
        '$objectPath.overbooked',
      ),
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
        '$objectPath.comment',
      ),
    );
  }

  /// Deserialize [Slot]
  /// from a [String] or [YamlMap] object
  factory Slot.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Slot.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Slot.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Slot '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Slot]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Slot.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Slot.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Slot';

  /// [identifier]
  /// External Ids for this item.
  final List<Identifier>? identifier;

  /// [serviceCategory]
  /// A broad categorization of the service that is to be performed during
  /// this appointment.
  final List<CodeableConcept>? serviceCategory;

  /// [serviceType]
  /// The type of appointments that can be booked into this slot (ideally
  /// this would be an identifiable service - which is at a location, rather
  /// than the location itself). If provided then this overrides the value
  /// provided on the availability resource.
  final List<CodeableConcept>? serviceType;

  /// [specialty]
  /// The specialty of a practitioner that would be required to perform the
  /// service requested in this appointment.
  final List<CodeableConcept>? specialty;

  /// [appointmentType]
  /// The style of appointment or patient that may be booked in the slot (not
  /// service type).
  final CodeableConcept? appointmentType;

  /// [schedule]
  /// The schedule resource that this slot defines an interval of status
  /// information.
  final Reference schedule;

  /// [status]
  /// busy | free | busy-unavailable | busy-tentative | entered-in-error.
  final SlotStatus status;

  /// [start]
  /// Date/Time that the slot is to begin.
  final FhirInstant start;

  /// [end]
  /// Date/Time that the slot is to conclude.
  final FhirInstant end;

  /// [overbooked]
  /// This slot has already been overbooked, appointments are unlikely to be
  /// accepted for this time.
  final FhirBoolean? overbooked;

  /// [comment]
  /// Comments on the slot to describe any extended information. Such as
  /// custom constraints on the slot.
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
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('serviceCategory', serviceCategory);
    addField('serviceType', serviceType);
    addField('specialty', specialty);
    addField('appointmentType', appointmentType);
    addField('schedule', schedule);
    addField('status', status);
    addField('start', start);
    addField('end', end);
    addField('overbooked', overbooked);
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
      'serviceCategory',
      'serviceType',
      'specialty',
      'appointmentType',
      'schedule',
      'status',
      'start',
      'end',
      'overbooked',
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
      case 'serviceCategory':
        if (serviceCategory != null) {
          fields.addAll(serviceCategory!);
        }
      case 'serviceType':
        if (serviceType != null) {
          fields.addAll(serviceType!);
        }
      case 'specialty':
        if (specialty != null) {
          fields.addAll(specialty!);
        }
      case 'appointmentType':
        if (appointmentType != null) {
          fields.add(appointmentType!);
        }
      case 'schedule':
        fields.add(schedule);
      case 'status':
        fields.add(status);
      case 'start':
        fields.add(start);
      case 'end':
        fields.add(end);
      case 'overbooked':
        if (overbooked != null) {
          fields.add(overbooked!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'serviceCategory':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(serviceCategory: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'serviceType':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(serviceType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'specialty':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(specialty: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'appointmentType':
        {
          if (child is CodeableConcept) {
            return copyWith(appointmentType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'schedule':
        {
          if (child is Reference) {
            return copyWith(schedule: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is SlotStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'start':
        {
          if (child is FhirInstant) {
            return copyWith(start: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'end':
        {
          if (child is FhirInstant) {
            return copyWith(end: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'overbooked':
        {
          if (child is FhirBoolean) {
            return copyWith(overbooked: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'comment':
        {
          if (child is FhirString) {
            return copyWith(comment: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'serviceCategory':
        return ['CodeableConcept'];
      case 'serviceType':
        return ['CodeableConcept'];
      case 'specialty':
        return ['CodeableConcept'];
      case 'appointmentType':
        return ['CodeableConcept'];
      case 'schedule':
        return ['Reference'];
      case 'status':
        return ['FhirCode'];
      case 'start':
        return ['FhirInstant'];
      case 'end':
        return ['FhirInstant'];
      case 'overbooked':
        return ['FhirBoolean'];
      case 'comment':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  @override
  Slot clone() => throw UnimplementedError();
  @override
  Slot copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<CodeableConcept>? serviceCategory,
    List<CodeableConcept>? serviceType,
    List<CodeableConcept>? specialty,
    CodeableConcept? appointmentType,
    Reference? schedule,
    SlotStatus? status,
    FhirInstant? start,
    FhirInstant? end,
    FhirBoolean? overbooked,
    FhirString? comment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Slot(
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
      serviceCategory: serviceCategory
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.serviceCategory',
                ),
              )
              .toList() ??
          this.serviceCategory,
      serviceType: serviceType
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.serviceType',
                ),
              )
              .toList() ??
          this.serviceType,
      specialty: specialty
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.specialty',
                ),
              )
              .toList() ??
          this.specialty,
      appointmentType: appointmentType?.copyWith(
            objectPath: '$newObjectPath.appointmentType',
          ) ??
          this.appointmentType,
      schedule: schedule?.copyWith(
            objectPath: '$newObjectPath.schedule',
          ) ??
          this.schedule,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      start: start?.copyWith(
            objectPath: '$newObjectPath.start',
          ) ??
          this.start,
      end: end?.copyWith(
            objectPath: '$newObjectPath.end',
          ) ??
          this.end,
      overbooked: overbooked?.copyWith(
            objectPath: '$newObjectPath.overbooked',
          ) ??
          this.overbooked,
      comment: comment?.copyWith(
            objectPath: '$newObjectPath.comment',
          ) ??
          this.comment,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Slot) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
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
    if (!listEquals<CodeableConcept>(
      serviceCategory,
      o.serviceCategory,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      serviceType,
      o.serviceType,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      specialty,
      o.specialty,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(appointmentType, o.appointmentType)) {
      return false;
    }
    if (!equalsDeepWithNull(schedule, o.schedule)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(start, o.start)) {
      return false;
    }
    if (!equalsDeepWithNull(end, o.end)) {
      return false;
    }
    if (!equalsDeepWithNull(overbooked, o.overbooked)) {
      return false;
    }
    if (!equalsDeepWithNull(comment, o.comment)) {
      return false;
    }
    return true;
  }
}
