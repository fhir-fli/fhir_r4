import 'package:fhir_r4_cds_hooks/src/models/cds_coding.dart';

/// The source of a CDS Hooks card.
class CdsSource {
  /// Creates a [CdsSource].
  CdsSource({required this.label, this.url, this.icon, this.topic});

  /// Creates a [CdsSource] from a JSON map.
  factory CdsSource.fromJson(Map<String, dynamic> json) {
    return CdsSource(
      label: json['label'] as String,
      url: json['url'] as String?,
      icon: json['icon'] as String?,
      topic: json['topic'] != null
          ? CdsCoding.fromJson(json['topic'] as Map<String, dynamic>)
          : null,
    );
  }

  /// A short human-readable label for the source.
  final String label;

  /// An optional absolute URL for the source.
  final String? url;

  /// An optional absolute URL for an icon for the source.
  final String? icon;

  /// An optional topic [CdsCoding] describing the context of the source.
  final CdsCoding? topic;

  /// Serializes to a JSON map.
  Map<String, dynamic> toJson() => <String, dynamic>{
        'label': label,
        if (url != null) 'url': url,
        if (icon != null) 'icon': icon,
        if (topic != null) 'topic': topic!.toJson(),
      };

  /// Returns a copy with the given fields replaced.
  CdsSource copyWith({
    String? label,
    String? url,
    String? icon,
    CdsCoding? topic,
  }) {
    return CdsSource(
      label: label ?? this.label,
      url: url ?? this.url,
      icon: icon ?? this.icon,
      topic: topic ?? this.topic,
    );
  }
}
