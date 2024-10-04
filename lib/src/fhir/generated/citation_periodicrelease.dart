import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationPeriodicRelease {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept citedMedium;
  final String volume;
  final PrimitiveElement Volume;
  final String issue;
  final PrimitiveElement Issue;
  final Citation_DateOfPublication dateOfPublication;
  const CitationPeriodicRelease({
    this.id,
    this.extension,
    this.modifierExtension,
    this.citedMedium,
    this.volume,
    this.Volume,
    this.issue,
    this.Issue,
    this.dateOfPublication,
  });
}
