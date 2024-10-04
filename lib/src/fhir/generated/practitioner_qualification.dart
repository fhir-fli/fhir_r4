import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PractitionerQualification {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final CodeableConcept code;
  final Period period;
  final Reference issuer;
  const PractitionerQualification({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    required this.code,
    this.period,
    this.issuer,
  });
}
