import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Contributor] /// A contributor to the content of a knowledge asset, including authors,
/// editors, reviewers, and endorsers.
class Contributor extends DataType {
  Contributor({
    super.id,
    super.extension_,
    required this.type,
    this.typeElement,
    required this.name,
    this.nameElement,
    this.contact,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of contributor.
  final FhirCode type;
  final Element? typeElement;

  /// [name] /// The name of the individual or organization responsible for the
  /// contribution.
  final FhirString name;
  final Element? nameElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// contributor.
  final List<ContactDetail>? contact;
  @override
  Contributor clone() => throw UnimplementedError();
  Contributor copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? type,
    Element? typeElement,
    FhirString? name,
    Element? nameElement,
    List<ContactDetail>? contact,
  }) {
    return Contributor(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      contact: contact ?? this.contact,
    );
  }
}
