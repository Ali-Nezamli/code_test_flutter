import 'package:code_test_flutter/data/api/entities/photo_api_model.dart';
import 'package:code_test_flutter/res/styles.dart';
import 'package:flutter/material.dart';

class PhotoDetailsInfo extends StatelessWidget {
  final PhotoApiModel photo;

  const PhotoDetailsInfo({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Details',
          style: TextStyles.textBold.copyWith(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 12),
        if (photo.width != null && photo.height != null)
          _buildDetailRow(
            icon: Icons.aspect_ratio,
            label: 'Dimensions',
            value: '${photo.width} × ${photo.height}',
          ),
        if (photo.color != null)
          _buildDetailRow(
            icon: Icons.palette_outlined,
            label: 'Color',
            value: photo.color!.toUpperCase(),
            trailing: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: _hexToColor(photo.color!),
                border: Border.all(color: Colors.white24),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        _buildDetailRow(
          icon: Icons.tag,
          label: 'Photo ID',
          value: photo.id,
        ),
      ],
    );
  }

  Widget _buildDetailRow({
    required IconData icon,
    required String label,
    required String value,
    Widget? trailing,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.white54, size: 18),
          const SizedBox(width: 12),
          Text(
            '$label:',
            style: TextStyles.textNormal.copyWith(
              color: Colors.white54,
              fontSize: 13,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: TextStyles.textNormal.copyWith(
                color: Colors.white,
                fontSize: 13,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (trailing != null) trailing,
        ],
      ),
    );
  }
}

Color _hexToColor(String hex) {
  hex = hex.replaceAll('#', '');
  if (hex.length == 6) {
    hex = 'FF$hex';
  }
  return Color(int.parse(hex, radix: 16));
}
