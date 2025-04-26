void main() {
  List<Map<String, dynamic>> orders = [
    {"id": "1", "status": "ready", "item": "burger"},
    {"id": "2", "status": "ready", "item": "pizza"},
    {"id": "3", "status": "vip", "item": "mansaf"},
    {"id": "4", "status": "canceled", "item": "chicken"},
    {"id": "5", "status": "ready", "item": "fries"},
    {"id": "6", "status": "ready", "item": "nuggets"},
  ];
  for (var order in orders) {
    if (order["status"] == "canceled") {
      continue;
    }
    if (order["status"] == "vip") {
      print("vip order is found,prioritized");
      break;
    }
    switch (order["item"]) {
      case "burger":
        print("15 minutes to prepare");
        break;
      case "pizza":
        print("20 minutes to prepare");
        break;
      case "mansaf":
        print("25 minutes to prepare");
        break;
      case "fries":
        print("5 minutes to prepare");
        break;
      case "nuggets":
        print("10 minutes to prepare");
        break;
      default:
        print("unknown");
    }
    if (order["id"] == "4") {
      print("Order taking too long and alert the kitchen.");
    }
  }
}
