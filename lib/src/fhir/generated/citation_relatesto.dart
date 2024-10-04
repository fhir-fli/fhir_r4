import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationRelatesTo {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept relationshipType;
  final List<CodeableConcept> targetClassifier;
  final String targetUri;
  final PrimitiveElement TargetUri;
  final Identifier targetIdentifier;
  final Reference targetReference;
  final Attachment targetAttachment;
  const CitationRelatesTo({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.relationshipType,
    this.targetClassifier,
    this.targetUri,
    this.TargetUri,
    this.targetIdentifier,
    this.targetReference,
    this.targetAttachment,
  });
}
