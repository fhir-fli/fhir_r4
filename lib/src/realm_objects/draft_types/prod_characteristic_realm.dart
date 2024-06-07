import 'package:realm/realm.dart';

@RealmModel()
class _ProdCharacteristicRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _QuantityRealm height;
  late _QuantityRealm width;
  late _QuantityRealm depth;
  late _QuantityRealm weight;
  late _QuantityRealm nominalVolume;
  late _QuantityRealm externalDiameter;
  late String shape;
  late _PrimitiveElementRealm shapeElement;
  late String color;
  late List<_PrimitiveElementRealm> colorElement;
  late String imprint;
  late List<_PrimitiveElementRealm> imprintElement;
  late List<_AttachmentRealm> image;
  late _CodeableConceptRealm scoring;
}
