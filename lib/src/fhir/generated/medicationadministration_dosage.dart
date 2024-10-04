import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationAdministrationDosage {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String text;
  final PrimitiveElement Text;
  final CodeableConcept site;
  final CodeableConcept route;
  final CodeableConcept method;
  final Quantity dose;
  final Ratio rateRatio;
  final Quantity rateQuantity;
  const MedicationAdministrationDosage({
    this.id,
    this.extension,
    this.modifierExtension,
    this.text,
    this.Text,
    this.site,
    this.route,
    this.method,
    this.dose,
    this.rateRatio,
    this.rateQuantity,
  });
}
