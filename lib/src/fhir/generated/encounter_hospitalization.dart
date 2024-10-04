import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EncounterHospitalization {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Identifier preAdmissionIdentifier;
  final Reference origin;
  final CodeableConcept admitSource;
  final CodeableConcept reAdmission;
  final List<CodeableConcept> dietPreference;
  final List<CodeableConcept> specialCourtesy;
  final List<CodeableConcept> specialArrangement;
  final Reference destination;
  final CodeableConcept dischargeDisposition;
  const EncounterHospitalization({
    this.id,
    this.extension,
    this.modifierExtension,
    this.preAdmissionIdentifier,
    this.origin,
    this.admitSource,
    this.reAdmission,
    this.dietPreference,
    this.specialCourtesy,
    this.specialArrangement,
    this.destination,
    this.dischargeDisposition,
  });
}
