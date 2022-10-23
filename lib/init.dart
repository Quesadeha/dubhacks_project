class Init {
  Init._();

  static final Init instance = Init._();
  bool? _isNewAccount;

  static set isNewAccount(bool value) {
    if (value == instance._isNewAccount) {
      return;
    }
    instance._isNewAccount = value;
  }

  static bool get isNewAccount {
    assert(instance._isNewAccount != null, 'isNewAccount is required and missing');
    return instance._isNewAccount!;
  }
}