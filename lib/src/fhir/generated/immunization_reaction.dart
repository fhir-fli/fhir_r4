import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ImmunizationReaction {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final Reference detail;
  final FhirBoolean reported;
  final PrimitiveElement Reported;
  const ImmunizationReaction({
    this.id,
    this.extension,
    this.modifierExtension,
    this.date,
    this.Date,
    this.detail,
    this.reported,
    this.Reported,
  });
}
