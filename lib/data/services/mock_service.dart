import 'dart:math';

class MockDataService {
  static final MockDataService _instance = MockDataService._internal();
  factory MockDataService() => _instance;
  MockDataService._internal();

  final Random _random = Random();

  // Mock Data
  final List<Map<String, dynamic>> tasks = [];
  final List<Map<String, dynamic>> clients = [];
  final List<Map<String, dynamic>> documents = [];

  void init() {
    _generateClients();
    _generateTasks();
    _generateDocuments();
  }

  void _generateClients() {
    for (int i = 0; i < 20; i++) {
      clients.add({
        'id': 'client_$i',
        'name': 'Client ${i + 1}',
        'email': 'client${i + 1}@example.com',
        'phone': '+33 6 12 34 56 78',
        'address': '${10 + i} Rue de Paris, 75001 Paris',
        'status': _random.nextBool() ? 'Active' : 'Inactive',
      });
    }
  }

  void _generateTasks() {
    final statuses = ['Pending', 'In Progress', 'Completed', 'Overdue'];
    final priorities = ['Low', 'Medium', 'High'];
    
    for (int i = 0; i < 50; i++) {
      tasks.add({
        'id': 'task_$i',
        'title': 'Task ${i + 1}',
        'description': 'Description for task ${i + 1}',
        'status': statuses[_random.nextInt(statuses.length)],
        'priority': priorities[_random.nextInt(priorities.length)],
        'clientId': clients[_random.nextInt(clients.length)]['id'],
        'dueDate': DateTime.now().add(Duration(days: _random.nextInt(30) - 5)),
      });
    }
  }

  void _generateDocuments() {
    final types = ['Quote', 'Invoice'];
    final statuses = ['Draft', 'Sent', 'Paid', 'Accepted', 'Rejected'];

    for (int i = 0; i < 30; i++) {
      documents.add({
        'id': 'doc_$i',
        'type': types[_random.nextInt(types.length)],
        'number': 'DEV-${2024000 + i}',
        'clientId': clients[_random.nextInt(clients.length)]['id'],
        'amount': (_random.nextDouble() * 5000).toStringAsFixed(2),
        'status': statuses[_random.nextInt(statuses.length)],
        'date': DateTime.now().subtract(Duration(days: _random.nextInt(60))),
      });
    }
  }

  Map<String, dynamic> getStats() {
    double revenue = documents
        .where((d) => d['status'] == 'Paid')
        .fold(0.0, (sum, d) => sum + double.parse(d['amount']));
    
    int activeQuotes = documents.where((d) => d['type'] == 'Quote' && d['status'] == 'Sent').length;
    int pendingTasks = tasks.where((d) => d['status'] == 'Pending' || d['status'] == 'In Progress').length;
    int healthScore = 85 + _random.nextInt(15); // Random healthy score

    return {
      'revenue': revenue,
      'activeQuotes': activeQuotes,
      'pendingTasks': pendingTasks,
      'healthScore': healthScore,
      'recentActivity': tasks.take(5).toList(),
    };
  }
}
