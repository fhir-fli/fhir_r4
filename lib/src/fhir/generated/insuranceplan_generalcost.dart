import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class InsurancePlanGeneralCost {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final FhirPositiveInt groupSize;
  final PrimitiveElement GroupSize;
  final Money cost;
  final String comment;
  final PrimitiveElement Comment;
  const InsurancePlanGeneralCost({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.groupSize,
    this.GroupSize,
    this.cost,
    this.comment,
    this.Comment,
  });
}
