import 'package:flutter/material.dart';
import '../models/learning_models.dart';

class BoomiData {
  static const List<LearningModule> modules = [
    LearningModule(
      id: 'basics',
      title: '1. Boomi Fundamentals',
      description: 'Understand the core architecture and terminology.',
      icon: Icons.foundation,
      lessons: [
        Lesson(
          title: 'What is Boomi?',
          content: 'Dell Boomi is an iPaaS (Integration Platform as a Service) that allows you to connect applications and data. It uses a visual interface to build integrations called "Processes".',
          keyPoints: [
            'Cloud-native integration platform',
            'Low-code/No-code development',
            'Centralized management via AtomSphere'
          ],
        ),
        Lesson(
          title: 'Core Architecture',
          content: 'Boomi consists of the AtomSphere (cloud platform for building/managing) and the Runtime (where processes execute).',
          keyPoints: [
            'Atom: Single-tenant, single-node runtime engine.',
            'Molecule: Multi-node, clustered runtime for high availability.',
            'Atom Cloud: Multi-tenant runtime hosted by Boomi.'
          ],
        ),
      ],
    ),
    LearningModule(
      id: 'build',
      title: '2. The Build Tab',
      description: 'Mastering the development environment.',
      icon: Icons.build,
      lessons: [
        Lesson(
          title: 'Shapes & Canvas',
          content: 'The canvas is where you drag and drop "Shapes" to define logic. Shapes are connected by lines to form a process flow.',
          keyPoints: [
            'Start Shape: The entry point of every process.',
            'Execute Shapes: Map, Set Properties, Message, etc.',
            'Logic Shapes: Branch, Route, Decision, Try/Catch.'
          ],
        ),
        Lesson(
          title: 'Components',
          content: 'Reusable configuration objects like Connections, Operations, and Profiles.',
          keyPoints: [
            'Connection: "Where" to connect (URL, User/Pass).',
            'Operation: "How" to connect (GET/POST, Query filters).',
            'Profile: Structure of the data (XML, JSON, Database, Flat File).'
          ],
        ),
      ],
    ),
    LearningModule(
      id: 'logic',
      title: '3. Process Logic',
      description: 'Controlling data flow and transformation.',
      icon: Icons.account_tree,
      lessons: [
        Lesson(
          title: 'Mapping Data',
          content: 'The Map shape transforms data from a source profile to a destination profile. You can use Map Functions for calculations, lookups, and scripting.',
          keyPoints: [
            'Source Profile (Left) -> Destination Profile (Right)',
            'Standard Functions: String, Math, Date/Time',
            'User Defined Functions: Reusable mapping logic'
          ],
        ),
        Lesson(
          title: 'Document Flow',
          content: 'Understanding how documents move through shapes. Some shapes process documents individually, while others (like Combine) process them as a batch.',
          keyPoints: [
            'Documents flow down one path at a time in a Branch.',
            'Process Properties persist across the execution.',
            'Dynamic Document Properties are metadata attached to a specific document.'
          ],
        ),
      ],
    ),
  ];

  static const List<Scenario> scenarios = [
    Scenario(
      title: 'Scenario 1: CSV to XML',
      difficulty: 'Beginner',
      description: 'Read a Flat File (CSV) of customer data from a disk directory, transform it into an XML format, and save it to another directory.',
      goal: 'Learn Profiles, Maps, and Disk Connectors.',
      steps: [
        'Create a Flat File Profile for the CSV structure (ID, Name, Email).',
        'Create an XML Profile for the target structure.',
        'Configure a Disk Connection and "Get" Operation to read *.csv files.',
        'Add a Map Shape: Select source (CSV) and target (XML) profiles. Map fields across.',
        'Configure a Disk Connection and "Send" Operation to write the output.',
        'Test the process in Test Mode.'
      ],
    ),
    Scenario(
      title: 'Scenario 2: Content-Based Routing',
      difficulty: 'Intermediate',
      description: 'Ingest orders. If the total amount is > \$1000, send to "Premium Processing". Otherwise, send to "Standard Processing".',
      goal: 'Learn the Route Shape and Decision Shape.',
      steps: [
        'Start with a Message Shape containing sample XML order data.',
        'Add a Route Shape.',
        'Configure Route Logic: Choose the "TotalAmount" profile element.',
        'Define Route Value: "Greater Than 1000".',
        'Connect the "Default" path to a Notify shape saying "Standard Order".',
        'Connect the "Match" path to a Notify shape saying "Premium Order".'
      ],
    ),
    Scenario(
      title: 'Scenario 3: Error Handling',
      difficulty: 'Advanced',
      description: 'Call an external API. If it fails, catch the error, log it to a file, and send an email alert.',
      goal: 'Learn Try/Catch and Exception Handling.',
      steps: [
        'Place a Try/Catch shape at the beginning of the flow.',
        'In the "Try" path, add an HTTP Client connector to call a dummy API.',
        'In the "Catch" path, add a Message shape to format an error report.',
        'Use "Document Property > Base > Try/Catch Message" to get the error details.',
        'Connect to a Disk connector to save the error log.',
        'Add a Mail connector (optional) to send an alert.'
      ],
    ),
    Scenario(
      title: 'Scenario 4: Database Extraction',
      difficulty: 'Intermediate',
      description: 'Query a SQL database to fetch active customer records and export them as a CSV file.',
      goal: 'Learn Database Connectors, SQL Queries, and Profiles.',
      steps: [
        'Create a Database Profile and use the Import Wizard to connect to your DB.',
        'Select the "Customers" table and generate the profile fields.',
        'In the Process, add a Database Connector with Action "Get".',
        'Configure the Operation: Create a new Profile, and write the SQL: "SELECT * FROM Customers WHERE Status = \'Active\'".',
        'Add a Map Shape: Source is the DB Profile, Target is a Flat File (CSV) Profile.',
        'Connect to a Disk Connector to save the output file.',
        'Run in Test Mode to verify the SQL query execution.'
      ],
    ),
  ];
}
