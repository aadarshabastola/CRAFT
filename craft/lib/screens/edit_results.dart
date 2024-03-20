import 'package:flutter/material.dart';

class EditResults extends StatefulWidget {
  const EditResults({super.key});

  @override
  State<EditResults> createState() => _EditResultsState();
}

class _EditResultsState extends State<EditResults> {
  List<String> dropDownMenuItems = [
    'Kana\'a',
    'Black Mesa',
    'Sosi',
    'Dogoszhi',
    'Flagstaff',
    'Tusayan',
    'Kayenta',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 32,
            ),
            const SizedBox(
              width: double.infinity,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'Edit Results',
                  style: TextStyle(
                    fontFamily: 'Uber',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            DropdownMenu(
              width: MediaQuery.of(context).size.width - 32,
              label: const Text('Classification'),
              // initialSelection: dropDownMenuItems.first,
              dropdownMenuEntries: dropDownMenuItems
                  .map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry<String>(value: value, label: value);
              }).toList(),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .secondaryContainer, // select color from current theme scheme
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              child: const Center(child: Text('Map Goes Here')),
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
                child: FilledButton(
                    onPressed: () => {}, child: const Text('Save'))),
            Center(
                child:
                    TextButton(onPressed: () => {}, child: const Text('Back'))),
          ],
        ),
      ),
    );
  }
}
