require 'i18n'
class I18n::Backend::I81n < I18n::Backend::Simple
  def lookup(locale, key, scope = [], options = {})
    super || key.to_s
  end
end
