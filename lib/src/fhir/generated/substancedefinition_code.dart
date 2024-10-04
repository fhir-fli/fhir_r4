import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubstanceDefinitionCode {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept status;
  final FhirDateTime statusDate;
  final PrimitiveElement StatusDate;
  final List<Annotation> note;
  final List<Reference> source;
  const SubstanceDefinitionCode({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.status,
    this.statusDate,
    this.StatusDate,
    this.note,
    this.source,
  });
}
