import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class Domain {
  Future<String?> fetchServerIP() async {
    final response = await http.get(Uri.parse('https://vodasoft.ru/ipkp/vodasoft.ip'));
    if (response.statusCode == 200) {
      //Provider.of<AppState>(context, listen: false).setUrl(response.body.toString());
      return response.body.toString();
    } else {
      throw Exception('Failed to fetch data from server');
    }
  }
}