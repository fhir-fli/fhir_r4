import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EvidenceReportSection {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String title;
  final PrimitiveElement Title;
  final CodeableConcept focus;
  final Reference focusReference;
  final List<Reference> author;
  final Narrative text;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final CodeableConcept orderedBy;
  final List<CodeableConcept> entryClassifier;
  final List<Reference> entryReference;
  final List<Quantity> entryQuantity;
  final CodeableConcept emptyReason;
  final List<EvidenceReportSection> section;
  const EvidenceReportSection({
    this.id,
    this.extension,
    this.modifierExtension,
    this.title,
    this.Title,
    this.focus,
    this.focusReference,
    this.author,
    this.text,
    this.mode,
    this.Mode,
    this.orderedBy,
    this.entryClassifier,
    this.entryReference,
    this.entryQuantity,
    this.emptyReason,
    this.section,
  });
}
