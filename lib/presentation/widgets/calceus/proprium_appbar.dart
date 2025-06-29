
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PropriumAppbar extends StatelessWidget {

  final String textus;

  const PropriumAppbar({
    super.key,
    required this.textus
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          margin: const EdgeInsets.only(top: 15),
          width: double.infinity,
          child: Row(
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.pop();
                },
                elevation: 0,
                highlightElevation: 0,
                backgroundColor: Colors.transparent,
                child: const Icon(Icons.chevron_left, size: 48,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  textus,
                  style: TextStyle(fontFamily: "CuppertinoSystemDisplay", fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
              const Spacer(),
              const Icon(Icons.search, size: 30,)
            ],
          ),
        ),
      ),
    );
  }
}