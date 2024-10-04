import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EvidenceVariableCharacteristic {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final Reference definitionReference;
  final String definitionCanonical;
  final PrimitiveElement DefinitionCanonical;
  final CodeableConcept definitionCodeableConcept;
  final FhirExpression definitionExpression;
  final CodeableConcept method;
  final Reference device;
  final FhirBoolean exclude;
  final PrimitiveElement Exclude;
  final EvidenceVariable_TimeFromStart timeFromStart;
  final FhirCode groupMeasure;
  final PrimitiveElement GroupMeasure;
  const EvidenceVariableCharacteristic({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.Description,
    this.definitionReference,
    this.definitionCanonical,
    this.DefinitionCanonical,
    this.definitionCodeableConcept,
    this.definitionExpression,
    this.method,
    this.device,
    this.exclude,
    this.Exclude,
    this.timeFromStart,
    this.groupMeasure,
    this.GroupMeasure,
  });
}
