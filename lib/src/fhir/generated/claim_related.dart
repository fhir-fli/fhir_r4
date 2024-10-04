import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClaimRelated {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference claim;
  final CodeableConcept relationship;
  final Identifier reference;
  const ClaimRelated({
    this.id,
    this.extension,
    this.modifierExtension,
    this.claim,
    this.relationship,
    this.reference,
  });
}
