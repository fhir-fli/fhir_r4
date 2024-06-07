import 'package:realm/realm.dart';

@RealmModel()
class _PeriodRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late String start;
  late _PrimitiveElementRealm startElement;
  late String end;
  late _PrimitiveElementRealm endElement;
}
