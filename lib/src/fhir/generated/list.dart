import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class List {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final String title;
  final PrimitiveElement Title;
  final CodeableConcept code;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final Reference source;
  final CodeableConcept orderedBy;
  final List<Annotation> note;
  final List<ListEntry> entry;
  final CodeableConcept emptyReason;
  const List({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.Status,
    this.mode,
    this.Mode,
    this.title,
    this.Title,
    this.code,
    this.subject,
    this.encounter,
    this.date,
    this.Date,
    this.source,
    this.orderedBy,
    this.note,
    this.entry,
    this.emptyReason,
  });
}
