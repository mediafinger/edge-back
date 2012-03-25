module ActionView
  module Helpers
    module FormOptionsHelper
      #def country_select(object, method, options = {}, html_options = {})
        #InstanceTag.new(object, method, self, options.delete(:object)).to_select_tag(Country.to_country_select_collection, options, html_options)
      ## Return select and option tags for the given object and method, using country_options_for_select to generate the list of option tags.
      def country_select(object, method, priority_countries = nil, options = {}, html_options = {})
        InstanceTag.new(object, method, self, options.delete(:object)).to_country_select_tag(priority_countries, options, html_options)
      end


      # Returns a string of option tags for pretty much any country in the world. Supply a country name as +selected+ to
      # have it marked as the selected option tag. You can also supply an array of countries as +priority_countries+, so
      # that they will be listed above the rest of the (long) list.
      # NOTE: Only the option tags are returned, you have to wrap this call in a regular HTML select tag.
      def country_options_for_select(selected = nil, priority_countries = nil)
        country_options = ""
        if priority_countries
          country_options += options_for_select(priority_countries, selected)
          country_options += "<option value=\"\" disabled=\"disabled\">-------------</option>\n"
        end
        return country_options + options_for_select(COUNTRIES, selected)
      end

      COUNTRIES = ['ad', 'ae', 'af', 'ag', 'ai', 'al', 'am', 'an', 'ao', 'aq', 'ar', 'as', 'at', 'au', 'aw', 'ax', 'az', 'ba', 'bb',
        'bd', 'be', 'bf', 'bg', 'bh', 'bi', 'bj', 'bl', 'bm', 'bn', 'bo', 'bq', 'br', 'bs', 'bt', 'bv', 'bw', 'by', 'bz', 'ca', 'cc',
        'cd', 'cf', 'cg', 'ch', 'ci', 'ck', 'cl', 'cm', 'cn', 'co', 'cr', 'cs', 'ct', 'cu', 'cv', 'cx', 'cy', 'cz', 'de', 'dj',
        'dk', 'dm', 'do', 'dz', 'ec', 'ee', 'eg', 'eh', 'er', 'es', 'et', 'fi', 'fj', 'fk', 'fm', 'fo', 'fq', 'fr', 'fx', 'ga', 'gb',
        'gd', 'ge', 'gf', 'gg', 'gh', 'gi', 'gl', 'gm', 'gn', 'gp', 'gq', 'gr', 'gs', 'gt', 'gu', 'gw', 'gy', 'hk', 'hk', 'hm', 'hn',
        'hr', 'ht', 'hu', 'id', 'ie', 'il', 'im', 'in', 'io', 'iq', 'ir', 'is', 'it', 'je', 'jm', 'jo', 'jp', 'jt', 'ke', 'kg', 'kh',
        'ki', 'km', 'kn', 'kp', 'kr', 'kw', 'ky', 'kz', 'la', 'lb', 'lc', 'li', 'lk', 'lr', 'ls', 'lt', 'lu', 'lv', 'ly', 'ma', 'mc',
        'md', 'me', 'mf', 'mg', 'mh', 'mi', 'mk', 'ml', 'mm', 'mn', 'mo', 'mo', 'mp', 'mq', 'mr', 'ms', 'mt', 'mu', 'mv', 'mw', 'mx',
        'my', 'mz', 'na', 'nc', 'ne', 'nf', 'ng', 'ni', 'nl', 'no', 'np', 'nq', 'nr', 'nt', 'nu', 'nz', 'om', 'pa', 'pc', 'pe', 'pf',
        'pg', 'ph', 'pk', 'pl', 'pm', 'pn', 'pr', 'ps', 'pt', 'pu', 'pw', 'py', 'pz', 'qa', 'qo', 'qu', 're', 'ro', 'rs', 'ru', 'rw',
        'sa', 'sb', 'sc', 'sd', 'se', 'sg', 'sh', 'si', 'sj', 'sk', 'sl', 'sm', 'sn', 'so', 'sr', 'st', 'su', 'sv', 'sy', 'sz', 'tc',
        'td', 'tf', 'tg', 'th', 'tj', 'tk', 'tl', 'tm', 'tn', 'to', 'tr', 'tt', 'tv', 'tw', 'tz', 'ua', 'ug', 'um', 'us', 'uy', 'uz',
        'va', 'vc', 'vd', 've', 'vg', 'vi', 'vn', 'vu', 'wf', 'wk', 'ws', 'yd', 'ye', 'yt', 'za', 'zm', 'zw', 'zz'] unless const_defined?("COUNTRIES")

      # EU_COUNTRIES = ['at', 'be', 'bg', 'cy', 'cz', 'dk', 'de', 'ee', 'es', 'fi', 'fr', 'gb', 'gr',
      #             'hu', 'ie', 'it', 'lv', 'lt', 'lu', 'mt', 'nl', 'pl', 'pt', 'ro', 'se', 'sk', 'si']

      # def to_country_select_collection
      #   COUNTRIES.map do |country_code|
      #     [
      #       I18n.t("country.#{country_code}"),
      #       country_code
      #     ]
      #   end.sort
      # end
    end
    
    class InstanceTag
      def to_country_select_tag(priority_countries, options, html_options)
        html_options = html_options.stringify_keys
        add_default_name_and_id(html_options)
        value = value(object)
        content_tag("select",
          add_options(
            country_options_for_select(value, priority_countries),
            options, value
          ), html_options
        )
      end
    end
    
    class FormBuilder
      #def country_select(method, options = {}, html_options = {})
        #@template.country_select(@object_name, method, options.merge(:object => @object), html_options)
      def country_select(method, priority_countries = nil, options = {}, html_options = {})
        @template.country_select(@object_name, method, priority_countries, options.merge(:object => @object), html_options)
      end
    end
  end
end