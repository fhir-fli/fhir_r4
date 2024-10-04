import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClinicalUseDefinitionIndication {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableReference diseaseSymptomProcedure;
  final CodeableReference diseaseStatus;
  final List<CodeableReference> comorbidity;
  final CodeableReference intendedEffect;
  final Range durationRange;
  final String durationString;
  final PrimitiveElement DurationString;
  final List<Reference> undesirableEffect;
  final List<ClinicalUseDefinitionOtherTherapy> otherTherapy;
  const ClinicalUseDefinitionIndication({
    this.id,
    this.extension,
    this.modifierExtension,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.intendedEffect,
    this.durationRange,
    this.durationString,
    this.DurationString,
    this.undesirableEffect,
    this.otherTherapy,
  });
}
