import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FeedbackApp());
}

class FeedbackApp extends StatelessWidget {
  const FeedbackApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feedback App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Feedback App'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  double _rating = 0.0;
  final TextEditingController _commentController = TextEditingController();

  void _rateApp(double rating) {
    setState(() {
      _rating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            Row(
              children: <Widget>[
                const Text('Rate the app: '),
                RatingBar(
                  initialRating: _rating,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  ratingWidget: RatingWidget(
                    full: const Icon(Icons.star),
                    half: const Icon(Icons.star_half),
                    empty: const Icon(Icons.star_border),
                  ),
                  itemPadding:const  EdgeInsets.symmetric(horizontal: 4.0),
                  onRatingUpdate: (value) {
                    _rateApp(value);
                  },
                ),
              ],
            ),
            TextField(
              controller: _commentController,
              decoration: const InputDecoration(
                labelText: 'Comment',
              ),
            ),
           const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                // Handle registration logic here
                // You can access entered data using _emailController.text, _passwordController.text, _rating, and _commentController.text
                // Add your logic to save the feedback and ratings
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
