import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ObservationDefinitionQuantitativeDetails {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept customaryUnit;
  final CodeableConcept unit;
  final FhirDecimal conversionFactor;
  final PrimitiveElement ConversionFactor;
  final FhirInteger decimalPrecision;
  final PrimitiveElement DecimalPrecision;
  const ObservationDefinitionQuantitativeDetails({
    this.id,
    this.extension,
    this.modifierExtension,
    this.customaryUnit,
    this.unit,
    this.conversionFactor,
    this.ConversionFactor,
    this.decimalPrecision,
    this.DecimalPrecision,
  });
}
