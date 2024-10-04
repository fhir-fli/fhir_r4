import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PatientLink {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference other;
  final FhirCode type;
  final PrimitiveElement Type;
  const PatientLink({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.other,
    this.type,
    this.Type,
  });
}
