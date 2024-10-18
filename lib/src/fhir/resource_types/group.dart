import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [FhirGroup]
/// Represents a defined collection of entities that may be discussed or
/// acted upon collectively but which are not expected to act collectively,
/// and are not formally or legally recognized; i.e. a collection of
/// entities that isn't an Organization.
class FhirGroup extends DomainResource {
  /// Primary constructor for
  /// [FhirGroup]

  FhirGroup({
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
    required this.type,
    required this.actual,
    this.code,
    this.name,
    this.quantity,
    this.managingEntity,
    this.characteristic,
    this.member,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.FhirGroup,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    return FhirGroup(
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
      type: GroupType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      actual: FhirBoolean.fromJson({
        'value': json['actual'],
        '_value': json['_actual'],
      }),
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      quantity: json['quantity'] != null
          ? FhirUnsignedInt.fromJson({
              'value': json['quantity'],
              '_value': json['_quantity'],
            })
          : null,
      managingEntity: json['managingEntity'] != null
          ? Reference.fromJson(
              json['managingEntity'] as Map<String, dynamic>,
            )
          : null,
      characteristic: json['characteristic'] != null
          ? (json['characteristic'] as List<dynamic>)
              .map<GroupCharacteristic>(
                (v) => GroupCharacteristic.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      member: json['member'] != null
          ? (json['member'] as List<dynamic>)
              .map<GroupMember>(
                (v) => GroupMember.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [FhirGroup]
  /// from a [String] or [YamlMap] object
  factory FhirGroup.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? FhirGroup.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? FhirGroup.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'FhirGroup '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [FhirGroup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FhirGroup.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return FhirGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'FhirGroup';

  /// [identifier]
  /// A unique business identifier for this group.
  final List<Identifier>? identifier;

  /// [active]
  /// Indicates whether the record for the group is available for use or is
  /// merely being retained for historical purposes.
  final FhirBoolean? active;

  /// [type]
  /// Identifies the broad classification of the kind of resources the group
  /// includes.
  final GroupType type;

  /// [actual]
  /// If true, indicates that the resource refers to a specific group of real
  /// individuals. If false, the group defines a set of intended individuals.
  final FhirBoolean actual;

  /// [code]
  /// Provides a specific type of resource the group includes; e.g. "cow",
  /// "syringe", etc.
  final CodeableConcept? code;

  /// [name]
  /// A label assigned to the group for human identification and
  /// communication.
  final FhirString? name;

  /// [quantity]
  /// A count of the number of resource instances that are part of the group.
  final FhirUnsignedInt? quantity;

  /// [managingEntity]
  /// Entity responsible for defining and maintaining Group characteristics
  /// and/or registered members.
  final Reference? managingEntity;

  /// [characteristic]
  /// Identifies traits whose presence r absence is shared by members of the
  /// group.
  final List<GroupCharacteristic>? characteristic;

  /// [member]
  /// Identifies the resource instances that are members of the group.
  final List<GroupMember>? member;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      json['language'] = language!.toJson();
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
      final fieldJson8 = active!.toJson();
      json['active'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_active'] = fieldJson8['_value'];
      }
    }

    json['type'] = type.toJson();

    final fieldJson10 = actual.toJson();
    json['actual'] = fieldJson10['value'];
    if (fieldJson10['_value'] != null) {
      json['_actual'] = fieldJson10['_value'];
    }

    if (code != null) {
      json['code'] = code!.toJson();
    }

    if (name != null) {
      final fieldJson12 = name!.toJson();
      json['name'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_name'] = fieldJson12['_value'];
      }
    }

    if (quantity != null) {
      final fieldJson13 = quantity!.toJson();
      json['quantity'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_quantity'] = fieldJson13['_value'];
      }
    }

    if (managingEntity != null) {
      json['managingEntity'] = managingEntity!.toJson();
    }

    if (characteristic != null && characteristic!.isNotEmpty) {
      json['characteristic'] = characteristic!.map((e) => e.toJson()).toList();
    }

    if (member != null && member!.isNotEmpty) {
      json['member'] = member!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  FhirGroup clone() => throw UnimplementedError();
  @override
  FhirGroup copyWith({
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
    GroupType? type,
    FhirBoolean? actual,
    CodeableConcept? code,
    FhirString? name,
    FhirUnsignedInt? quantity,
    Reference? managingEntity,
    List<GroupCharacteristic>? characteristic,
    List<GroupMember>? member,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirGroup(
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
      type: type ?? this.type,
      actual: actual ?? this.actual,
      code: code ?? this.code,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      managingEntity: managingEntity ?? this.managingEntity,
      characteristic: characteristic ?? this.characteristic,
      member: member ?? this.member,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [GroupCharacteristic]
/// Identifies traits whose presence r absence is shared by members of the
/// group.
class GroupCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [GroupCharacteristic]

  GroupCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.valueCodeableConcept,
    this.valueBoolean,
    this.valueQuantity,
    this.valueRange,
    this.valueReference,
    required this.exclude,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GroupCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    return GroupCharacteristic(
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
      code: CodeableConcept.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['valueBoolean'],
              '_value': json['_valueBoolean'],
            })
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(
              json['valueRange'] as Map<String, dynamic>,
            )
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(
              json['valueReference'] as Map<String, dynamic>,
            )
          : null,
      exclude: FhirBoolean.fromJson({
        'value': json['exclude'],
        '_value': json['_exclude'],
      }),
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [GroupCharacteristic]
  /// from a [String] or [YamlMap] object
  factory GroupCharacteristic.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? GroupCharacteristic.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? GroupCharacteristic.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'GroupCharacteristic '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [GroupCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GroupCharacteristic.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return GroupCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'GroupCharacteristic';

  /// [code]
  /// A code that identifies the kind of trait being asserted.
  final CodeableConcept code;

  /// [valueCodeableConcept]
  /// The value of the trait that holds (or does not hold - see 'exclude')
  /// for members of the group.
  final CodeableConcept? valueCodeableConcept;

  /// [valueBoolean]
  /// The value of the trait that holds (or does not hold - see 'exclude')
  /// for members of the group.
  final FhirBoolean? valueBoolean;

  /// [valueQuantity]
  /// The value of the trait that holds (or does not hold - see 'exclude')
  /// for members of the group.
  final Quantity? valueQuantity;

  /// [valueRange]
  /// The value of the trait that holds (or does not hold - see 'exclude')
  /// for members of the group.
  final Range? valueRange;

  /// [valueReference]
  /// The value of the trait that holds (or does not hold - see 'exclude')
  /// for members of the group.
  final Reference? valueReference;

  /// [exclude]
  /// If true, indicates the characteristic is one that is NOT held by
  /// members of the group.
  final FhirBoolean exclude;

  /// [period]
  /// The period over which the characteristic is tested; e.g. the patient
  /// had an operation during the month of June.
  final Period? period;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['code'] = code.toJson();

    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }

    if (valueBoolean != null) {
      final fieldJson4 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueBoolean'] = fieldJson4['_value'];
      }
    }

    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }

    if (valueRange != null) {
      json['valueRange'] = valueRange!.toJson();
    }

    if (valueReference != null) {
      json['valueReference'] = valueReference!.toJson();
    }

    final fieldJson8 = exclude.toJson();
    json['exclude'] = fieldJson8['value'];
    if (fieldJson8['_value'] != null) {
      json['_exclude'] = fieldJson8['_value'];
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    return json;
  }

  @override
  GroupCharacteristic clone() => throw UnimplementedError();
  @override
  GroupCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? valueCodeableConcept,
    FhirBoolean? valueBoolean,
    Quantity? valueQuantity,
    Range? valueRange,
    Reference? valueReference,
    FhirBoolean? exclude,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return GroupCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      valueReference: valueReference ?? this.valueReference,
      exclude: exclude ?? this.exclude,
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

/// [GroupMember]
/// Identifies the resource instances that are members of the group.
class GroupMember extends BackboneElement {
  /// Primary constructor for
  /// [GroupMember]

  GroupMember({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.entity,
    this.period,
    this.inactive,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GroupMember.fromJson(
    Map<String, dynamic> json,
  ) {
    return GroupMember(
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
      entity: Reference.fromJson(
        json['entity'] as Map<String, dynamic>,
      ),
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      inactive: json['inactive'] != null
          ? FhirBoolean.fromJson({
              'value': json['inactive'],
              '_value': json['_inactive'],
            })
          : null,
    );
  }

  /// Deserialize [GroupMember]
  /// from a [String] or [YamlMap] object
  factory GroupMember.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? GroupMember.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? GroupMember.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'GroupMember '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [GroupMember]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GroupMember.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return GroupMember.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'GroupMember';

  /// [entity]
  /// A reference to the entity that is a member of the group. Must be
  /// consistent with Group.type. If the entity is another group, then the
  /// type must be the same.
  final Reference entity;

  /// [period]
  /// The period that the member was in the group, if known.
  final Period? period;

  /// [inactive]
  /// A flag to indicate that the member is no longer in the group, but
  /// previously may have been a member.
  final FhirBoolean? inactive;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['entity'] = entity.toJson();

    if (period != null) {
      json['period'] = period!.toJson();
    }

    if (inactive != null) {
      final fieldJson4 = inactive!.toJson();
      json['inactive'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_inactive'] = fieldJson4['_value'];
      }
    }

    return json;
  }

  @override
  GroupMember clone() => throw UnimplementedError();
  @override
  GroupMember copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? entity,
    Period? period,
    FhirBoolean? inactive,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return GroupMember(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      entity: entity ?? this.entity,
      period: period ?? this.period,
      inactive: inactive ?? this.inactive,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
