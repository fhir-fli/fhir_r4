import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ResearchStudy extends DomainResource {
  final List<Identifier>? identifier;
  final FhirString? title;
  final Element? titleElement;
  final List<Reference>? protocol;
  final List<Reference>? partOf;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept? primaryPurposeType;
  final CodeableConcept? phase;
  final List<CodeableConcept>? category;
  final List<CodeableConcept>? focus;
  final List<CodeableConcept>? condition;
  final List<ContactDetail>? contact;
  final List<RelatedArtifact>? relatedArtifact;
  final List<CodeableConcept>? keyword;
  final List<CodeableConcept>? location;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<Reference>? enrollment;
  final Period? period;
  final Reference? sponsor;
  final Reference? principalInvestigator;
  final List<Reference>? site;
  final CodeableConcept? reasonStopped;
  final List<Annotation>? note;
  final List<ResearchStudyArm>? arm;
  final List<ResearchStudyObjective>? objective;

  ResearchStudy({
    super.id,
    super.meta,
    super.implicitRules,
super.implicitRulesElement,
    super.language,
super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.title,
this.titleElement,
    this.protocol,
    this.partOf,
    required this.status,
this.statusElement,
    this.primaryPurposeType,
    this.phase,
    this.category,
    this.focus,
    this.condition,
    this.contact,
    this.relatedArtifact,
    this.keyword,
    this.location,
    this.description,
this.descriptionElement,
    this.enrollment,
    this.period,
    this.sponsor,
    this.principalInvestigator,
    this.site,
    this.reasonStopped,
    this.note,
    this.arm,
    this.objective,
  }) : super(resourceType: R4ResourceType.ResearchStudy);

@override
ResearchStudy clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ResearchStudyArm extends BackboneElement {
  final FhirString name;
  final Element? nameElement;
  final CodeableConcept? type;
  final FhirString? description;
  final Element? descriptionElement;

  ResearchStudyArm({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
this.nameElement,
    this.type,
    this.description,
this.descriptionElement,
  });

@override
ResearchStudyArm clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ResearchStudyObjective extends BackboneElement {
  final FhirString? name;
  final Element? nameElement;
  final CodeableConcept? type;

  ResearchStudyObjective({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
this.nameElement,
    this.type,
  });

@override
ResearchStudyObjective clone() => throw UnimplementedError();
}

