import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  final List projects = [
    Project(title: 'Mission', description: 'The GRC library is committed to provide academic library resources and services through bibliographic support. The GRC Library create supportive and productive teaching-learning environments that foster lifelong learning.', icon: Icons.school, color: Colors.blue),
    Project(title: 'Vision', description: 'The College Library exists to provide access to information and to preserve knowledge and culture.  Since learning can be obtained from traditional sources and modern technology, it is our aim that the college library shall be able to perform its role effectively to be able to cope up with the demands of the new community of users as well as meet the challenges posed by digital technology and other available computer and information systems.', icon: Icons.school, color: Colors.grey),
    Project(title: 'Objectives', description: 'The College Library recognizes its role as a vital source of information and research in the academe.  The organization of all materials and resources, the facilities provided and selection, training, and management of the staff, are all geared toward the fulfillment of the library in the college.', icon: Icons.school, color: Colors.yellow),
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