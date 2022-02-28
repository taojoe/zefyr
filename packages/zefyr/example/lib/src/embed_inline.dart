import 'package:flutter/material.dart';
import 'package:zefyr/zefyr.dart';

Widget embed_inline_builder(BuildContext context, EmbedNode node){
  if(node.value.inline){
    return Container(color: Colors.green, width: 200, height: 100,);
  }
  return defaultZefyrEmbedBuilder(context, node);
}

class InsertEmbedLineButton extends StatelessWidget {
  const InsertEmbedLineButton({Key? key, required this.controller, required this.icon}) : super(key: key);

  final ZefyrController controller;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ZIconButton(
      highlightElevation: 0,
      hoverElevation: 0,
      size: 32,
      icon: Icon(
        icon,
        size: 18,
        color: Theme.of(context).iconTheme.color,
      ),
      fillColor: Theme.of(context).canvasColor,
      onPressed: () {
        final index = controller.selection.baseOffset;
        final length = controller.selection.extentOffset - index;
        // Move the cursor to the beginning of the line right after the embed.
        // 2 = 1 for the embed itself and 1 for the newline after it
        final newSelection = controller.selection.copyWith(
          baseOffset: index + 2,
          extentOffset: index + 2,
        );
        controller.replaceText(index, length, SpanEmbed('test'),
            selection: newSelection);
      },
    );
  }
}