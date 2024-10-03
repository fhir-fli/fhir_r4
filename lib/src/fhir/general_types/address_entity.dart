import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class AddressEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToOne()
  AddressUseEntity? use;

  @ToOne()
  PrimitiveElementEntity? useElement;

  @ToOne()
  AddressTypeEntity? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? text;

  @ToOne()
  PrimitiveElementEntity? textElement;

  List<String>? line;

  @ToMany()
  List<PrimitiveElementEntity>? lineElement;

  String? city;

  @ToOne()
  PrimitiveElementEntity? cityElement;

  String? district;

  @ToOne()
  PrimitiveElementEntity? districtElement;

  String? state;

  @ToOne()
  PrimitiveElementEntity? stateElement;

  String? postalCode;

  @ToOne()
  PrimitiveElementEntity? postalCodeElement;

  String? country;

  @ToOne()
  PrimitiveElementEntity? countryElement;

  @ToOne()
  PeriodEntity? period;
}
