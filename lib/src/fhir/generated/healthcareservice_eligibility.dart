import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class HealthcareServiceEligibility {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final FhirMarkdown comment;
  final PrimitiveElement Comment;
  const HealthcareServiceEligibility({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.comment,
    this.Comment,
  });
}
