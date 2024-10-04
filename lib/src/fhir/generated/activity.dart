import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ActivityDefinition {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement Url;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final String subtitle;
  final PrimitiveElement Subtitle;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final CodeableConcept subjectCodeableConcept;
  final Reference subjectReference;
  final String subjectCanonical;
  final PrimitiveElement SubjectCanonical;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final String usage;
  final PrimitiveElement Usage;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirDate approvalDate;
  final PrimitiveElement ApprovalDate;
  final FhirDate lastReviewDate;
  final PrimitiveElement LastReviewDate;
  final Period effectivePeriod;
  final List<CodeableConcept> topic;
  final List<ContactDetail> author;
  final List<ContactDetail> editor;
  final List<ContactDetail> reviewer;
  final List<ContactDetail> endorser;
  final List<RelatedArtifact> relatedArtifact;
  final List<FhirCanonical> library;
  final FhirCode kind;
  final PrimitiveElement Kind;
  final FhirCanonical profile;
  final CodeableConcept code;
  final FhirCode intent;
  final PrimitiveElement Intent;
  final FhirCode priority;
  final PrimitiveElement Priority;
  final FhirBoolean doNotPerform;
  final PrimitiveElement DoNotPerform;
  final Timing timingTiming;
  final String timingDateTime;
  final PrimitiveElement TimingDateTime;
  final Age timingAge;
  final Period timingPeriod;
  final Range timingRange;
  final FhirDuration timingDuration;
  final Reference location;
  final List<ActivityDefinitionParticipant> participant;
  final Reference productReference;
  final CodeableConcept productCodeableConcept;
  final Quantity quantity;
  final List<Dosage> dosage;
  final List<CodeableConcept> bodySite;
  final List<Reference> specimenRequirement;
  final List<Reference> observationRequirement;
  final List<Reference> observationResultRequirement;
  final FhirCanonical transform;
  final List<ActivityDefinitionDynamicValue> dynamicValue;
}

@Data()
@JsonCodable()
class ActivityDefinitionParticipant {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final CodeableConcept role;
}

@Data()
@JsonCodable()
class ActivityDefinitionDynamicValue {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String path;
  final PrimitiveElement Path;
  final FhirExpression expression;
}


