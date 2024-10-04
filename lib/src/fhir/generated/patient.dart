import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Patient {
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
  final List<HumanName> name;
  final List<ContactPoint> telecom;
  final FhirCode gender;
  final PrimitiveElement genderElement;
  final FhirDate birthDate;
  final PrimitiveElement birthDateElement;
  final bool deceasedBoolean;
  final PrimitiveElement deceasedBooleanElement;
  final String deceasedDateTime;
  final PrimitiveElement deceasedDateTimeElement;
  final List<Address> address;
  final CodeableConcept maritalStatus;
  final bool multipleBirthBoolean;
  final PrimitiveElement multipleBirthBooleanElement;
  final double multipleBirthInteger;
  final PrimitiveElement multipleBirthIntegerElement;
  final List<Attachment> photo;
  final List<PatientContact> contact;
  final List<PatientCommunication> communication;
  final List<Reference> generalPractitioner;
  final Reference managingOrganization;
  final List<PatientLink> link;
  const Patient({
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
    required this.name,
    required this.telecom,
    required this.gender,
    required this.genderElement,
    required this.birthDate,
    required this.birthDateElement,
    required this.deceasedBoolean,
    required this.deceasedBooleanElement,
    required this.deceasedDateTime,
    required this.deceasedDateTimeElement,
    required this.address,
    required this.maritalStatus,
    required this.multipleBirthBoolean,
    required this.multipleBirthBooleanElement,
    required this.multipleBirthInteger,
    required this.multipleBirthIntegerElement,
    required this.photo,
    required this.contact,
    required this.communication,
    required this.generalPractitioner,
    required this.managingOrganization,
    required this.link,
  });
}

@Data()
@JsonCodable()
class PatientContact {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> relationship;
  final HumanName name;
  final List<ContactPoint> telecom;
  final Address address;
  final FhirCode gender;
  final PrimitiveElement genderElement;
  final Reference organization;
  final Period period;
  const PatientContact({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.relationship,
    required this.name,
    required this.telecom,
    required this.address,
    required this.gender,
    required this.genderElement,
    required this.organization,
    required this.period,
  });
}

@Data()
@JsonCodable()
class PatientCommunication {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept language;
  final FhirBoolean preferred;
  final PrimitiveElement preferredElement;
  const PatientCommunication({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.language,
    required this.preferred,
    required this.preferredElement,
  });
}

@Data()
@JsonCodable()
class PatientLink {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference other;
  final FhirCode type;
  final PrimitiveElement typeElement;
  const PatientLink({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.other,
    required this.type,
    required this.typeElement,
  });
}


