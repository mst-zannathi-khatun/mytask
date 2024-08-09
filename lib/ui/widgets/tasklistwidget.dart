import 'package:flutter/material.dart';
import '../style/coustom_colors.dart';
import '../style/coustom_textstyle.dart';

class TaskListWidget extends StatelessWidget {
  const TaskListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Subject Title",
                      style: MyTaskTextStyle.SubjectText,
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Row(
                          children: [
                            Center(
                              child: PopupMenuButton<int>(
                                icon: const Icon(
                                  Icons.more_horiz_rounded,
                                ),
                                itemBuilder: (context) => [
                                  PopupMenuItem(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.edit,
                                            color: Colors.green,
                                          ),
                                        ),
                                        const Text("Edit"),
                                      ],
                                    ),
                                  ),
                                  PopupMenuItem(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.delete,
                                            color: Colors.deepOrangeAccent,
                                          ),
                                        ),
                                        const Text("Deleted"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  "Descriptive text is a text that explains what a person, place, or thing is like, often providing a visual experience through the use of adjectives and adverbs.",
                ),
                const SizedBox(
                  width: 4,
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "9:30 PM",
                      style: MyTaskTextStyle.SubjectText,
                    )),
              ],
            ),
          ),
        ),
        Card(
          color: MyTaskThemeColor.lightBlack2,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                const SizedBox(
                  width: 6,
                ),
                const Icon(
                  Icons.calendar_month,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  "10-8-2024",
                  style: MyTaskTextStyle.smallTextStyle,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "To",
                  style: MyTaskTextStyle.smallTextStyle,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "10-7-2025",
                  style: MyTaskTextStyle.smallTextStyle,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
