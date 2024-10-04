import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CompositionSection {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String title;
  final PrimitiveElement Title;
  final CodeableConcept code;
  final List<Reference> author;
  final Reference focus;
  final Narrative text;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final CodeableConcept orderedBy;
  final List<Reference> entry;
  final CodeableConcept emptyReason;
  final List<CompositionSection> section;
  const CompositionSection({
    this.id,
    this.extension,
    this.modifierExtension,
    this.title,
    this.Title,
    this.code,
    this.author,
    this.focus,
    this.text,
    this.mode,
    this.Mode,
    this.orderedBy,
    this.entry,
    this.emptyReason,
    this.section,
  });
}
