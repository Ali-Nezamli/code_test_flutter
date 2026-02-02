import 'package:code_test_flutter/data/api/entities/photo_api_model.dart';
import 'package:code_test_flutter/ui/details/widgets/photo_details_header.dart';
import 'package:code_test_flutter/ui/details/widgets/photo_details_info.dart';
import 'package:code_test_flutter/ui/details/widgets/photo_metrics.dart';
import 'package:flutter/material.dart';

class PhotoDetailScreen extends StatelessWidget {
  final PhotoApiModel photo;

  const PhotoDetailScreen({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Photo Details"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PhotoDetailsHeader(photo: photo),
                PhotoMetrics(photo: photo),
                const SizedBox(height: 24),
                PhotoDetailsInfo(photo: photo),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
