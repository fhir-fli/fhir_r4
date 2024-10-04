import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class HumanName {
  final String id;
  final List<Extension> extension;
  final dynamic use;
  final PrimitiveElement Use;
  final String text;
  final PrimitiveElement Text;
  final String family;
  final PrimitiveElement Family;
  final List<String> given;
  final List<PrimitiveElement> Given;
  final List<String> prefix;
  final List<PrimitiveElement> Prefix;
  final List<String> suffix;
  final List<PrimitiveElement> Suffix;
  final Period period;
  const HumanName({
    this.id,
    this.extension,
    this.use,
    this.Use,
    this.text,
    this.Text,
    this.family,
    this.Family,
    this.given,
    this.Given,
    this.prefix,
    this.Prefix,
    this.suffix,
    this.Suffix,
    this.period,
  });
}
