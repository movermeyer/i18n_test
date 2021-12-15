require 'i18n'

I18n::Backend::Simple.include(
  I18n::Backend::Fallbacks,
  I18n::Backend::Pluralization,
)

I18n.enforce_available_locales = false

I18n.fallbacks = I18n::Locale::Fallbacks.new(:root)
I18n.load_path += Dir[File.join("data/**/*.yml")]
