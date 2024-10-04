import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ObservationDefinitionQualifiedInterval {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode category;
  final PrimitiveElement Category;
  final Range range;
  final CodeableConcept context;
  final List<CodeableConcept> appliesTo;
  final FhirCode gender;
  final PrimitiveElement Gender;
  final Range age;
  final Range gestationalAge;
  final String condition;
  final PrimitiveElement Condition;
  const ObservationDefinitionQualifiedInterval({
    this.id,
    this.extension,
    this.modifierExtension,
    this.category,
    this.Category,
    this.range,
    this.context,
    this.appliesTo,
    this.gender,
    this.Gender,
    this.age,
    this.gestationalAge,
    this.condition,
    this.Condition,
  });
}
