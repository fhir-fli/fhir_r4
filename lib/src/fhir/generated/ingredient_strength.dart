import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class IngredientStrength {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Ratio presentationRatio;
  final RatioRange presentationRatioRange;
  final String textPresentation;
  final PrimitiveElement TextPresentation;
  final Ratio concentrationRatio;
  final RatioRange concentrationRatioRange;
  final String textConcentration;
  final PrimitiveElement TextConcentration;
  final String measurementPoint;
  final PrimitiveElement MeasurementPoint;
  final List<CodeableConcept> country;
  final List<IngredientReferenceStrength> referenceStrength;
  const IngredientStrength({
    this.id,
    this.extension,
    this.modifierExtension,
    this.presentationRatio,
    this.presentationRatioRange,
    this.textPresentation,
    this.TextPresentation,
    this.concentrationRatio,
    this.concentrationRatioRange,
    this.textConcentration,
    this.TextConcentration,
    this.measurementPoint,
    this.MeasurementPoint,
    this.country,
    this.referenceStrength,
  });
}
