import 'package:realm/realm.dart';

@RealmModel()
class _AnnotationRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _ReferenceRealm authorReference;
  late String authorString;
  late _PrimitiveElementRealm authorStringElement;
  late String time;
  late _PrimitiveElementRealm timeElement;
  late _FhirMarkdownRealm text;
  late _PrimitiveElementRealm textElement;
}
