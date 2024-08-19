import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.only(top: 18, bottom: 18, left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title: const Text(
                  'Test',
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    'Test test test test test test test test ',
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 28,
                  ),
                )),
            const Padding(
              padding: EdgeInsets.only(right: 24, top: 16),
              child: Text(
                'May13 , 1997',
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
