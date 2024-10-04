import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PersonLink {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference target;
  final FhirCode assurance;
  final PrimitiveElement Assurance;
  const PersonLink({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.target,
    this.assurance,
    this.Assurance,
  });
}
