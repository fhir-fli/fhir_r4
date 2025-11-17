import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'slot.g.dart';

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
          resourceType: R4ResourceType.Slot,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Slot.fromJson(
    Map<String, dynamic> json,
  ) {
    return Slot(
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      serviceCategory: (json['serviceCategory'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      serviceType: (json['serviceType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      appointmentType: JsonParser.parseObject<CodeableConcept>(
        json,
        'appointmentType',
        CodeableConcept.fromJson,
      ),
      schedule: JsonParser.parseObject<Reference>(
        json,
        'schedule',
        Reference.fromJson,
      )!,
      status: JsonParser.parsePrimitive<SlotStatus>(
        json,
        'status',
        SlotStatus.fromJson,
      )!,
      start: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'start',
        FhirInstant.fromJson,
      )!,
      end: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'end',
        FhirInstant.fromJson,
      )!,
      overbooked: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'overbooked',
        FhirBoolean.fromJson,
      ),
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
      'serviceCategory',
      serviceCategory,
    );
    addField(
      'serviceType',
      serviceType,
    );
    addField(
      'specialty',
      specialty,
    );
    addField(
      'appointmentType',
      appointmentType,
    );
    addField(
      'schedule',
      schedule,
    );
    addField(
      'status',
      status,
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
      'overbooked',
      overbooked,
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
  Slot clone() => copyWith();

  /// Copy function for [Slot]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SlotCopyWith<Slot> get copyWith => _$SlotCopyWithImpl<Slot>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Slot) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      serviceCategory,
      o.serviceCategory,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      serviceType,
      o.serviceType,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      specialty,
      o.specialty,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      appointmentType,
      o.appointmentType,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      schedule,
      o.schedule,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      start,
      o.start,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      end,
      o.end,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      overbooked,
      o.overbooked,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      comment,
      o.comment,
    )) {
      return false;
    }
    return true;
  }
}
