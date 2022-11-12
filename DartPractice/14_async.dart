void main(List<String> args) async {

  DataService service = DataService();
  String data = await service.getData();

  print(data);
}

class DataService {

  Future<String> _getDataFromCloud() async {
    //few time => return data

    await Future.delayed(Duration(seconds: 3));
    print("get Data Done");
    return "SomeData";
  }

  Future<String> _parseData({required String parseData}) async {
    await Future.delayed(Duration(seconds: 2));
    print("parse Done");
    return "Parsed Data";
  } 

  Future<String> getData() async {

    // get data -> Take time
    // few time, after return data

    final String dataFromCloud = await _getDataFromCloud();
    final String parseData = await _parseData(parseData: dataFromCloud);

    //! 다른 방법
    // final String parseData = await _getDataFromCloud().then((value) async {
    //   return await _parseData(parseData: value);
    // });

    return parseData;
  }
}