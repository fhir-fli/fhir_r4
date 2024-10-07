import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'group.g.dart';

/// [FhirGroup] /// Represents a defined collection of entities that may be discussed or acted
/// upon collectively but which are not expected to act collectively, and are
/// not formally or legally recognized; i.e. a collection of entities that
/// isn't an Organization.
@JsonSerializable()
class FhirGroup extends DomainResource {
  FhirGroup({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.active,
    this.activeElement,
    required this.type,
    this.typeElement,
    required this.actual,
    this.actualElement,
    this.code,
    this.name,
    this.nameElement,
    this.quantity,
    this.quantityElement,
    this.managingEntity,
    this.characteristic,
    this.member,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.FhirGroup, fhirType: 'FhirGroup');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique business identifier for this group.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [active] /// Indicates whether the record for the group is available for use or is
  /// merely being retained for historical purposes.
  @JsonKey(name: 'active')
  final FhirBoolean? active;
  @JsonKey(name: '_active')
  final Element? activeElement;

  /// [type] /// Identifies the broad classification of the kind of resources the group
  /// includes.
  @JsonKey(name: 'type')
  final FhirCode type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [actual] /// If true, indicates that the resource refers to a specific group of real
  /// individuals. If false, the group defines a set of intended individuals.
  @JsonKey(name: 'actual')
  final FhirBoolean actual;
  @JsonKey(name: '_actual')
  final Element? actualElement;

  /// [code] /// Provides a specific type of resource the group includes; e.g. "cow",
  /// "syringe", etc.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [name] /// A label assigned to the group for human identification and communication.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [quantity] /// A count of the number of resource instances that are part of the group.
  @JsonKey(name: 'quantity')
  final FhirUnsignedInt? quantity;
  @JsonKey(name: '_quantity')
  final Element? quantityElement;

  /// [managingEntity] /// Entity responsible for defining and maintaining Group characteristics
  /// and/or registered members.
  @JsonKey(name: 'managingEntity')
  final Reference? managingEntity;

  /// [characteristic] /// Identifies traits whose presence r absence is shared by members of the
  /// group.
  @JsonKey(name: 'characteristic')
  final List<GroupCharacteristic>? characteristic;

  /// [member] /// Identifies the resource instances that are members of the group.
  @JsonKey(name: 'member')
  final List<GroupMember>? member;
  factory FhirGroup.fromJson(Map<String, dynamic> json) =>
      _$FhirGroupFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FhirGroupToJson(this);

  @override
  FhirGroup clone() => throw UnimplementedError();
  @override
  FhirGroup copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirBoolean? active,
    Element? activeElement,
    FhirCode? type,
    Element? typeElement,
    FhirBoolean? actual,
    Element? actualElement,
    CodeableConcept? code,
    FhirString? name,
    Element? nameElement,
    FhirUnsignedInt? quantity,
    Element? quantityElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      active: active ?? this.active,
      activeElement: activeElement ?? this.activeElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      actual: actual ?? this.actual,
      actualElement: actualElement ?? this.actualElement,
      code: code ?? this.code,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      quantity: quantity ?? this.quantity,
      quantityElement: quantityElement ?? this.quantityElement,
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

  factory FhirGroup.fromYaml(dynamic yaml) => yaml is String
      ? FhirGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? FhirGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'FhirGroup cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory FhirGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return FhirGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [GroupCharacteristic] /// Identifies traits whose presence r absence is shared by members of the
/// group.
@JsonSerializable()
class GroupCharacteristic extends BackboneElement {
  GroupCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.valueCodeableConcept,
    required this.valueBoolean,
    this.valueBooleanElement,
    required this.valueQuantity,
    required this.valueRange,
    required this.valueReference,
    required this.exclude,
    this.excludeElement,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'GroupCharacteristic');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A code that identifies the kind of trait being asserted.
  @JsonKey(name: 'code')
  final CodeableConcept code;

  /// [valueCodeableConcept] /// The value of the trait that holds (or does not hold - see 'exclude') for
  /// members of the group.
  @JsonKey(name: 'valueCodeableConcept')
  final CodeableConcept valueCodeableConcept;

  /// [valueBoolean] /// The value of the trait that holds (or does not hold - see 'exclude') for
  /// members of the group.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;

  /// [valueQuantity] /// The value of the trait that holds (or does not hold - see 'exclude') for
  /// members of the group.
  @JsonKey(name: 'valueQuantity')
  final Quantity valueQuantity;

  /// [valueRange] /// The value of the trait that holds (or does not hold - see 'exclude') for
  /// members of the group.
  @JsonKey(name: 'valueRange')
  final Range valueRange;

  /// [valueReference] /// The value of the trait that holds (or does not hold - see 'exclude') for
  /// members of the group.
  @JsonKey(name: 'valueReference')
  final Reference valueReference;

  /// [exclude] /// If true, indicates the characteristic is one that is NOT held by members of
  /// the group.
  @JsonKey(name: 'exclude')
  final FhirBoolean exclude;
  @JsonKey(name: '_exclude')
  final Element? excludeElement;

  /// [period] /// The period over which the characteristic is tested; e.g. the patient had an
  /// operation during the month of June.
  @JsonKey(name: 'period')
  final Period? period;
  factory GroupCharacteristic.fromJson(Map<String, dynamic> json) =>
      _$GroupCharacteristicFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GroupCharacteristicToJson(this);

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
    Element? valueBooleanElement,
    Quantity? valueQuantity,
    Range? valueRange,
    Reference? valueReference,
    FhirBoolean? exclude,
    Element? excludeElement,
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
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      valueReference: valueReference ?? this.valueReference,
      exclude: exclude ?? this.exclude,
      excludeElement: excludeElement ?? this.excludeElement,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory GroupCharacteristic.fromYaml(dynamic yaml) => yaml is String
      ? GroupCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? GroupCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'GroupCharacteristic cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory GroupCharacteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return GroupCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [GroupMember] /// Identifies the resource instances that are members of the group.
@JsonSerializable()
class GroupMember extends BackboneElement {
  GroupMember({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.entity,
    this.period,
    this.inactive,
    this.inactiveElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'GroupMember');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [entity] /// A reference to the entity that is a member of the group. Must be consistent
  /// with Group.type. If the entity is another group, then the type must be the
  /// same.
  @JsonKey(name: 'entity')
  final Reference entity;

  /// [period] /// The period that the member was in the group, if known.
  @JsonKey(name: 'period')
  final Period? period;

  /// [inactive] /// A flag to indicate that the member is no longer in the group, but
  /// previously may have been a member.
  @JsonKey(name: 'inactive')
  final FhirBoolean? inactive;
  @JsonKey(name: '_inactive')
  final Element? inactiveElement;
  factory GroupMember.fromJson(Map<String, dynamic> json) =>
      _$GroupMemberFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GroupMemberToJson(this);

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
    Element? inactiveElement,
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
      inactiveElement: inactiveElement ?? this.inactiveElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory GroupMember.fromYaml(dynamic yaml) => yaml is String
      ? GroupMember.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? GroupMember.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'GroupMember cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory GroupMember.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return GroupMember.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
