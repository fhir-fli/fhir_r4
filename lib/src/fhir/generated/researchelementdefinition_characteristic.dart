import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ResearchElementDefinitionCharacteristic {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept definitionCodeableConcept;
  final String definitionCanonical;
  final PrimitiveElement DefinitionCanonical;
  final FhirExpression definitionExpression;
  final DataRequirement definitionDataRequirement;
  final List<UsageContext> usageContext;
  final FhirBoolean exclude;
  final PrimitiveElement Exclude;
  final CodeableConcept unitOfMeasure;
  final String studyEffectiveDescription;
  final PrimitiveElement StudyEffectiveDescription;
  final String studyEffectiveDateTime;
  final PrimitiveElement StudyEffectiveDateTime;
  final Period studyEffectivePeriod;
  final FhirDuration studyEffectiveDuration;
  final Timing studyEffectiveTiming;
  final FhirDuration studyEffectiveTimeFromStart;
  final FhirCode studyEffectiveGroupMeasure;
  final PrimitiveElement StudyEffectiveGroupMeasure;
  final String participantEffectiveDescription;
  final PrimitiveElement ParticipantEffectiveDescription;
  final String participantEffectiveDateTime;
  final PrimitiveElement ParticipantEffectiveDateTime;
  final Period participantEffectivePeriod;
  final FhirDuration participantEffectiveDuration;
  final Timing participantEffectiveTiming;
  final FhirDuration participantEffectiveTimeFromStart;
  final FhirCode participantEffectiveGroupMeasure;
  final PrimitiveElement ParticipantEffectiveGroupMeasure;
  const ResearchElementDefinitionCharacteristic({
    this.id,
    this.extension,
    this.modifierExtension,
    this.definitionCodeableConcept,
    this.definitionCanonical,
    this.DefinitionCanonical,
    this.definitionExpression,
    this.definitionDataRequirement,
    this.usageContext,
    this.exclude,
    this.Exclude,
    this.unitOfMeasure,
    this.studyEffectiveDescription,
    this.StudyEffectiveDescription,
    this.studyEffectiveDateTime,
    this.StudyEffectiveDateTime,
    this.studyEffectivePeriod,
    this.studyEffectiveDuration,
    this.studyEffectiveTiming,
    this.studyEffectiveTimeFromStart,
    this.studyEffectiveGroupMeasure,
    this.StudyEffectiveGroupMeasure,
    this.participantEffectiveDescription,
    this.ParticipantEffectiveDescription,
    this.participantEffectiveDateTime,
    this.ParticipantEffectiveDateTime,
    this.participantEffectivePeriod,
    this.participantEffectiveDuration,
    this.participantEffectiveTiming,
    this.participantEffectiveTimeFromStart,
    this.participantEffectiveGroupMeasure,
    this.ParticipantEffectiveGroupMeasure,
  });
}
