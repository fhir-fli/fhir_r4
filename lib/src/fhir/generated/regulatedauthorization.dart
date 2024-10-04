import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class RegulatedAuthorization {
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
  final List<Reference> subject;
  final CodeableConcept type;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<CodeableConcept> region;
  final CodeableConcept status;
  final FhirDateTime statusDate;
  final PrimitiveElement StatusDate;
  final Period validityPeriod;
  final CodeableReference indication;
  final CodeableConcept intendedUse;
  final List<CodeableConcept> basis;
  final Reference holder;
  final Reference regulator;
  final RegulatedAuthorization_Case case;
  const RegulatedAuthorization({
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
    this.subject,
    this.type,
    this.description,
    this.Description,
    this.region,
    this.status,
    this.statusDate,
    this.StatusDate,
    this.validityPeriod,
    this.indication,
    this.intendedUse,
    this.basis,
    this.holder,
    this.regulator,
    this.case,
  });
}
