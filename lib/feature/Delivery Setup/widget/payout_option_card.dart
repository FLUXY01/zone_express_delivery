import 'package:flutter/material.dart';

class PayoutOptionCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final List<String> options;
  final ValueChanged<String> onSelected;
  final String selectedOption;

  const PayoutOptionCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.options,
    required this.onSelected,
    required this.selectedOption,
  });

  @override
  State<PayoutOptionCard> createState() => _PayoutOptionCardState();
}

class _PayoutOptionCardState extends State<PayoutOptionCard> {
  @override
  Widget build(BuildContext context) {
    final bool isAnySelected = widget.options.contains(widget.selectedOption);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: isAnySelected ? Colors.yellow[600]! : Colors.grey.shade300,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          if (isAnySelected)
            BoxShadow(
              color: Colors.yellow[600]!.withOpacity(0.1),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ---- Header ----
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  widget.subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          // ---- Divider ----
          const Divider(height: 1, color: Color(0xFFE0E0E0)),

          // ---- Options ----
          Column(
            children: widget.options.map((option) {
              final bool isSelected = widget.selectedOption == option;
              return InkWell(
                onTap: () => widget.onSelected(option),
                child: Container(
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.yellow[100] : Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: option == widget.options.last
                          ? const Radius.circular(12)
                          : Radius.zero,
                      bottomRight: option == widget.options.last
                          ? const Radius.circular(12)
                          : Radius.zero,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio<String>(
                            value: option,
                            groupValue: widget.selectedOption,
                            activeColor: Colors.yellow[600],
                            onChanged: (value) =>
                                widget.onSelected(value ?? ''),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            option,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.grey[700],
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
