import 'package:code_test_flutter/data/api/entities/photo_api_model.dart';
import 'package:code_test_flutter/data/api/entities/photo_urls_api_model.dart';

final _id = "1234";
final _description = "A photo";
final _urls = PhotoUrlsApiModel("full", "thumb");
final photoApiModel =
    PhotoApiModel(id: _id, description: _description, urls: _urls);
