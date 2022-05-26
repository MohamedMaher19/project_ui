// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class ProductCard extends StatefulWidget {
//
//   final String title;
//   final String primarytActionLabel;
//   final String price;
//   final int rate;
//   final VoidCallback? onSubAction;
//   final VoidCallback? onPrimaryAction;
//   final IconData icon;
//   final List? files;
//   final double closedHeight;
//   final double openedHeight;
//
//    ProductCard(
//       {Key? key,
//       required this.title,
//       required this.primarytActionLabel,
//       required this.price,
//       required this.rate,
//       this.onSubAction,
//       this.onPrimaryAction,
//       this.icon = Icons.favorite_border,
//       this.files,
//       this.closedHeight = 150,
//       this.openedHeight = 300})
//       : super(key: key);
//
//   @override
//   _ProductCardState createState() => _ProductCardState();
// }
//
// class _ProductCardState extends State<ProductCard>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation _animation;
//   bool isOpened = false;
//
//   void initState() {
//     super.initState();
//     _controller =
//         AnimationController(duration: Duration(milliseconds: 375), vsync: this);
//     _animation = Tween(begin: widget.closedHeight, end: widget.openedHeight)
//         .animate(CurvedAnimation(
//             parent: _controller,
//             curve: Curves.easeOut,
//             reverseCurve: Curves.easeOut));
//
//     _controller.addListener(() {
//       setState(() {});
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // color: Colors.grey[200],
//       child: Center(
//         child: InkWell(
//           onTap: () {
//             setState(() {
//               isOpened = !isOpened;
//               if (isOpened) {
//                 _controller.forward();
//               } else {
//                 _controller.reverse();
//               }
//             });
//           },
//           child: Container(
//             height: _animation.value,
//             // width: 150.0,
//             decoration: BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                   color: Theme.of(context).shadowColor.withOpacity(.2),
//                   blurRadius: 10.0,
//                   spreadRadius: 2.0,
//                   offset: Offset(0.0, -5.0),
//                 ),
//               ],
//               color: Theme.of(context).cardColor,
//               borderRadius: BorderRadius.circular(20.0),
//             ),
//
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 8,
//                 ),
//                 widget.files != null
//                     ? Flexible(
//                         child: AnimatedOpacity(
//                           opacity: _animation.value == widget.openedHeight
//                               ? 1.0
//                               : 0.0,
//                           duration: Duration(milliseconds: 200),
//                           child: Container(
//                             child: Row(
//                                 children: List.generate(
//                                     widget.files!.length,
//                                     (index) => Card(
//                                         color: index == 0
//                                             ? Colors.red.shade200
//                                             : index == 1
//                                                 ? Colors.orange.shade200
//                                                 : index == 2
//                                                     ? Colors.green.shade200
//                                                     : Colors.indigo.shade200,
//                                         child: widget.files![index] == null
//                                             ? Container()
//                                             : widget.files![index]
//                                                     .contains('pdf')
//                                                 ? InkWell(
//                                                     onTap: () async {
//                                                       if (!await launch(
//                                                           widget.files![index]))
//                                                         throw 'Could not launch $widget.files![index]';
//                                                     },
//                                                     child: Text(
//                                                       "  pdf  ",
//                                                     ))
//                                                 : widget.files![index]
//                                                         .contains('pptx')
//                                                     ? InkWell(
//                                                         onTap: () async {
//                                                           if (!await launch(
//                                                               widget.files![
//                                                                   index]))
//                                                             throw 'Could not launch $widget.files![index]';
//                                                         },
//                                                         child: Text(
//                                                           "  pptx  ",
//                                                         ))
//                                                     : widget.files![index]
//                                                             .contains('  ppt  ')
//                                                         ? InkWell(
//                                                             onTap: () async {
//                                                               if (!await launch(
//                                                                   widget.files![
//                                                                       index]))
//                                                                 throw 'Could not launch $widget.files![index]';
//                                                             },
//                                                             child: Text(
//                                                               "  ppt  ",
//                                                             ))
//                                                         : InkWell(
//                                                             onTap: () async {
//                                                               if (!await launch(
//                                                                   widget.files![
//                                                                       index]))
//                                                                 throw 'Could not launch $widget.files![index]';
//                                                             },
//                                                             child: Text(
//                                                               " Video ",
//                                                             ))))),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(15.0),
//                               color: Colors.white.withOpacity(.1),
//                             ),
//                           ),
//                         ),
//                       )
//                     : Container(),
//                 Flexible(
//                   flex: 3,
//                   child: AnimatedOpacity(
//                     opacity:
//                         _animation.value == widget.openedHeight ? 1.0 : 0.0,
//                     duration: Duration(milliseconds: 200),
//                     child: Container(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Flexible(
//                             child: Text('bbb'),
//                           ),
//                           Flexible(
//                             child: Container(
//                               padding: EdgeInsets.symmetric(horizontal: 10.0),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Flexible(
//                                         flex: 2,
//                                         child: Text(
//                                           widget.price,
//                                         ),
//                                       ),
//                                       Flexible(
//                                         child: Row(
//                                           children: List.generate(
//                                               widget.rate,
//                                               (index) => starIcon(
//                                                   Colors.yellow.shade700)),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   Flexible(
//                                     child: Container(
//                                       height: 30.0,
//                                       width: 30.0,
//                                       decoration: BoxDecoration(
//                                         color: Colors.transparent,
//                                         borderRadius:
//                                             BorderRadius.circular(12.0),
//                                       ),
//                                       child: Material(
//                                         color: Colors.grey[200],
//                                         shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(12.0),
//                                         ),
//                                         child: InkWell(
//                                           onTap: widget.onSubAction,
//                                           child: Center(
//                                             child: Icon(
//                                               widget.icon,
//                                               size: 15.0,
//                                               color: Theme.of(context)
//                                                   .primaryColor,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Flexible(
//                             child: Container(
//                               margin: EdgeInsets.only(bottom: 0.0),
//                               width: 130.0,
//                               height: 30.0,
//                               decoration: BoxDecoration(
//                                 color: Colors.blue,
//                                 borderRadius: BorderRadius.circular(12.0),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.blue.shade400,
//                                     offset: Offset(0.0, 10.0),
//                                     spreadRadius: -5.0,
//                                     blurRadius: 10.0,
//                                   ),
//                                 ],
//                               ),
//                               child: Material(
//                                 color: Colors.transparent,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(12.0),
//                                 ),
//                                 child: InkWell(
//                                   onTap: widget.onPrimaryAction,
//                                   child: Center(
//                                     child: Text(
//                                       widget.primarytActionLabel,
//                                       style: TextStyle(color: Colors.white),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Icon starIcon(Color color) {
//     return Icon(
//       Icons.star,
//       size: 10.0,
//       color: color,
//     );
//   }
// }
