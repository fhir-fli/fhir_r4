import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicinalProductDefinition {
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
  final CodeableConcept type;
  final CodeableConcept domain;
  final String version;
  final PrimitiveElement Version;
  final CodeableConcept status;
  final FhirDateTime statusDate;
  final PrimitiveElement StatusDate;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final CodeableConcept combinedPharmaceuticalDoseForm;
  final List<CodeableConcept> route;
  final FhirMarkdown indication;
  final PrimitiveElement Indication;
  final CodeableConcept legalStatusOfSupply;
  final CodeableConcept additionalMonitoringIndicator;
  final List<CodeableConcept> specialMeasures;
  final CodeableConcept pediatricUseIndicator;
  final List<CodeableConcept> classification;
  final List<MarketingStatus> marketingStatus;
  final List<CodeableConcept> packagedMedicinalProduct;
  final List<CodeableConcept> ingredient;
  final List<CodeableReference> impurity;
  final List<Reference> attachedDocument;
  final List<Reference> masterFile;
  final List<MedicinalProductDefinitionContact> contact;
  final List<Reference> clinicalTrial;
  final List<Coding> code;
  final List<MedicinalProductDefinitionName> name;
  final List<MedicinalProductDefinitionCrossReference> crossReference;
  final List<MedicinalProductDefinitionOperation> operation;
  final List<MedicinalProductDefinitionCharacteristic> characteristic;
  const MedicinalProductDefinition({
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
    this.type,
    this.domain,
    this.version,
    this.Version,
    this.status,
    this.statusDate,
    this.StatusDate,
    this.description,
    this.Description,
    this.combinedPharmaceuticalDoseForm,
    this.route,
    this.indication,
    this.Indication,
    this.legalStatusOfSupply,
    this.additionalMonitoringIndicator,
    this.specialMeasures,
    this.pediatricUseIndicator,
    this.classification,
    this.marketingStatus,
    this.packagedMedicinalProduct,
    this.ingredient,
    this.impurity,
    this.attachedDocument,
    this.masterFile,
    this.contact,
    this.clinicalTrial,
    this.code,
    required this.name,
    this.crossReference,
    this.operation,
    this.characteristic,
  });
}
