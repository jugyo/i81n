require 'i18n'
class I18n::Backend::I81n < I18n::Backend::Simple
  attr_reader :ignore_pattern

  def initialize(ignore_pattern = nil)
    @ignore_pattern = ignore_pattern
    super
  end

  def lookup(locale, key, scope = [], options = {})
    if ignore_pattern && ignore_pattern =~ key.to_s
      super
    else
      super || key.to_s
    end
  end
end
