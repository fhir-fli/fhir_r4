import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ObservationDefinition {
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
  final List<CodeableConcept> category;
  final CodeableConcept code;
  final List<Identifier> identifier;
  final List<FhirCode> permittedDataType;
  final List<PrimitiveElement> PermittedDataType;
  final FhirBoolean multipleResultsAllowed;
  final PrimitiveElement MultipleResultsAllowed;
  final CodeableConcept method;
  final String preferredReportName;
  final PrimitiveElement PreferredReportName;
  final ObservationDefinition_QuantitativeDetails quantitativeDetails;
  final List<ObservationDefinitionQualifiedInterval> qualifiedInterval;
  final Reference validCodedValueSet;
  final Reference normalCodedValueSet;
  final Reference abnormalCodedValueSet;
  final Reference criticalCodedValueSet;
  const ObservationDefinition({
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
    this.category,
    required this.code,
    this.identifier,
    this.permittedDataType,
    this.PermittedDataType,
    this.multipleResultsAllowed,
    this.MultipleResultsAllowed,
    this.method,
    this.preferredReportName,
    this.PreferredReportName,
    this.quantitativeDetails,
    this.qualifiedInterval,
    this.validCodedValueSet,
    this.normalCodedValueSet,
    this.abnormalCodedValueSet,
    this.criticalCodedValueSet,
  });
}
