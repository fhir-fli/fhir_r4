import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ExplanationOfBenefitAccident {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirDate date;
  final PrimitiveElement Date;
  final CodeableConcept type;
  final Address locationAddress;
  final Reference locationReference;
  const ExplanationOfBenefitAccident({
    this.id,
    this.extension,
    this.modifierExtension,
    this.date,
    this.Date,
    this.type,
    this.locationAddress,
    this.locationReference,
  });
}
