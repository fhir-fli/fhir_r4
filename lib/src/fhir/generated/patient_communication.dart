import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PatientCommunication {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept language;
  final FhirBoolean preferred;
  final PrimitiveElement Preferred;
  const PatientCommunication({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.language,
    this.preferred,
    this.Preferred,
  });
}
