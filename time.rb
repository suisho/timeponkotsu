require 'date'
require 'time'


class Date #:nodoc:
  class << self

    #alias_method :strptime_without_mock_date, :strptime

    def strptime_with_mock_date(str = '-4712-01-01', fmt = '%F', start = Date::ITALY)
      unless start == Date::ITALY
        raise ArgumentError, "Timecop's #{self}::#{__method__} only " +
                             "supports Date::ITALY for the start argument."
      end

      Time.strptime(str, fmt).to_date
    end

    def strptime_with_mock_date2(str = '-4712-01-01', fmt = '%F', start = Date::ITALY)
      unless start == Date::ITALY
        raise ArgumentError, "Timecop's #{self}::#{__method__} only " +
                             "supports Date::ITALY for the start argument."
      end

      Date.strptime(str, fmt).to_date
    end


    #alias_method :strptime, :strptime_with_mock_date
  end
end