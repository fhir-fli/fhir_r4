import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Coverage {
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
  final Reference policyHolder;
  final Reference subscriber;
  final String subscriberId;
  final PrimitiveElement SubscriberId;
  final Reference beneficiary;
  final String dependent;
  final PrimitiveElement Dependent;
  final CodeableConcept relationship;
  final Period period;
  final List<Reference> payor;
  final List<CoverageClass> class;
  final FhirPositiveInt order;
  final PrimitiveElement Order;
  final String network;
  final PrimitiveElement Network;
  final List<CoverageCostToBeneficiary> costToBeneficiary;
  final FhirBoolean subrogation;
  final PrimitiveElement Subrogation;
  final List<Reference> contract;
  const Coverage({
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
    this.policyHolder,
    this.subscriber,
    this.subscriberId,
    this.SubscriberId,
    required this.beneficiary,
    this.dependent,
    this.Dependent,
    this.relationship,
    this.period,
    required this.payor,
    this.class,
    this.order,
    this.Order,
    this.network,
    this.Network,
    this.costToBeneficiary,
    this.subrogation,
    this.Subrogation,
    this.contract,
  });
}
