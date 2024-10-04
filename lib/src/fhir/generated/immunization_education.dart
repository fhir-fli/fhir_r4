import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ImmunizationEducation {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String documentType;
  final PrimitiveElement DocumentType;
  final FhirUri reference;
  final PrimitiveElement Reference;
  final FhirDateTime publicationDate;
  final PrimitiveElement PublicationDate;
  final FhirDateTime presentationDate;
  final PrimitiveElement PresentationDate;
  const ImmunizationEducation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.documentType,
    this.DocumentType,
    this.reference,
    this.Reference,
    this.publicationDate,
    this.PublicationDate,
    this.presentationDate,
    this.PresentationDate,
  });
}
