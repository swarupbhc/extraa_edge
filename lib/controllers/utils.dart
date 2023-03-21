import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class AppUtils {}

final formatCurrency = NumberFormat.simpleCurrency();
Future<void> oepnUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
