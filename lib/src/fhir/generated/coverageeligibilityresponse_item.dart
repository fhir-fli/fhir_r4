import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CoverageEligibilityResponseItem {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept category;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final Reference provider;
  final FhirBoolean excluded;
  final PrimitiveElement Excluded;
  final String name;
  final PrimitiveElement Name;
  final String description;
  final PrimitiveElement Description;
  final CodeableConcept network;
  final CodeableConcept unit;
  final CodeableConcept term;
  final List<CoverageEligibilityResponseBenefit> benefit;
  final FhirBoolean authorizationRequired;
  final PrimitiveElement AuthorizationRequired;
  final List<CodeableConcept> authorizationSupporting;
  final FhirUri authorizationUrl;
  final PrimitiveElement AuthorizationUrl;
  const CoverageEligibilityResponseItem({
    this.id,
    this.extension,
    this.modifierExtension,
    this.category,
    this.productOrService,
    this.modifier,
    this.provider,
    this.excluded,
    this.Excluded,
    this.name,
    this.Name,
    this.description,
    this.Description,
    this.network,
    this.unit,
    this.term,
    this.benefit,
    this.authorizationRequired,
    this.AuthorizationRequired,
    this.authorizationSupporting,
    this.authorizationUrl,
    this.AuthorizationUrl,
  });
}
