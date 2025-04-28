/// Represents the Narrative type with mixed content
class Narrative {
  /// r attribute
  String? r;

  /// Nested Narrative elements
  List<Narrative>? s;

  Narrative({this.r, this.s});

  factory Narrative.fromJson(Map<String, dynamic> json) {
    return Narrative(
      r: json['r'],
      s: json['s'] != null
          ? (json['s'] as List).map((i) => Narrative.fromJson(i)).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (s != null) {
      data['s'] = s!.map((v) => v.toJson()).toList();
    }
    if (r != null) {
      data['r'] = r;
    }
    return data;
  }
}
