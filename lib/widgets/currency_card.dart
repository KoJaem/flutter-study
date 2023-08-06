import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final Offset offset;
  final bool isInverted;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    this.offset = const Offset(0, 0),
    this.isInverted = false,
  });

  // = Inverted ? Colors.white : Colors.black;

  @override
  Widget build(BuildContext context) {
    final Color bgColor = isInverted ? Colors.white : const Color(0xFF1F2123);
    final Color textColor = isInverted ? const Color(0xFF1F2123) : Colors.white;

    return Transform.translate(
      offset: offset,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(code,
                          style: TextStyle(
                            color: textColor.withOpacity(0.8),
                            fontSize: 20,
                          )),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(-5, 12),
                  child: Icon(
                    icon,
                    color: textColor,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/////////////// isInverted 가 아닌, 컬러값 받아서 하는 컴포넌트

// import 'package:flutter/material.dart';

// class CurrencyCard extends StatelessWidget {
//   final String name, code, amount;
//   final Color textColor, bgColor, iconColor;
//   final IconData icon;

//   const CurrencyCard({
//     super.key,
//     required this.name,
//     required this.code,
//     required this.amount,
//     required this.bgColor,
//     required this.icon,
//     required this.iconColor,
//     required this.textColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       clipBehavior: Clip.hardEdge,
//       decoration: BoxDecoration(
//         color: bgColor,
//         borderRadius: BorderRadius.circular(25),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(30),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   name,
//                   style: TextStyle(
//                     color: textColor,
//                     fontSize: 32,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       amount,
//                       style: TextStyle(
//                         color: textColor,
//                         fontSize: 20,
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 5,
//                     ),
//                     Text(code,
//                         style: TextStyle(
//                           color: textColor.withOpacity(0.8),
//                           fontSize: 20,
//                         )),
//                   ],
//                 ),
//               ],
//             ),
//             Transform.scale(
//               scale: 2.2,
//               child: Transform.translate(
//                 offset: const Offset(-5, 12),
//                 child: Icon(
//                   icon,
//                   color: iconColor,
//                   size: 88,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
