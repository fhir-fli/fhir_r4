import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DocumentReferenceContext {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Reference> encounter;
  final List<CodeableConcept> event;
  final Period period;
  final CodeableConcept facilityType;
  final CodeableConcept practiceSetting;
  final Reference sourcePatientInfo;
  final List<Reference> related;
  const DocumentReferenceContext({
    this.id,
    this.extension,
    this.modifierExtension,
    this.encounter,
    this.event,
    this.period,
    this.facilityType,
    this.practiceSetting,
    this.sourcePatientInfo,
    this.related,
  });
}
