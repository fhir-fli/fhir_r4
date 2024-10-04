import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AllergyIntoleranceReaction {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept substance;
  final List<CodeableConcept> manifestation;
  final String description;
  final PrimitiveElement Description;
  final FhirDateTime onset;
  final PrimitiveElement Onset;
  final FhirCode severity;
  final PrimitiveElement Severity;
  final CodeableConcept exposureRoute;
  final List<Annotation> note;
  const AllergyIntoleranceReaction({
    this.id,
    this.extension,
    this.modifierExtension,
    this.substance,
    required this.manifestation,
    this.description,
    this.Description,
    this.onset,
    this.Onset,
    this.severity,
    this.Severity,
    this.exposureRoute,
    this.note,
  });
}
