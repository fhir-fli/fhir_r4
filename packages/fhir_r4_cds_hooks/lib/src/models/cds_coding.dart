/// A coded value used in CDS Hooks.
class CdsCoding {
  /// Creates a [CdsCoding].
  CdsCoding({required this.code, required this.system, this.display});

  /// Creates a [CdsCoding] from a JSON map.
  factory CdsCoding.fromJson(Map<String, dynamic> json) {
    return CdsCoding(
      code: json['code'] as String,
      system: json['system'] as String,
      display: json['display'] as String?,
    );
  }

  /// The code value.
  final String code;

  /// The code system URI.
  final String system;

  /// Human-readable display text.
  final String? display;

  /// Serializes to a JSON map.
  Map<String, dynamic> toJson() => <String, dynamic>{
        'code': code,
        'system': system,
        if (display != null) 'display': display,
      };

  /// Returns a copy with the given fields replaced.
  CdsCoding copyWith({String? code, String? system, String? display}) {
    return CdsCoding(
      code: code ?? this.code,
      system: system ?? this.system,
      display: display ?? this.display,
    );
  }
}
