import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class RelatedArtifact {
  final String id;
  final List<FhirExtension> extension_;
  final dynamic type;
  final PrimitiveElement typeElement;
  final String label;
  final PrimitiveElement labelElement;
  final String display;
  final PrimitiveElement displayElement;
  final FhirMarkdown citation;
  final PrimitiveElement citationElement;
  final FhirUrl url;
  final PrimitiveElement urlElement;
  final Attachment document;
  final FhirCanonical resource;
  const RelatedArtifact({
    required this.id,
    required this.extension_,
    required this.type,
    required this.typeElement,
    required this.label,
    required this.labelElement,
    required this.display,
    required this.displayElement,
    required this.citation,
    required this.citationElement,
    required this.url,
    required this.urlElement,
    required this.document,
    required this.resource,
  });
}

@Data()
@JsonCodable()
class RelatedPerson {
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
  final FhirBoolean active;
  final PrimitiveElement activeElement;
  final Reference patient;
  final List<CodeableConcept> relationship;
  final List<HumanName> name;
  final List<ContactPoint> telecom;
  final FhirCode gender;
  final PrimitiveElement genderElement;
  final FhirDate birthDate;
  final PrimitiveElement birthDateElement;
  final List<Address> address;
  final List<Attachment> photo;
  final Period period;
  final List<RelatedPersonCommunication> communication;
  const RelatedPerson({
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
    required this.active,
    required this.activeElement,
    required this.patient,
    required this.relationship,
    required this.name,
    required this.telecom,
    required this.gender,
    required this.genderElement,
    required this.birthDate,
    required this.birthDateElement,
    required this.address,
    required this.photo,
    required this.period,
    required this.communication,
  });
}

@Data()
@JsonCodable()
class RelatedPersonCommunication {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept language;
  final FhirBoolean preferred;
  final PrimitiveElement preferredElement;
  const RelatedPersonCommunication({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.language,
    required this.preferred,
    required this.preferredElement,
  });
}


