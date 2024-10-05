import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Practitioner extends DomainResource {
  final List<Identifier>? identifier;
  final FhirBoolean? active;
  final Element? activeElement;
  final List<HumanName>? name;
  final List<ContactPoint>? telecom;
  final List<Address>? address;
  final FhirCode? gender;
  final Element? genderElement;
  final FhirDate? birthDate;
  final Element? birthDateElement;
  final List<Attachment>? photo;
  final List<PractitionerQualification>? qualification;
  final List<CodeableConcept>? communication;

  Practitioner({
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
    this.active,
    this.activeElement,
    this.name,
    this.telecom,
    this.address,
    this.gender,
    this.genderElement,
    this.birthDate,
    this.birthDateElement,
    this.photo,
    this.qualification,
    this.communication,
  }): super(resourceType: R4ResourceType.Practitioner);

@override
Practitioner clone() => this;

}


@Data()
@JsonCodable()
class PractitionerQualification {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<Identifier>? identifier;
  final CodeableConcept code;
  final Period? period;
  final Reference? issuer;

  PractitionerQualification({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.code,
    this.period,
    this.issuer,
  });

}



