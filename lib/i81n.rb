require 'i18n'
class I18n::Backend::I81n < I18n::Backend::Simple
  attr_reader :ignore

  def initialize(options = {})
    @ignore = options[:ignore]
    super()
  end

  def lookup(locale, key, scope = [], options = {})
    return super if options.delete(:i81n) == false
    return super if options[:default]

    key_str = key.to_s
    if ignore && ignore =~ key_str
      super
    else
      super || key_str
    end
  end
end
