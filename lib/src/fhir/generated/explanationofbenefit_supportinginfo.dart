import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ExplanationOfBenefitSupportingInfo {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
  final CodeableConcept category;
  final CodeableConcept code;
  final String timingDate;
  final PrimitiveElement TimingDate;
  final Period timingPeriod;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final String valueString;
  final PrimitiveElement ValueString;
  final Quantity valueQuantity;
  final Attachment valueAttachment;
  final Reference valueReference;
  final Coding reason;
  const ExplanationOfBenefitSupportingInfo({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.Sequence,
    required this.category,
    this.code,
    this.timingDate,
    this.TimingDate,
    this.timingPeriod,
    this.valueBoolean,
    this.ValueBoolean,
    this.valueString,
    this.ValueString,
    this.valueQuantity,
    this.valueAttachment,
    this.valueReference,
    this.reason,
  });
}
