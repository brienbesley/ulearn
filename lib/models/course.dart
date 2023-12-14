class Course {
  String name;
  double completedPercentage;
  String author;
  String thumbnail;

  Course({
    required this.author,
    required this.completedPercentage,
    required this.name,
    required this.thumbnail,
  });
}

List<Course> courses = [
  Course(
    author: "Brien",
    completedPercentage: .75,
    name: "Learn Flutter - Beginner",
    thumbnail: "assets/icons/flutter.jpg",
  ),
  Course(
    author: "Brien",
    completedPercentage: .60,
    name: "Learn React - Beginner",
    thumbnail: "assets/icons/react.jpg",
  ),
  Course(
    author: "Brien",
    completedPercentage: .75,
    name: "Learn Node.js - Beginner",
    thumbnail: "assets/icons/node.png",
  ),
  Course(
    author: "Brien",
    completedPercentage: .75,
    name: "Learn Flutter - Advanced",
    thumbnail: "assets/icons/flutter.jpg",
  ),
  Course(
    author: "Brien",
    completedPercentage: .60,
    name: "Learn React - Advanced",
    thumbnail: "assets/icons/react.jpg",
  ),
  Course(
    author: "Brien",
    completedPercentage: .75,
    name: "Learn Node.js - Advanced",
    thumbnail: "assets/icons/node.png",
  ),
];