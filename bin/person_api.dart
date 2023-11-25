import 'models/model.dart';
import 'network/service.dart';

Future<void> main(List<String> arguments) async {
  print('Hello world: This is the first task of the hometask!');

  String response = await NetworkServices.getData(NetworkServices.apiUrl);
  // print(dataFromJson(response)[0].address.zipCode);
  dataFromJson(response).forEach((e) {
    print(" - ${e.address.zipCode}");
  });

}


