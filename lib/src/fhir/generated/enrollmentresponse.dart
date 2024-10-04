import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EnrollmentResponse {
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
  final Reference request;
  final FhirCode outcome;
  final PrimitiveElement Outcome;
  final String disposition;
  final PrimitiveElement Disposition;
  final FhirDateTime created;
  final PrimitiveElement Created;
  final Reference organization;
  final Reference requestProvider;
  const EnrollmentResponse({
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
    this.request,
    this.outcome,
    this.Outcome,
    this.disposition,
    this.Disposition,
    this.created,
    this.Created,
    this.organization,
    this.requestProvider,
  });
}
