import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ImmunizationRecommendationDateCriterion {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final FhirDateTime value;
  final PrimitiveElement Value;
  const ImmunizationRecommendationDateCriterion({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.code,
    this.value,
    this.Value,
  });
}
