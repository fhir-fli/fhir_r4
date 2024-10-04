import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DetectedIssueMitigation {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept action;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final Reference author;
  const DetectedIssueMitigation({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.action,
    this.date,
    this.Date,
    this.author,
  });
}
