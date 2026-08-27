class BaseReponse<T> {
  final int code;
  final String message;
  final T? data;

  BaseReponse({required this.code, required this.message, this.data});

  bool get isSuccess => code == 0;

  factory BaseReponse.fromJson(Map<String, dynamic> json) {
    return BaseReponse(code: json['code'] ?? 0, message: json['message'] ?? '', data: json['data']);
  }
}
