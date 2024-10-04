import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ValueSetCompose {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirDate lockedDate;
  final PrimitiveElement LockedDate;
  final FhirBoolean inactive;
  final PrimitiveElement Inactive;
  final List<ValueSetInclude> include;
  final List<ValueSetInclude> exclude;
  const ValueSetCompose({
    this.id,
    this.extension,
    this.modifierExtension,
    this.lockedDate,
    this.LockedDate,
    this.inactive,
    this.Inactive,
    required this.include,
    this.exclude,
  });
}
