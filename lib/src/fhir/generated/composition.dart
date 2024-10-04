import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Composition {
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
  final Identifier identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept type;
  final List<CodeableConcept> category;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final List<Reference> author;
  final String title;
  final PrimitiveElement Title;
  final FhirCode confidentiality;
  final PrimitiveElement Confidentiality;
  final List<CompositionAttester> attester;
  final Reference custodian;
  final List<CompositionRelatesTo> relatesTo;
  final List<CompositionEvent> event;
  final List<CompositionSection> section;
  const Composition({
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
    required this.type,
    this.category,
    this.subject,
    this.encounter,
    this.date,
    this.Date,
    required this.author,
    this.title,
    this.Title,
    this.confidentiality,
    this.Confidentiality,
    this.attester,
    this.custodian,
    this.relatesTo,
    this.event,
    this.section,
  });
}
