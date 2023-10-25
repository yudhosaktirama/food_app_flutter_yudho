import 'package:flutter/material.dart';

class NewsTitlePopularPageWidget extends StatelessWidget {
  const NewsTitlePopularPageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width ,
        height: MediaQuery.of(context).size.height * 0.12,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("Food Market",style: TextStyle(
                          color: Colors.black,
                          fontSize: 24
                        ),),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("Lets Get Some Food",style: TextStyle(
                          fontSize: 16
                        ),),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: NetworkImage('https://64.media.tumblr.com/e2737d236a230a70d7c2cd362f6e77c3/5828cd1ac5de3062-6c/s1280x1920/265217f966d50afe66cab43459366d51809748b8.jpg'))
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}