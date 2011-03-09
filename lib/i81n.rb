require 'i18n'

module I18n
  module Backend

    # Usage:
    #
    #   require 'i81n'
    #   I18n.t('foo') #=> 'foo'
    #   I18n.t('foo%{bar}', :bar => 'bar') #=> 'foobar'
    #
    module I81nize
      def self.included(base)
        base.class_eval do
          alias_method :old_lookup, :lookup
          def lookup(locale, key, scope = [], options = {})
            old_lookup(locale, key, scope, options) || key
          end
        end
      end
    end
  end
end

I18n::Backend::Simple.send(:include, I18n::Backend::I81nize)
