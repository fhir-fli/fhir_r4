import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Bundle {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Identifier identifier;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirInstant timestamp;
  final PrimitiveElement Timestamp;
  final FhirUnsignedInt total;
  final PrimitiveElement Total;
  final List<BundleLink> link;
  final List<BundleEntry> entry;
  final Signature signature;
  const Bundle({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.identifier,
    this.type,
    this.Type,
    this.timestamp,
    this.Timestamp,
    this.total,
    this.Total,
    this.link,
    this.entry,
    this.signature,
  });
}
