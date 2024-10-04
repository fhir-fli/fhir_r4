import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClinicalUseDefinitionContraindication {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableReference diseaseSymptomProcedure;
  final CodeableReference diseaseStatus;
  final List<CodeableReference> comorbidity;
  final List<Reference> indication;
  final List<ClinicalUseDefinitionOtherTherapy> otherTherapy;
  const ClinicalUseDefinitionContraindication({
    this.id,
    this.extension,
    this.modifierExtension,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.indication,
    this.otherTherapy,
  });
}
