import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class RelatedArtifact {
  final String id;
  final List<FhirExtension> extension;
  final dynamic type;
  final PrimitiveElement Type;
  final String label;
  final PrimitiveElement Label;
  final String display;
  final PrimitiveElement Display;
  final FhirMarkdown citation;
  final PrimitiveElement Citation;
  final FhirUrl url;
  final PrimitiveElement Url;
  final Attachment document;
  final FhirCanonical resource;
}

@Data()
@JsonCodable()
class RelatedPerson {
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
  final FhirBoolean active;
  final PrimitiveElement Active;
  final Reference patient;
  final List<CodeableConcept> relationship;
  final List<HumanName> name;
  final List<ContactPoint> telecom;
  final FhirCode gender;
  final PrimitiveElement Gender;
  final FhirDate birthDate;
  final PrimitiveElement BirthDate;
  final List<Address> address;
  final List<Attachment> photo;
  final Period period;
  final List<RelatedPersonCommunication> communication;
}

@Data()
@JsonCodable()
class RelatedPersonCommunication {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept language;
  final FhirBoolean preferred;
  final PrimitiveElement Preferred;
}


