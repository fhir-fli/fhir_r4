import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationWhoClassified {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference person;
  final Reference organization;
  final Reference publisher;
  final String classifierCopyright;
  final PrimitiveElement ClassifierCopyright;
  final FhirBoolean freeToShare;
  final PrimitiveElement FreeToShare;
  const CitationWhoClassified({
    this.id,
    this.extension,
    this.modifierExtension,
    this.person,
    this.organization,
    this.publisher,
    this.classifierCopyright,
    this.ClassifierCopyright,
    this.freeToShare,
    this.FreeToShare,
  });
}
