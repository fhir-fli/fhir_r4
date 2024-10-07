import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [FhirGroup] /// Represents a defined collection of entities that may be discussed or acted
/// upon collectively but which are not expected to act collectively, and are
/// not formally or legally recognized; i.e. a collection of entities that
/// isn't an Organization.
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
  }) : super(resourceType: R4ResourceType.FhirGroup);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique business identifier for this group.
  final List<Identifier>? identifier;

  /// [active] /// Indicates whether the record for the group is available for use or is
  /// merely being retained for historical purposes.
  final FhirBoolean? active;
  final Element? activeElement;

  /// [type] /// Identifies the broad classification of the kind of resources the group
  /// includes.
  final FhirCode type;
  final Element? typeElement;

  /// [actual] /// If true, indicates that the resource refers to a specific group of real
  /// individuals. If false, the group defines a set of intended individuals.
  final FhirBoolean actual;
  final Element? actualElement;

  /// [code] /// Provides a specific type of resource the group includes; e.g. "cow",
  /// "syringe", etc.
  final CodeableConcept? code;

  /// [name] /// A label assigned to the group for human identification and communication.
  final FhirString? name;
  final Element? nameElement;

  /// [quantity] /// A count of the number of resource instances that are part of the group.
  final FhirUnsignedInt? quantity;
  final Element? quantityElement;

  /// [managingEntity] /// Entity responsible for defining and maintaining Group characteristics
  /// and/or registered members.
  final Reference? managingEntity;

  /// [characteristic] /// Identifies traits whose presence r absence is shared by members of the
  /// group.
  final List<GroupCharacteristic>? characteristic;

  /// [member] /// Identifies the resource instances that are members of the group.
  final List<GroupMember>? member;
  @override
  FhirGroup clone() => throw UnimplementedError();
  FhirGroup copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [GroupCharacteristic] /// Identifies traits whose presence r absence is shared by members of the
/// group.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A code that identifies the kind of trait being asserted.
  final CodeableConcept code;

  /// [valueCodeableConcept] /// The value of the trait that holds (or does not hold - see 'exclude') for
  /// members of the group.
  final CodeableConcept valueCodeableConcept;

  /// [valueBoolean] /// The value of the trait that holds (or does not hold - see 'exclude') for
  /// members of the group.
  final FhirBoolean valueBoolean;
  final Element? valueBooleanElement;

  /// [valueQuantity] /// The value of the trait that holds (or does not hold - see 'exclude') for
  /// members of the group.
  final Quantity valueQuantity;

  /// [valueRange] /// The value of the trait that holds (or does not hold - see 'exclude') for
  /// members of the group.
  final Range valueRange;

  /// [valueReference] /// The value of the trait that holds (or does not hold - see 'exclude') for
  /// members of the group.
  final Reference valueReference;

  /// [exclude] /// If true, indicates the characteristic is one that is NOT held by members of
  /// the group.
  final FhirBoolean exclude;
  final Element? excludeElement;

  /// [period] /// The period over which the characteristic is tested; e.g. the patient had an
  /// operation during the month of June.
  final Period? period;
  @override
  GroupCharacteristic clone() => throw UnimplementedError();
  GroupCharacteristic copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [GroupMember] /// Identifies the resource instances that are members of the group.
class GroupMember extends BackboneElement {
  GroupMember({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.entity,
    this.period,
    this.inactive,
    this.inactiveElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [entity] /// A reference to the entity that is a member of the group. Must be consistent
  /// with Group.type. If the entity is another group, then the type must be the
  /// same.
  final Reference entity;

  /// [period] /// The period that the member was in the group, if known.
  final Period? period;

  /// [inactive] /// A flag to indicate that the member is no longer in the group, but
  /// previously may have been a member.
  final FhirBoolean? inactive;
  final Element? inactiveElement;
  @override
  GroupMember clone() => throw UnimplementedError();
  GroupMember copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? entity,
    Period? period,
    FhirBoolean? inactive,
    Element? inactiveElement,
  }) {
    return GroupMember(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      entity: entity ?? this.entity,
      period: period ?? this.period,
      inactive: inactive ?? this.inactive,
      inactiveElement: inactiveElement ?? this.inactiveElement,
    );
  }
}
