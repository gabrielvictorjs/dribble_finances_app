import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

abstract class ITransactionCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 23,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(26),
        boxShadow: AppTheme.boxShadow,
      ),
      child: Row(
        children: [
          renderLeading(),
          _buildTransactionInfo(),
        ],
      ),
    );
  }

  Widget _buildTransactionInfo() {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          renderTitle(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(child: renderDescription()),
              const SizedBox(width: 13),
              renderAmount(),
            ],
          ),
        ],
      ),
    );
  }

  Widget renderTitle();
  Widget renderLeading();
  Widget renderDescription();
  Widget renderAmount();
}
