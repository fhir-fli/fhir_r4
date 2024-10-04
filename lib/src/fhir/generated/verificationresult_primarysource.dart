import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class VerificationResultPrimarySource {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference who;
  final List<CodeableConcept> type;
  final List<CodeableConcept> communicationMethod;
  final CodeableConcept validationStatus;
  final FhirDateTime validationDate;
  final PrimitiveElement ValidationDate;
  final CodeableConcept canPushUpdates;
  final List<CodeableConcept> pushTypeAvailable;
  const VerificationResultPrimarySource({
    this.id,
    this.extension,
    this.modifierExtension,
    this.who,
    this.type,
    this.communicationMethod,
    this.validationStatus,
    this.validationDate,
    this.ValidationDate,
    this.canPushUpdates,
    this.pushTypeAvailable,
  });
}
