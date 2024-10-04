import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class AllergyIntolerance {
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
  final List<Identifier> identifier;
  final CodeableConcept clinicalStatus;
  final CodeableConcept verificationStatus;
  final FhirCode type;
  final PrimitiveElement Type;
  final List<FhirCode> category;
  final List<PrimitiveElement> Category;
  final FhirCode criticality;
  final PrimitiveElement Criticality;
  final CodeableConcept code;
  final Reference patient;
  final Reference encounter;
  final String onsetDateTime;
  final PrimitiveElement OnsetDateTime;
  final Age onsetAge;
  final Period onsetPeriod;
  final Range onsetRange;
  final String onsetString;
  final PrimitiveElement OnsetString;
  final FhirDateTime recordedDate;
  final PrimitiveElement RecordedDate;
  final Reference recorder;
  final Reference asserter;
  final FhirDateTime lastOccurrence;
  final PrimitiveElement LastOccurrence;
  final List<Annotation> note;
  final List<AllergyIntoleranceReaction> reaction;
}

@Data()
@JsonCodable()
class AllergyIntoleranceReaction {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept substance;
  final List<CodeableConcept> manifestation;
  final String description;
  final PrimitiveElement Description;
  final FhirDateTime onset;
  final PrimitiveElement Onset;
  final FhirCode severity;
  final PrimitiveElement Severity;
  final CodeableConcept exposureRoute;
  final List<Annotation> note;
}


