import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class ResearchStudy extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  ResearchStudy clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ResearchStudyArm extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString name;
  final Element? nameElement;
  final CodeableConcept? type;
  final FhirString? description;
  final Element? descriptionElement;
  @override
  ResearchStudyArm clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ResearchStudyObjective extends BackboneElement {
  ResearchStudyObjective({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.nameElement,
    this.type,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString? name;
  final Element? nameElement;
  final CodeableConcept? type;
  @override
  ResearchStudyObjective clone() => throw UnimplementedError();
}
