import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class NamingSystem {
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
  final String name;
  final PrimitiveElement Name;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode kind;
  final PrimitiveElement Kind;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final String responsible;
  final PrimitiveElement Responsible;
  final CodeableConcept type;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final String usage;
  final PrimitiveElement Usage;
  final List<NamingSystemUniqueId> uniqueId;
  const NamingSystem({
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
    this.name,
    this.Name,
    this.status,
    this.Status,
    this.kind,
    this.Kind,
    this.date,
    this.Date,
    this.publisher,
    this.Publisher,
    this.contact,
    this.responsible,
    this.Responsible,
    this.type,
    this.description,
    this.Description,
    this.useContext,
    this.jurisdiction,
    this.usage,
    this.Usage,
    required this.uniqueId,
  });
}
