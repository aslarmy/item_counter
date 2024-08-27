library item_counter;

import 'package:flutter/material.dart';

class ItemCounter extends StatefulWidget {
  const ItemCounter({
    super.key,
    this.isVertical = true,
    this.maxLimit = 99,
    this.iconSize = 40,
  });

  final bool isVertical;
  final int maxLimit;
  final double iconSize;

  @override
  State<ItemCounter> createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.grey[100],
      child: widget.isVertical
          ? Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_count < widget.maxLimit) _count++;
                    });
                  },
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.green,
                    size: widget.iconSize,
                  ),
                ),
                Text(
                  '$_count',
                  style: const TextStyle(fontSize: 20),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_count > 0) _count--;
                    });
                  },
                  child: Icon(
                    Icons.do_disturb_on,
                    color: Colors.red,
                    size: widget.iconSize,
                  ),
                ),
              ],
            )
          : Row(
              children: [
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_count > 0) _count--;
                    });
                  },
                  child: Icon(
                    Icons.do_disturb_on,
                    color: Colors.red,
                    size: widget.iconSize,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  '$_count',
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_count < 99) _count++;
                    });
                  },
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.green,
                    size: widget.iconSize,
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
    );
  }
}
