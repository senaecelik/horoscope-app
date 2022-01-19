class Horoscope {
  final String _horoscopeName;
  final String _horoscopeDate;
  final String _horoscopeDetail;
  final String _horoscopeSmallImage;
  final String _horoscopeBigImage;
  get horoscopeName => _horoscopeName;

  get horoscopeDate => _horoscopeDate;

  get horoscopeDetail => _horoscopeDetail;

  get horoscopeSmallImage => _horoscopeSmallImage;

  get horoscopeBigImage => _horoscopeBigImage;

  Horoscope(this._horoscopeName, this._horoscopeDate, this._horoscopeDetail,
      this._horoscopeSmallImage, this._horoscopeBigImage);
}
