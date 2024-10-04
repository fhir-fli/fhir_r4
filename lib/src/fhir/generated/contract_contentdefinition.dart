import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ContractContentDefinition {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept subType;
  final Reference publisher;
  final FhirDateTime publicationDate;
  final PrimitiveElement PublicationDate;
  final FhirCode publicationStatus;
  final PrimitiveElement PublicationStatus;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  const ContractContentDefinition({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    this.subType,
    this.publisher,
    this.publicationDate,
    this.PublicationDate,
    this.publicationStatus,
    this.PublicationStatus,
    this.copyright,
    this.Copyright,
  });
}
