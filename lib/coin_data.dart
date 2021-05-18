import 'package:bitcoin_ticker/networking.dart';

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

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const apiKey = '08B3E308-7EDD-4545-BCE1-7F5BD1EC8165';

const coinApiURL = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {
  Future<dynamic> getCurrencyData() async {
    NetworkHelper networkHelper =
        NetworkHelper('$coinApiURL/${cryptoList[0]}/INR?apiKey=$apiKey');

    var coinData = networkHelper.getData();
  }
}
