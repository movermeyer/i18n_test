require_relative "test_helper"

module I18nTest
  class FallbacksTest < Minitest::Test

    def test_fallbacks_work_with_symbols
      assert_equal [:ak, :root], I18n.fallbacks[:ak]

      I18n.with_locale(:ak) do
        expected = { 1 => "S-Ɔ", 2 => "K-Ɔ", 3 => "E-Ɔ", 4 => "E-O", 5 => "E-K", 6 => "O-A", 7 => "A-K", 8 => "D-Ɔ", 9 => "F-Ɛ", 10 => "Ɔ-A", 11 => "Ɔ-O", 11 => "M-Ɔ" }
        assert_equal expected, I18n.t("calendars.gregorian.months.stand-alone.abbreviated")
      end
    end
  end
end
