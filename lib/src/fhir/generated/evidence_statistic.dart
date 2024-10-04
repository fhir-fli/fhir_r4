import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EvidenceStatistic {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final List<Annotation> note;
  final CodeableConcept statisticType;
  final CodeableConcept category;
  final Quantity quantity;
  final FhirUnsignedInt numberOfEvents;
  final PrimitiveElement NumberOfEvents;
  final FhirUnsignedInt numberAffected;
  final PrimitiveElement NumberAffected;
  final Evidence_SampleSize sampleSize;
  final List<EvidenceAttributeEstimate> attributeEstimate;
  final List<EvidenceModelCharacteristic> modelCharacteristic;
  const EvidenceStatistic({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.Description,
    this.note,
    this.statisticType,
    this.category,
    this.quantity,
    this.numberOfEvents,
    this.NumberOfEvents,
    this.numberAffected,
    this.NumberAffected,
    this.sampleSize,
    this.attributeEstimate,
    this.modelCharacteristic,
  });
}
