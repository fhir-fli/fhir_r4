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

  const FhirGroup({
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
  }) : super(
          resourceType: R4ResourceType.FhirGroup,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    return FhirGroup(
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
      type: JsonParser.parsePrimitive<GroupType>(
        json,
        'type',
        GroupType.fromJson,
      )!,
      actual: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'actual',
        FhirBoolean.fromJson,
      )!,
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      quantity: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'quantity',
        FhirUnsignedInt.fromJson,
      ),
      managingEntity: JsonParser.parseObject<Reference>(
        json,
        'managingEntity',
        Reference.fromJson,
      ),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<GroupCharacteristic>(
            (v) => GroupCharacteristic.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      member: (json['member'] as List<dynamic>?)
          ?.map<GroupMember>(
            (v) => GroupMember.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [FhirGroup]
  /// from a [String] or [YamlMap] object
  factory FhirGroup.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FhirGroup.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FhirGroup.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FhirGroup '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FhirGroup]
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

    addField('type', type);
    addField('actual', actual);
    if (code != null) {
      json['code'] = code!.toJson();
    }

    if (name != null) {
      addField('name', name);
    }

    if (quantity != null) {
      addField('quantity', quantity);
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
    );
  }
}

/// [GroupCharacteristic]
/// Identifies traits whose presence r absence is shared by members of the
/// group.
class GroupCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [GroupCharacteristic]

  const GroupCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.valueX,
    required this.exclude,
    this.period,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GroupCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    return GroupCharacteristic(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXGroupCharacteristic>(json, {
        'valueCodeableConcept': CodeableConcept.fromJson,
        'valueBoolean': FhirBoolean.fromJson,
        'valueQuantity': Quantity.fromJson,
        'valueRange': Range.fromJson,
        'valueReference': Reference.fromJson,
      })!,
      exclude: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'exclude',
        FhirBoolean.fromJson,
      )!,
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
    );
  }

  /// Deserialize [GroupCharacteristic]
  /// from a [String] or [YamlMap] object
  factory GroupCharacteristic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GroupCharacteristic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GroupCharacteristic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GroupCharacteristic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GroupCharacteristic]
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

  /// [valueX]
  /// The value of the trait that holds (or does not hold - see 'exclude')
  /// for members of the group.
  final ValueXGroupCharacteristic valueX;

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

    json['code'] = code.toJson();

    json['value${valueX.fhirType.capitalize()}'] = valueX.toJson();

    addField('exclude', exclude);
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
    ValueXGroupCharacteristic? valueX,
    FhirBoolean? exclude,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return GroupCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      valueX: valueX ?? this.valueX,
      exclude: exclude ?? this.exclude,
      period: period ?? this.period,
    );
  }
}

/// [GroupMember]
/// Identifies the resource instances that are members of the group.
class GroupMember extends BackboneElement {
  /// Primary constructor for
  /// [GroupMember]

  const GroupMember({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.entity,
    this.period,
    this.inactive,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GroupMember.fromJson(
    Map<String, dynamic> json,
  ) {
    return GroupMember(
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
      entity: JsonParser.parseObject<Reference>(
        json,
        'entity',
        Reference.fromJson,
      )!,
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      inactive: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'inactive',
        FhirBoolean.fromJson,
      ),
    );
  }

  /// Deserialize [GroupMember]
  /// from a [String] or [YamlMap] object
  factory GroupMember.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GroupMember.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GroupMember.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GroupMember '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GroupMember]
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

    json['entity'] = entity.toJson();

    if (period != null) {
      json['period'] = period!.toJson();
    }

    if (inactive != null) {
      addField('inactive', inactive);
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
  }) {
    return GroupMember(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      entity: entity ?? this.entity,
      period: period ?? this.period,
      inactive: inactive ?? this.inactive,
    );
  }
}
