import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AdverseEventCausality {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept assessment;
  final String productRelatedness;
  final PrimitiveElement ProductRelatedness;
  final Reference author;
  final CodeableConcept method;
  const AdverseEventCausality({
    this.id,
    this.extension,
    this.modifierExtension,
    this.assessment,
    this.productRelatedness,
    this.ProductRelatedness,
    this.author,
    this.method,
  });
}
