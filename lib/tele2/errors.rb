module Tele2

  class AuthenticationError < StandardError
    def initialize(msg="My default message")
      super
    end
  end

  class AccountIdMissingError < StandardError
    def initialize(msg="My default message")
      super
    end
  end

  class DateTimeMissingError < StandardError
    def initialize(msg="My default message")
      super
    end
  end

  class AccountIdInvalidError < StandardError
    def initialize(msg="My default message")
      super
    end
  end

  class SimStatusInvalidError < StandardError
    def initialize(msg="My default message")
      super
    end
  end

  class PageSizeInvalidError < StandardError
    def initialize(msg="My default message")
      super
    end
  end

end