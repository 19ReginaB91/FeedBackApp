import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
 runApp(FeedbackApp());
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
 
 final FirebaseDatabase _database = FirebaseDatabase.instance;

 void _rateApp(double rating) {
    setState(() {
      _rating = rating;
    });
 }
 
 void saveRateAndCommentToFirebase() {
 DatabaseReference _ratingRef = _database.reference().child('rating');
 _ratingRef.set({
    'rating': _rating,
    'comment': _commentController.text,
 });
}

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            RatingBar(
              initialRating: _rating,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 35,
              ratingWidget: RatingWidget(
                    full: const Icon(Icons.star, color: Colors.amber, size: 25),
                    half: const Icon(Icons.star_half, color: Colors.amber, size: 25),
                    empty: const Icon(Icons.star_border, color: Colors.amber, size: 25),
               ),
              itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
              onRatingUpdate: (value) {
                _rateApp(value);
              },
            ),
            const SizedBox(
              height: 20.0,
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
                saveRateAndCommentToFirebase();
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
 }
}