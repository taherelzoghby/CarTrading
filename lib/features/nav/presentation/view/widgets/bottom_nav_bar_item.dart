import 'package:cars/core/consts/style.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    super.key,
    required this.label,
    required this.icon,
    required this.color,
    required this.onTap,
  });
  final String label;
  final IconData icon;
  final Color color;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      splashColor: AppConsts.primary300,
      child: Column(
        children: [
          Icon(icon, color: color),
          Text(
            label,
            style: AppConsts.style14.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}
