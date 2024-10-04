import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class IngredientReferenceStrength {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableReference substance;
  final Ratio strengthRatio;
  final RatioRange strengthRatioRange;
  final String measurementPoint;
  final PrimitiveElement MeasurementPoint;
  final List<CodeableConcept> country;
  const IngredientReferenceStrength({
    this.id,
    this.extension,
    this.modifierExtension,
    this.substance,
    this.strengthRatio,
    this.strengthRatioRange,
    this.measurementPoint,
    this.MeasurementPoint,
    this.country,
  });
}
