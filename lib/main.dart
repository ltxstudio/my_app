import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(DeveloperPortfolio());
}

class DeveloperPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Developer Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
          headline6: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic, color: Colors.white70),
          bodyText2: TextStyle(fontSize: 16.0, fontFamily: 'Hind', color: Colors.white60),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/profile.jpg'), // Your profile image
                ).animate().fadeIn(duration: 1000.ms).scale(), // Adding fade-in and scale animation
              ),
              SizedBox(height: 20),
              Center(
                child: Text('John Doe', style: Theme.of(context).textTheme.headline1)
                  .animate().fadeIn(duration: 1200.ms).move(begin: Offset(-50, 0), curve: Curves.easeInOut), // Adding text animation
              ),
              SizedBox(height: 10),
              Center(
                child: Text('Full Stack Developer & Web Designer', style: Theme.of(context).textTheme.headline6)
                  .animate().fadeIn(duration: 1400.ms).move(begin: Offset(50, 0), curve: Curves.easeInOut), // Adding text animation
              ),
              SizedBox(height: 30),
              Text('About Me', style: Theme.of(context).textTheme.headline1)
                .animate().fadeIn(duration: 1600.ms).move(begin: Offset(0, -50), curve: Curves.easeInOut), // Adding text animation
              SizedBox(height: 10),
              Text(
                'Passionate developer with experience in Flutter, Dart, and backend technologies. '
                'I love building beautiful and functional applications.',
                style: Theme.of(context).textTheme.bodyText2,
              ).animate().fadeIn(duration: 1800.ms).move(begin: Offset(0, 50), curve: Curves.easeInOut), // Adding text animation
              SizedBox(height: 30),
              Text('Skills', style: Theme.of(context).textTheme.headline1)
                .animate().fadeIn(duration: 2000.ms).move(begin: Offset(-50, 0), curve: Curves.easeInOut), // Adding text animation
              SizedBox(height: 10),
              SkillCard(skill: 'Flutter', level: 'Advanced').animate().fadeIn(duration: 2200.ms).move(begin: Offset(50, 0), curve: Curves.easeInOut),
              SkillCard(skill: 'Dart', level: 'Advanced').animate().fadeIn(duration: 2400.ms).move(begin: Offset(-50, 0), curve: Curves.easeInOut),
              SkillCard(skill: 'Web Design', level: 'Expert').animate().fadeIn(duration: 2600.ms).move(begin: Offset(50, 0), curve: Curves.easeInOut),
              SkillCard(skill: 'JavaScript', level: 'Intermediate').animate().fadeIn(duration: 2800.ms).move(begin: Offset(-50, 0), curve: Curves.easeInOut),
              SkillCard(skill: 'UI/UX Design', level: 'Expert').animate().fadeIn(duration: 3000.ms).move(begin: Offset(50, 0), curve: Curves.easeInOut),
              SizedBox(height: 30),
              Text('Projects', style: Theme.of(context).textTheme.headline1)
                .animate().fadeIn(duration: 3200.ms).move(begin: Offset(-50, 0), curve: Curves.easeInOut), // Adding text animation
              SizedBox(height: 10),
              ProjectCard(
                title: 'Portfolio Website',
                description: 'A personal portfolio website built with Flutter showcasing my projects and skills.',
                link: 'https://github.com/johndoe/portfolio-website'
              ).animate().fadeIn(duration: 3400.ms).move(begin: Offset(50, 0), curve: Curves.easeInOut), // Adding card animation
              ProjectCard(
                title: 'E-commerce App',
                description: 'An e-commerce application with seamless UI and integrated payment system.',
                link: 'https://github.com/johndoe/e-commerce-app'
              ).animate().fadeIn(duration: 3600.ms).move(begin: Offset(-50, 0), curve: Curves.easeInOut), // Adding card animation
              ProjectCard(
                title: 'Chat Application',
                description: 'A real-time chat application with Firebase backend for messaging.',
                link: 'https://github.com/johndoe/chat-application'
              ).animate().fadeIn(duration: 3800.ms).move(begin: Offset(50, 0), curve: Curves.easeInOut), // Adding card animation
              SizedBox(height: 30),
              Text('Contact', style: Theme.of(context).textTheme.headline1)
                .animate().fadeIn(duration: 4000.ms).move(begin: Offset(0, 50), curve: Curves.easeInOut), // Adding text animation
              SizedBox(height: 10),
              Text('Email: john.doe@example.com', style: Theme.of(context).textTheme.bodyText2)
                .animate().fadeIn(duration: 4200.ms).move(begin: Offset(0, -50), curve: Curves.easeInOut), // Adding text animation
              Text('LinkedIn: linkedin.com/in/johndoe', style: Theme.of(context).textTheme.bodyText2)
                .animate().fadeIn(duration: 4400.ms).move(begin: Offset(0, -50), curve: Curves.easeInOut), // Adding text animation
              Text('GitHub: github.com/johndoe', style: Theme.of(context).textTheme.bodyText2)
                .animate().fadeIn(duration: 4600.ms).move(begin: Offset(0, -50), curve: Curves.easeInOut), // Adding text animation
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String link;

  ProjectCard({required this.title, required this.description, required this.link});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[800],
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 5),
            Text(description, style: Theme.of(context).textTheme.bodyText2),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                // Handle link tap
              },
              child: Text(link, style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final String skill;
  final String level;

  SkillCard({required this.skill, required this.level});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[800],
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(skill, style: Theme.of(context).textTheme.headline6),
            Text(level, style: Theme.of(context).textTheme.bodyText2),
          ],
        ),
      ),
    );
  }
}
