import 'package:code_test_flutter/data/api/entities/photo_api_model.dart';
import 'package:code_test_flutter/res/styles.dart';
import 'package:flutter/material.dart';

class PhotoMetrics extends StatelessWidget {
  final PhotoApiModel photo;
  const PhotoMetrics({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildMetricItem(
            icon: Icons.favorite_border,
            value: photo.likes?.toString() ?? '0',
            label: 'Likes',
          ),
          _buildDivider(),
          _buildMetricItem(
            icon: Icons.visibility_outlined,
            value: _formatNumber(photo.views ?? 0),
            label: 'Views',
          ),
          _buildDivider(),
          _buildMetricItem(
            icon: Icons.download_outlined,
            value: _formatNumber(photo.downloads ?? 0),
            label: 'Downloads',
          ),
        ],
      ),
    );
  }

  Widget _buildMetricItem({
    required IconData icon,
    required String value,
    required String label,
  }) {
    return Column(
      children: [
        Icon(icon, color: Colors.white70, size: 20),
        const SizedBox(height: 6),
        Text(
          value,
          style: TextStyles.textBold.copyWith(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        Text(
          label,
          style: TextStyles.textNormal.copyWith(
            color: Colors.white54,
            fontSize: 11,
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      width: 1,
      height: 40,
      color: Colors.white.withOpacity(0.1),
    );
  }

  String _formatNumber(int number) {
    if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}K';
    }
    return number.toString();
  }
}
