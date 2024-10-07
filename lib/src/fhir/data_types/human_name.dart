import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [HumanName] /// A human's name with the ability to identify parts and usage.
class HumanName extends DataType {
  HumanName({
    super.id,
    super.extension_,
    this.use,
    this.useElement,
    this.text,
    this.textElement,
    this.family,
    this.familyElement,
    this.given,
    this.givenElement,
    this.prefix,
    this.prefixElement,
    this.suffix,
    this.suffixElement,
    this.period,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [use] /// Identifies the purpose for this name.
  final FhirCode? use;
  final Element? useElement;

  /// [text] /// Specifies the entire name as it should be displayed e.g. on an application
  /// UI. This may be provided instead of or as well as the specific parts.
  final FhirString? text;
  final Element? textElement;

  /// [family] /// The part of a name that links to the genealogy. In some cultures (e.g.
  /// Eritrea) the family name of a son is the first name of his father.
  final FhirString? family;
  final Element? familyElement;

  /// [given] /// Given name.
  final List<FhirString>? given;
  final List<Element>? givenElement;

  /// [prefix] /// Part of the name that is acquired as a title due to academic, legal,
  /// employment or nobility status, etc. and that appears at the start of the
  /// name.
  final List<FhirString>? prefix;
  final List<Element>? prefixElement;

  /// [suffix] /// Part of the name that is acquired as a title due to academic, legal,
  /// employment or nobility status, etc. and that appears at the end of the
  /// name.
  final List<FhirString>? suffix;
  final List<Element>? suffixElement;

  /// [period] /// Indicates the period of time when this name was valid for the named person.
  final Period? period;
  @override
  HumanName clone() => throw UnimplementedError();
  HumanName copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? use,
    Element? useElement,
    FhirString? text,
    Element? textElement,
    FhirString? family,
    Element? familyElement,
    List<FhirString>? given,
    List<Element>? givenElement,
    List<FhirString>? prefix,
    List<Element>? prefixElement,
    List<FhirString>? suffix,
    List<Element>? suffixElement,
    Period? period,
  }) {
    return HumanName(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      use: use ?? this.use,
      useElement: useElement ?? this.useElement,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      family: family ?? this.family,
      familyElement: familyElement ?? this.familyElement,
      given: given ?? this.given,
      givenElement: givenElement ?? this.givenElement,
      prefix: prefix ?? this.prefix,
      prefixElement: prefixElement ?? this.prefixElement,
      suffix: suffix ?? this.suffix,
      suffixElement: suffixElement ?? this.suffixElement,
      period: period ?? this.period,
    );
  }
}
