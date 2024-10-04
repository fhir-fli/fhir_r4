import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AdministrableProductDefinitionProperty {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept valueCodeableConcept;
  final Quantity valueQuantity;
  final String valueDate;
  final PrimitiveElement ValueDate;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final Attachment valueAttachment;
  final CodeableConcept status;
  const AdministrableProductDefinitionProperty({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.ValueDate,
    this.valueBoolean,
    this.ValueBoolean,
    this.valueAttachment,
    this.status,
  });
}
