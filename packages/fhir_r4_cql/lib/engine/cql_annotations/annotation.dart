import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class Annotation extends CqlToElmBase {
  // Optional locator information for the annotation
  final Locator? locator;

  // Optional narrative text for the annotation
  final Narrative? s;

  // List of tags associated with the annotation
  final List<Tag> t;

  Annotation({List<Tag>? t, this.s, this.locator}) : t = t ?? [];

  factory Annotation.fromJson(Map<String, dynamic> json) => Annotation(
        t: json['t'] != null
            ? (json['t'] as List).map((i) => Tag.fromJson(i)).toList()
            : <Tag>[],
        s: json['s'] != null ? Narrative.fromJson(json['s']) : null,
        locator:
            json['locator'] != null ? Locator.fromJson(json['locator']) : null,
      );

  @override
  String toString() => 'Annotation{t: $t, s: $s, locator: $locator}';

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'type': type};
    if (t.isNotEmpty) {
      data['t'] = t.map((v) => v.toJson()).toList();
    }
    if (s != null) {
      data['s'] = s!.toJson();
    }
    if (locator != null) {
      data['locator'] = locator!.toJson();
    }
    return data;
  }

  String get type => 'Annotation';

  void addTag(Tag tag) {
    t.add(tag);
  }
}
