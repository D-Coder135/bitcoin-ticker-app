import 'package:bitcoin_ticker/networking.dart';
import 'package:bitcoin_ticker/price_screen.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];
/**/
const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const apiKey = 'DD905C0D-2292-40E0-861A-2C44613076C6';

const coinApiURL = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {
  Future<dynamic> getCurrencyData(var selectedCurrency) async {
    NetworkHelper networkHelper = NetworkHelper(
        '$coinApiURL/${cryptoList[0]}/$selectedCurrency?apiKey=$apiKey');

    var coinData = await networkHelper.getData();
    return coinData;
  }
}
