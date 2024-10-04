import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ImagingStudy {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<Coding> modality;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime started;
  final PrimitiveElement startedElement;
  final List<Reference> basedOn;
  final Reference referrer;
  final List<Reference> interpreter;
  final List<Reference> endpoint;
  final FhirUnsignedInt numberOfSeries;
  final PrimitiveElement numberOfSeriesElement;
  final FhirUnsignedInt numberOfInstances;
  final PrimitiveElement numberOfInstancesElement;
  final Reference procedureReference;
  final List<CodeableConcept> procedureCode;
  final Reference location;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Annotation> note;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<ImagingStudySeries> series;
  const ImagingStudy({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.status,
    required this.statusElement,
    required this.modality,
    required this.subject,
    required this.encounter,
    required this.started,
    required this.startedElement,
    required this.basedOn,
    required this.referrer,
    required this.interpreter,
    required this.endpoint,
    required this.numberOfSeries,
    required this.numberOfSeriesElement,
    required this.numberOfInstances,
    required this.numberOfInstancesElement,
    required this.procedureReference,
    required this.procedureCode,
    required this.location,
    required this.reasonCode,
    required this.reasonReference,
    required this.note,
    required this.description,
    required this.descriptionElement,
    required this.series,
  });
}

@Data()
@JsonCodable()
class ImagingStudySeries {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirId uid;
  final PrimitiveElement uidElement;
  final FhirUnsignedInt number;
  final PrimitiveElement numberElement;
  final Coding modality;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirUnsignedInt numberOfInstances;
  final PrimitiveElement numberOfInstancesElement;
  final List<Reference> endpoint;
  final Coding bodySite;
  final Coding laterality;
  final List<Reference> specimen;
  final FhirDateTime started;
  final PrimitiveElement startedElement;
  final List<ImagingStudyPerformer> performer;
  final List<ImagingStudyInstance> instance;
  const ImagingStudySeries({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.uid,
    required this.uidElement,
    required this.number,
    required this.numberElement,
    required this.modality,
    required this.description,
    required this.descriptionElement,
    required this.numberOfInstances,
    required this.numberOfInstancesElement,
    required this.endpoint,
    required this.bodySite,
    required this.laterality,
    required this.specimen,
    required this.started,
    required this.startedElement,
    required this.performer,
    required this.instance,
  });
}

@Data()
@JsonCodable()
class ImagingStudyPerformer {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept function_;
  final Reference actor;
  const ImagingStudyPerformer({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.function_,
    required this.actor,
  });
}

@Data()
@JsonCodable()
class ImagingStudyInstance {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirId uid;
  final PrimitiveElement uidElement;
  final Coding sopClass;
  final FhirUnsignedInt number;
  final PrimitiveElement numberElement;
  final String title;
  final PrimitiveElement titleElement;
  const ImagingStudyInstance({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.uid,
    required this.uidElement,
    required this.sopClass,
    required this.number,
    required this.numberElement,
    required this.title,
    required this.titleElement,
  });
}


