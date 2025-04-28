/// Represents a model specifier.
///
/// The [ModelSpecifier] type specifies a model with attributes for name and version.
class ModelSpecifier {
  /// Name of the model.
  String name;

  Uri? url;

  /// Version of the model.
  String? version;

  ModelSpecifier({
    required this.name,
    this.version,
    this.url,
  });

  factory ModelSpecifier.fromJson(Map<String, dynamic> json) {
    return ModelSpecifier(
      name: json['name'] as String,
      version: json['version'] as String?,
      url: json['url'] != null ? Uri.parse(json['url']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    if (version != null) {
      data['version'] = version;
    }
    if (url != null) {
      data['url'] = url.toString();
    }
    return data;
  }
}
