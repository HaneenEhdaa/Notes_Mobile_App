import 'package:flutter/material.dart';

class NoteBox extends StatelessWidget {
  const NoteBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 181, 206),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
                child: Text("Flutter Note",
                    style: TextStyle(color: Colors.black, fontSize: 20)),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 12),
                child: Text("My new note take care !",
                    style: TextStyle(
                      color: const Color.fromARGB(130, 0, 0, 0),
                    )),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0, right: 36),
              child: Text("May12, 2025",
                  style: TextStyle(
                    color: Colors.black,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
