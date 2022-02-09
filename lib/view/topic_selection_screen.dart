import 'package:flutter/material.dart';
import 'package:uihut_practice/shared_widget/custom_button.dart';
import 'package:uihut_practice/view/start_page.dart';

class TopicSelection extends StatefulWidget {
  const TopicSelection({Key? key}) : super(key: key);

  @override
  _TopicSelectionState createState() => _TopicSelectionState();
}

class _TopicSelectionState extends State<TopicSelection> {
  List topics = [
    "UI Design",
    "UX Design",
    "Blog Design",
    "Visual Design",
    "Motion",
    "Graphic",
    "Typography",
    "3d",
    "Icon",
    "News",
    "Business",
    "Sports",
    "Fashion",
    "Technology",
    "Health",
    "Shopping",
    "Music",
    "Video",
    "Recipe",
    "Fun",
    "Entertainment",
    "Creative",
  ];
  List<int> _categorySelected = List.generate(1000, (index) => index);
  // List<int> _categorySelected =<int>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/Ellipse.png",
              height: 40,
              width: 40,
            ),
            Text(
              "Log in",
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  color: Color(0xffA76FFF),
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 40),
              Text(
                "Pick Topic to Start Reading.....",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0xff000000),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 32),
              Wrap(
                spacing: 12.0,
                runSpacing: 20.0,
                children: List<Widget>.generate(topics.length, (int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_categorySelected.contains(index))
                          _categorySelected.removeWhere((val) => val == index);
                        else
                          _categorySelected.add(index);
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 10.0),
                      decoration: BoxDecoration(
                          color: (_categorySelected.contains(index))
                              ? Color(0xffD6E5EA)
                              : Color(0xffF4E300),
                          borderRadius: BorderRadius.circular(40.0)),
                      child: Text(
                        topics[index],
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Color(0xff17131B),
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 40),
              Center(
                  child: CustomButton(
                title: "Continue",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => StartPage(
                          ),
                        ),
                      );
                    },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
