require 'i18n'
class I18n::Backend::I81n < I18n::Backend::Simple
  attr_reader :ignore

  def initialize(options = {})
    @ignore = options[:ignore]
    super()
  end

  def lookup(locale, key, scope = [], options = {})
    if ignore && ignore =~ key.to_s
      super
    else
      super || key.to_s
    end
  end
end
