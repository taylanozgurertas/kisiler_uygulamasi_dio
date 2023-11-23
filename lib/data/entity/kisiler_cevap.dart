
import 'package:kisiler_uygulamasi_dio/data/entity/kisiler.dart';

class KisilerCevap {
  List<Kisiler> kisiler;
  int success;

  KisilerCevap({required this.kisiler,required this.success});

  factory KisilerCevap.fromJson(Map<String,dynamic> json){
    int success = json["success"] as int;
    var jsonArray = json["kisiler"] as List;
    List<Kisiler> kisiler = jsonArray.map((jsonArrayNesnesi) => Kisiler.fromJson(jsonArrayNesnesi)).toList();

    return KisilerCevap(kisiler: kisiler, success: success);
  }
}

