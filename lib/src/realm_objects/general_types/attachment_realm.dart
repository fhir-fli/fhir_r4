import 'package:realm/realm.dart';

@RealmModel()
class _AttachmentRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _FhirCodeRealm contentType;
  late _PrimitiveElementRealm contentTypeElement;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _FhirBase64BinaryRealm data;
  late _PrimitiveElementRealm dataElement;
  late _FhirUrlRealm url;
  late _PrimitiveElementRealm urlElement;
  late _FhirUnsignedIntRealm size;
  late _PrimitiveElementRealm sizeElement;
  late _FhirBase64BinaryRealm hash;
  late _PrimitiveElementRealm hashElement;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late String creation;
  late _PrimitiveElementRealm creationElement;
}
