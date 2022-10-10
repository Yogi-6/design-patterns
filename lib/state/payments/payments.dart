void main(List<String> args) {
  final upi = UPI();
  // final netbanking = NetBanking();

  final paymentService = PaymentService(paymentMethod: upi);
  // final paymentService = PaymentService(paymentMethod: netbanking);

  print(paymentService.getProcessingCharges());
  paymentService.makePayment();
}

/// Context
class PaymentService {
  final PaymentMethod paymentMethod;

  const PaymentService({required this.paymentMethod});

  void makePayment() => paymentMethod.makePayment();

  int getProcessingCharges() => paymentMethod.processingCharges();
}

/// State
abstract class PaymentMethod {
  void makePayment();

  int processingCharges();
}

class UPI implements PaymentMethod {
  @override
  void makePayment() {
    print('Payment successful using UPI');
  }

  @override
  int processingCharges() => 0;
}

class NetBanking implements PaymentMethod {
  @override
  void makePayment() {
    print('Payment successful using Net Banking');
  }

  @override
  int processingCharges() => 10;
}
