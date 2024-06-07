import 'package:realm/realm.dart';

@RealmModel()
class _AddressRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _AddressUseRealm use;
  late _PrimitiveElementRealm useElement;
  late _AddressTypeRealm type;
  late _PrimitiveElementRealm typeElement;
  late String text;
  late _PrimitiveElementRealm textElement;
  late String line;
  late List<_PrimitiveElementRealm> lineElement;
  late String city;
  late _PrimitiveElementRealm cityElement;
  late String district;
  late _PrimitiveElementRealm districtElement;
  late String state;
  late _PrimitiveElementRealm stateElement;
  late String postalCode;
  late _PrimitiveElementRealm postalCodeElement;
  late String country;
  late _PrimitiveElementRealm countryElement;
  late _PeriodRealm period;
}
