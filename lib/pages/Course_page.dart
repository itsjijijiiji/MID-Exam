import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  final List projects = [
    Project(title: 'College of Education', description: 'GRC-College of Education provides training for future professional teachers to be reliable facilitators of learning equipped with specialized skills anchored on moral and global standards.', icon: Icons.school, color: Colors.blue),
    Project(title: 'College of Computer Studies', description: 'The BS Information Technology program includes the study of the utilization of both hardware and software technologies involving planning, installing, customizing, operating, managing and administering; and maintaining information technology infrastructure that provides computing solutions to address the needs of an organization.', icon: Icons.computer, color: Colors.grey),
    Project(title: 'College of Business Administration', description: 'GRC-College of Business Administration prepares and supports its students with functional knowledge, practical skills with suitable values, and work ethics that can compete locally and globally.', icon: Icons.business, color: Colors.yellow),
    Project(title: 'College of Accountancy', description: 'GRC- College of Accountancy will instill in minds and hearts of future certified public accountants that there is reliance in reaching their goals and to make home for them to be nurtured, motivated, encouraged to be competent and God- fearing individuals  ', icon: Icons.money, color: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Global Reciprocal Colleges Courses'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return _buildProjectCard(projects[index]);
        },
      ),
    );
  }

  Widget _buildProjectCard(Project project) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Project icon
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: project.color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(project.icon, size: 30, color: project.color),
              ),
              SizedBox(width: 16),

              // Project details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(project.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
                    SizedBox(height: 4),
                    Text(project.description, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                  ],
                ),
              ),

              // Arrow icon
              Icon(Icons.arrow_forward_ios, color: Colors.grey[400], size: 16),
            ],
          ),
        ),
      ),
    );
  }
}

// Project data model
class Project {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  Project({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}