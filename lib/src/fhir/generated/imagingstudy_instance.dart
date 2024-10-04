import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ImagingStudyInstance {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirId uid;
  final PrimitiveElement Uid;
  final Coding sopClass;
  final FhirUnsignedInt number;
  final PrimitiveElement Number;
  final String title;
  final PrimitiveElement Title;
  const ImagingStudyInstance({
    this.id,
    this.extension,
    this.modifierExtension,
    this.uid,
    this.Uid,
    required this.sopClass,
    this.number,
    this.Number,
    this.title,
    this.Title,
  });
}
