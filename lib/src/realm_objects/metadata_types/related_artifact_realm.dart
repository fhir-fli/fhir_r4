import 'package:realm/realm.dart';

@RealmModel()
class _RelatedArtifactRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _RelatedArtifactTypeRealm type;
  late _PrimitiveElementRealm typeElement;
  late String label;
  late _PrimitiveElementRealm labelElement;
  late String display;
  late _PrimitiveElementRealm displayElement;
  late _FhirMarkdownRealm citation;
  late _PrimitiveElementRealm citationElement;
  late _FhirUrlRealm url;
  late _PrimitiveElementRealm urlElement;
  late _AttachmentRealm document;
  late _FhirCanonicalRealm resource;
}
