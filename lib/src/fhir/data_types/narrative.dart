import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Narrative] /// A human-readable summary of the resource conveying the essential clinical
/// and business information for the resource.
class Narrative extends DataType {
  Narrative({
    super.id,
    super.extension_,
    required this.status,
    this.statusElement,
    required this.div,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [status] /// The status of the narrative - whether it's entirely generated (from just
  /// the defined data or the extensions too), or whether a human authored it and
  /// it may contain additional data.
  final FhirCode status;
  final Element? statusElement;

  /// [div] /// The actual narrative content, a stripped down version of XHTML.
  final FhirMarkdown div;
  @override
  Narrative clone() => throw UnimplementedError();
  Narrative copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? status,
    Element? statusElement,
    FhirMarkdown? div,
  }) {
    return Narrative(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      div: div ?? this.div,
    );
  }
}
