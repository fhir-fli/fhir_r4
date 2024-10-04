import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Account {
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
  final CodeableConcept type;
  final String name;
  final PrimitiveElement Name;
  final List<Reference> subject;
  final Period servicePeriod;
  final List<AccountCoverage> coverage;
  final Reference owner;
  final String description;
  final PrimitiveElement Description;
  final List<AccountGuarantor> guarantor;
  final Reference partOf;
  const Account({
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
    this.type,
    this.name,
    this.Name,
    this.subject,
    this.servicePeriod,
    this.coverage,
    this.owner,
    this.description,
    this.Description,
    this.guarantor,
    this.partOf,
  });
}
