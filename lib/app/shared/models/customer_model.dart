class CustomerModel {
  final String name;
  final String imageUrl;
  final String occupation;
  final double incomeAmount;
  final double expenseAmount;
  final double loanAmount;

  CustomerModel({
    this.name,
    this.imageUrl,
    this.occupation,
    this.incomeAmount,
    this.expenseAmount,
    this.loanAmount,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
      name: json['name'],
      imageUrl: json['imageUrl'],
      occupation: json['occupation'],
      incomeAmount: (json['incomeAmount'] as num).toDouble(),
      expenseAmount: (json['expenseAmount'] as num).toDouble(),
      loanAmount: (json['loanAmount'] as num).toDouble(),
    );
  }
}
