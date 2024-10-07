import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ContactPoint] /// Details for all kinds of technology mediated contact points for a person or
/// organization, including telephone, email, etc.
class ContactPoint extends DataType {
  ContactPoint({
    super.id,
    super.extension_,
    this.system,
    this.systemElement,
    this.value,
    this.valueElement,
    this.use,
    this.useElement,
    this.rank,
    this.rankElement,
    this.period,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [system] /// Telecommunications form for contact point - what communications system is
  /// required to make use of the contact.
  final FhirCode? system;
  final Element? systemElement;

  /// [value] /// The actual contact point details, in a form that is meaningful to the
  /// designated communication system (i.e. phone number or email address).
  final FhirString? value;
  final Element? valueElement;

  /// [use] /// Identifies the purpose for the contact point.
  final FhirCode? use;
  final Element? useElement;

  /// [rank] /// Specifies a preferred order in which to use a set of contacts.
  /// ContactPoints with lower rank values are more preferred than those with
  /// higher rank values.
  final FhirPositiveInt? rank;
  final Element? rankElement;

  /// [period] /// Time period when the contact point was/is in use.
  final Period? period;
  @override
  ContactPoint clone() => throw UnimplementedError();
  ContactPoint copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? system,
    Element? systemElement,
    FhirString? value,
    Element? valueElement,
    FhirCode? use,
    Element? useElement,
    FhirPositiveInt? rank,
    Element? rankElement,
    Period? period,
  }) {
    return ContactPoint(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      system: system ?? this.system,
      systemElement: systemElement ?? this.systemElement,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      use: use ?? this.use,
      useElement: useElement ?? this.useElement,
      rank: rank ?? this.rank,
      rankElement: rankElement ?? this.rankElement,
      period: period ?? this.period,
    );
  }
}
