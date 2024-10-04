import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationAffiliationInfo {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String affiliation;
  final PrimitiveElement Affiliation;
  final String role;
  final PrimitiveElement Role;
  final List<Identifier> identifier;
  const CitationAffiliationInfo({
    this.id,
    this.extension,
    this.modifierExtension,
    this.affiliation,
    this.Affiliation,
    this.role,
    this.Role,
    this.identifier,
  });
}
