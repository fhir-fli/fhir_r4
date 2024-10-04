import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationEntry {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final HumanName name;
  final String initials;
  final PrimitiveElement Initials;
  final String collectiveName;
  final PrimitiveElement CollectiveName;
  final List<Identifier> identifier;
  final List<CitationAffiliationInfo> affiliationInfo;
  final List<Address> address;
  final List<ContactPoint> telecom;
  final List<CodeableConcept> contributionType;
  final CodeableConcept role;
  final List<CitationContributionInstance> contributionInstance;
  final FhirBoolean correspondingContact;
  final PrimitiveElement CorrespondingContact;
  final FhirPositiveInt listOrder;
  final PrimitiveElement ListOrder;
  const CitationEntry({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.initials,
    this.Initials,
    this.collectiveName,
    this.CollectiveName,
    this.identifier,
    this.affiliationInfo,
    this.address,
    this.telecom,
    this.contributionType,
    this.role,
    this.contributionInstance,
    this.correspondingContact,
    this.CorrespondingContact,
    this.listOrder,
    this.ListOrder,
  });
}
