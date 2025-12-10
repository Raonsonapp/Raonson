import 'api_service.dart';

class ChatGPTAPI {
  static Future<String> sendMessage(String text) async {
    final res = await ApiService.post(
      "https://api.openai.com/v1/chat/completions",
      {
        "model": "gpt-4o-mini",
        "messages": [
          {"role": "user", "content": text}
        ]
      },
    );

    return res["choices"][0]["message"]["content"];
  }
}