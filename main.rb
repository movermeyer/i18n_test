require 'i18n'

I18n::Backend::Simple.include(
  I18n::Backend::Fallbacks,
  I18n::Backend::Pluralization,
)

I18n.enforce_available_locales = false

I18n.fallbacks = I18n::Locale::Fallbacks.new(:root)
I18n.load_path += Dir[File.join("data/**/*.yml")]

####

def main
  I18n.fallbacks[:ak]
  # => [:ak, :root]

  I18n.with_locale(:ak) do
    I18n.t("calendars.gregorian.months.stand-alone.abbreviated")
    # => {1=>"M01", 2=>"M02", 3=>"M03", 4=>"M04", 5=>"M05", 6=>"M06", 7=>"M07", 8=>"M08", 9=>"M09", 10=>"M10", 11=>"M11", 12=>"M12"}
  end
end

main()
