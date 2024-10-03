import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class DosageEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  int? sequence;

  @ToOne()
  PrimitiveElementEntity? sequenceElement;

  String? text;

  @ToOne()
  PrimitiveElementEntity? textElement;

  @ToMany()
  List<CodeableConceptEntity>? additionalInstruction;

  String? patientInstruction;

  @ToOne()
  PrimitiveElementEntity? patientInstructionElement;

  @ToOne()
  TimingEntity? timing;

  bool? asNeededBoolean;

  @ToOne()
  PrimitiveElementEntity? asNeededBooleanElement;

  @ToOne()
  CodeableConceptEntity? asNeededCodeableConcept;

  @ToOne()
  CodeableConceptEntity? site;

  @ToOne()
  CodeableConceptEntity? route;

  @ToOne()
  CodeableConceptEntity? method;

  @ToMany()
  List<DosageDoseAndRateEntity>? doseAndRate;

  @ToOne()
  RatioEntity? maxDosePerPeriod;

  @ToOne()
  QuantityEntity? maxDosePerAdministration;

  @ToOne()
  QuantityEntity? maxDosePerLifetime;
}

class DosageDoseAndRateEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  RangeEntity? doseRange;

  @ToOne()
  QuantityEntity? doseQuantity;

  @ToOne()
  RatioEntity? rateRatio;

  @ToOne()
  RangeEntity? rateRange;

  @ToOne()
  QuantityEntity? rateQuantity;
}
