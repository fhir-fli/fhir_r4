import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Identifier] /// An identifier - identifies some entity uniquely and unambiguously.
/// Typically this is used for business identifiers.
class Identifier extends DataType {
  Identifier({
    super.id,
    super.extension_,
    this.use,
    this.useElement,
    this.type,
    this.system,
    this.systemElement,
    this.value,
    this.valueElement,
    this.period,
    this.assigner,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [use] /// The purpose of this identifier.
  final FhirCode? use;
  final Element? useElement;

  /// [type] /// A coded type for the identifier that can be used to determine which
  /// identifier to use for a specific purpose.
  final CodeableConcept? type;

  /// [system] /// Establishes the namespace for the value - that is, a URL that describes a
  /// set values that are unique.
  final FhirUri? system;
  final Element? systemElement;

  /// [value] /// The portion of the identifier typically relevant to the user and which is
  /// unique within the context of the system.
  final FhirString? value;
  final Element? valueElement;

  /// [period] /// Time period during which identifier is/was valid for use.
  final Period? period;

  /// [assigner] /// Organization that issued/manages the identifier.
  final Reference? assigner;
  @override
  Identifier clone() => throw UnimplementedError();
  Identifier copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? use,
    Element? useElement,
    CodeableConcept? type,
    FhirUri? system,
    Element? systemElement,
    FhirString? value,
    Element? valueElement,
    Period? period,
    Reference? assigner,
  }) {
    return Identifier(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      use: use ?? this.use,
      useElement: useElement ?? this.useElement,
      type: type ?? this.type,
      system: system ?? this.system,
      systemElement: systemElement ?? this.systemElement,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      period: period ?? this.period,
      assigner: assigner ?? this.assigner,
    );
  }
}
