import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Group {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final FhirBoolean active;
  final PrimitiveElement Active;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirBoolean actual;
  final PrimitiveElement Actual;
  final CodeableConcept code;
  final String name;
  final PrimitiveElement Name;
  final FhirUnsignedInt quantity;
  final PrimitiveElement Quantity;
  final Reference managingEntity;
  final List<GroupCharacteristic> characteristic;
  final List<GroupMember> member;
  const Group({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.active,
    this.Active,
    this.type,
    this.Type,
    this.actual,
    this.Actual,
    this.code,
    this.name,
    this.Name,
    this.quantity,
    this.Quantity,
    this.managingEntity,
    this.characteristic,
    this.member,
  });
}
