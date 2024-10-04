import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PatientContact {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<CodeableConcept> relationship;
  final HumanName name;
  final List<ContactPoint> telecom;
  final Address address;
  final FhirCode gender;
  final PrimitiveElement Gender;
  final Reference organization;
  final Period period;
  const PatientContact({
    this.id,
    this.extension,
    this.modifierExtension,
    this.relationship,
    this.name,
    this.telecom,
    this.address,
    this.gender,
    this.Gender,
    this.organization,
    this.period,
  });
}
