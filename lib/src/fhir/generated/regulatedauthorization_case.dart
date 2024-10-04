import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class RegulatedAuthorizationCase {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Identifier identifier;
  final CodeableConcept type;
  final CodeableConcept status;
  final Period datePeriod;
  final String dateDateTime;
  final PrimitiveElement DateDateTime;
  final List<RegulatedAuthorizationCase> application;
  const RegulatedAuthorizationCase({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.status,
    this.datePeriod,
    this.dateDateTime,
    this.DateDateTime,
    this.application,
  });
}
