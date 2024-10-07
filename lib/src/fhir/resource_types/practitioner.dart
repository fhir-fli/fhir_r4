import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Practitioner extends DomainResource {
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
  }) : super(resourceType: R4ResourceType.Practitioner);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  Practitioner clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class PractitionerQualification extends BackboneElement {
  PractitionerQualification({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.code,
    this.period,
    this.issuer,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final CodeableConcept code;
  final Period? period;
  final Reference? issuer;
  @override
  PractitionerQualification clone() => throw UnimplementedError();
}
