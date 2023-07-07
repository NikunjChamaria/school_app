import 'package:leaderboard/model/competionmodel.dart';
import 'package:leaderboard/model/housemodel.dart';
import 'package:leaderboard/model/inspirationmodel.dart';
import 'package:leaderboard/model/usermodel.dart';

dynamic user = {
  "name": "Nikunj Chamaria",
  "aadhar": "7452 6598 4752 1203", //not real aadhar number
  "phone": "+91 8100423011",
  "school": "Mangalam Vidya Niketan",
  "house": "Blue",
  "contribution": 190
};
UserModel curruser = UserModel.fromJson(user);

List<dynamic> pagedata = [
  {
    "name": "Ariya Pratap",
    "age": 9,
    "imagepath": "assets/child.webp",
    "profilepath": "assets/profile1.jpg",
    "description":
        "Witness the Unforgettable: Behold the mesmerizing dance moves that stole the spotlight in our recent Dance rehearsal that happend in the",
    "house": "Pegasus",
    "school": "Mountain High",
    "upvotes": 23
  },
  {
    "name": "Bhawna Mathur",
    "age": 10,
    "imagepath": "assets/child1.jpg",
    "profilepath": "assets/profile2.jpg",
    "description":
        "Quality programs for school-age children come in all types. Regardless of their variations, one element is critical: providing a safe place for children to play, develop social skills and learn.Quality programs for school-age children come in all types. Regardless of their variations, one element is critical: providing a safe place for children to play, develop social skills and learn. When people walk through the door of a school-age environment, they form an impression of the program within moments. What message does your environment send?",
    "house": "Tagore",
    "school": "St. James",
    "upvotes": 18
  },
  {
    "name": "Rachit Singh",
    "age": 8,
    "imagepath": "assets/child2.jpg",
    "profilepath": "assets/profile3.jpg",
    "description":
        "Without learning how to be orderly, kids could grow up into adults who always show up late and have messy offices and disorganized thoughts. I have been fortunate to have a daughter who likes to see things done in a specific order. So we started using a “daily checklist” with her. It helped reinforce a habit of orderliness.",
    "house": "Shahespeare",
    "school": "MVN",
    "upvotes": 50
  },
];
List<InspirationModel> inspirationList =
    List.from(pagedata.map((e) => InspirationModel.fromJson(e)));

List<dynamic> competitiondata = [
  {
    "name": "Poetry Out Loud",
    "imagepath": "assets/child.webp",
    "start": "June 23",
    "end": "June 24"
  },
  {
    "name": "Breakfree dance",
    "imagepath": "assets/child1.jpg",
    "start": "June 25",
    "end": "June 26"
  },
  {
    "name": "Paint it out",
    "imagepath": "assets/child2.jpg",
    "start": "July 3",
    "end": "July 5"
  }
];

List<CompetionModel> competionlist =
    List.from(competitiondata.map((e) => CompetionModel.fromJson(e)));

List<dynamic> housedata = [
  {
    "house": "Red",
    "points": 1000,
  },
  {
    "house": "Blue",
    "points": 1900,
  },
  {
    "house": "Yellow",
    "points": 1500,
  },
  {
    "house": "Green",
    "points": 1100,
  }
];

List<HouseModel> houselist =
    List.from(housedata.map((e) => HouseModel.fromJson(e)));
