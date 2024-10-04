import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ExplanationOfBenefitCareTeam {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
  final Reference provider;
  final FhirBoolean responsible;
  final PrimitiveElement Responsible;
  final CodeableConcept role;
  final CodeableConcept qualification;
  const ExplanationOfBenefitCareTeam({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.Sequence,
    required this.provider,
    this.responsible,
    this.Responsible,
    this.role,
    this.qualification,
  });
}
