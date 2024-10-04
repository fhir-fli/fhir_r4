import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MeasureComponent {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final String description;
  final PrimitiveElement Description;
  final FhirExpression criteria;
  const MeasureComponent({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.description,
    this.Description,
    required this.criteria,
  });
}
