import 'package:flutter/material.dart';
import 'package:mobile_app/constants/text.dart';
import 'package:mobile_app/models/client.dart';
import 'package:mobile_app/models/record.dart';

class RecordCard extends StatelessWidget {
  final Record record;
  final EdgeInsetsGeometry? padding;
  const RecordCard(
    this.record, {
    this.padding,
    Key? key,
  }) : super(key: key);

  Client get client => record.client;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, 0.0),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              record.title,
              style: AppText.h2,
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${client.firstName} ${client.secondName ?? ''}',
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(record.price.toString()),
                    const Icon(
                      Icons.euro,
                      size: 12,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
