import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class FhirGroup extends Resource {
  FhirGroup({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  bool? active;
  String type;
  bool actual;
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  String? name;
  int? quantity;
  ToOne<Reference>? managingEntity = ToOne<Reference>();
  ToMany<GroupCharacteristic>? characteristic = ToMany<GroupCharacteristic>();
  ToMany<GroupMember>? member = ToMany<GroupMember>();
}

@Entity()
class GroupCharacteristic {
  GroupCharacteristic({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.valueCodeableConcept,
    this.valueBoolean,
    this.valueQuantity,
    this.valueRange,
    this.valueReference,
    required this.exclude,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? valueCodeableConcept = ToOne<CodeableConcept>();
  bool? valueBoolean;
  ToOne<Quantity>? valueQuantity = ToOne<Quantity>();
  ToOne<Range>? valueRange = ToOne<Range>();
  ToOne<Reference>? valueReference = ToOne<Reference>();
  bool exclude;
  ToOne<Period>? period = ToOne<Period>();
}

@Entity()
class GroupMember {
  GroupMember({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.entity,
    this.period,
    this.inactive,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference> entity = ToOne<Reference>();
  ToOne<Period>? period = ToOne<Period>();
  bool? inactive;
}
