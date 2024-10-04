import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class InsurancePlan {
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
  final List<CodeableConcept> type;
  final String name;
  final PrimitiveElement Name;
  final List<String> alias;
  final List<PrimitiveElement> Alias;
  final Period period;
  final Reference ownedBy;
  final Reference administeredBy;
  final List<Reference> coverageArea;
  final List<InsurancePlanContact> contact;
  final List<Reference> endpoint;
  final List<Reference> network;
  final List<InsurancePlanCoverage> coverage;
  final List<InsurancePlanPlan> plan;
  const InsurancePlan({
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
    this.alias,
    this.Alias,
    this.period,
    this.ownedBy,
    this.administeredBy,
    this.coverageArea,
    this.contact,
    this.endpoint,
    this.network,
    this.coverage,
    this.plan,
  });
}
