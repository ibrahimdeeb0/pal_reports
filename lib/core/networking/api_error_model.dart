class ApiErrorModel {
  final String? message;
  final int? code;
  final Map<String, List<String>>? errors;

  /// Constructor to initialize ApiErrorModel
  ApiErrorModel({
    this.message,
    this.code,
    this.errors,
  });

  /// Factory method to create an instance from a JSON map
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    return ApiErrorModel(
      message: json['message'] as String?,
      code: json['code'] as int?,
      errors: json['data'] != null
          ? (json['data'] as Map<String, dynamic>).map(
              (key, value) => MapEntry(
                key,
                List<String>.from(value as List),
              ),
            )
          : null,
    );
  }

  /// Method to convert the instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'code': code,
      'data': errors?.map(
        (key, value) => MapEntry(key, value),
      ),
    };
  }

  /// Method to get all error messages as a single string
  String getAllErrorMessages() {
    if (errors == null || errors!.isEmpty) {
      return message ?? "Unknown Error occurred";
    }

    return errors!.entries.map((entry) {
      final field = entry.key;
      final messages = entry.value.join(", ");
      return "$field: $messages";
    }).join("\n");
  }
}
