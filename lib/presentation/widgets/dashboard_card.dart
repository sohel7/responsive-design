import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
                color: Colors.pink.shade400, borderRadius: BorderRadius.circular(8)),
            child: const Icon(
              Icons.timelapse,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildSingleSection(
                  'sales',
                  '123456789'
              ),
              _buildSingleSection(
                  'buy',
                  '987654321'
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSingleSection(String title, String number) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
       // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
          ),
          Text(
            number,
            style: const TextStyle(color: Colors.green),
          ),
        ],
      ),
    );
  }
}
