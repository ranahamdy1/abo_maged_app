import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_routes.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _allItems = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Grapes',
    'Mango',
    'Orange',
    'Pineapple',
  ];
  List<String> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filteredItems = _allItems;
  }

  void _filterItems(String query) {
    setState(() {
      _filteredItems = _allItems.where((item) => item.toLowerCase().contains(query.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        leading: const Center(child: TextWidget.bigText("      بحث")),
        actions: [
          GestureDetector(
            onTap: (){
              AppRoutes.pop(context);
            },
              child: const Icon(Icons.clear,color: AppColors.whiteColor,size: 24,)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              onChanged: _filterItems,
              decoration: InputDecoration(
                labelText: 'ماالذي تبحث عنه؟',
                labelStyle: const TextStyle(color: AppColors.whiteColor),
                fillColor: AppColors.secondColor,
                filled: true, // Enable fill
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: AppColors.secondColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: AppColors.yellowColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: AppColors.secondColor),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColors.whiteColor,
                  size: 22,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: TextWidget(_filteredItems[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
