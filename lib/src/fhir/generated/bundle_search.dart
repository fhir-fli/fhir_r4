import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class BundleSearch {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final FhirDecimal score;
  final PrimitiveElement Score;
  const BundleSearch({
    this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.Mode,
    this.score,
    this.Score,
  });
}
