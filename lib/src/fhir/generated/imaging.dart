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
}

@Data()
@JsonCodable()
class ImagingStudyPerformer {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept function_;
  final Reference actor;
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
}

