module Tele2

  class Base

    include HTTParty
    base_uri 'https://restapi3.jasper.com/rws/api/v1/'

    def initialize(usr, key)

      @auth = {:username => usr, :password => key}

      @options = { basic_auth: @auth }

    end

    def devices
      @devices = Tele2::Devices.new(self)
    end

    def messages
      @messages = Tele2::Messages.new(self)
    end

    def users
      @users = Tele2::Users.new(self)
    end

    def echo
      @echo = Tele2::Echo.new(self)
    end

    def get_request(url)
      #@options.marge(params)
      response = self.class.get(url, @options)
      check_for_error(response)
      return response
    end

    def put_request(url, params)
      params = { :body => params.to_json, :headers => { "Content-Type" => 'application/json'} }

      @options = @options.merge(params)
      puts(@options)

      response = puts(self.class.put(url, @options))
      check_for_error(response)
      return response
    end

    def post_request(url, params)
      params = { :body => params.to_json, :headers => { "Content-Type" => 'application/json'} }

      @options = @options.merge(params)
      puts(@options)

      response = puts(self.class.post(url, @options))
      check_for_error(response)
      return response
    end

    def delete_request(url)
      #@options.marge(params)
      response self.class.delete(url, @options)
      check_for_error(response)
      return response
    end

    def check_for_error(response)
      case response
      when 1400101
        throw CustomerNotFound
      when 1400102
        throw RoleNotFound
      when 1400103
        throw CouldNotCreateUser
      when 1400109
        throw UserNotFound
      when 1400112
        throw EmailIsEmpty
      when 1400116
        throw InvalidEmail
      when 1400117
        throw CouldNotUpdateUser
      when 1400119
        throw LanguageEmpty
      when 1400121
        throw FirstNameInvalid
      when 1400122
        throw LastNameInvalid
      when 1400129
        throw UserAccessTypeInvalid
      when 10000001
        throw APICredentialsInvalid
      when 10000002
        throw AccountIdMissing
      when 10000003
        throw DateTimeMissing
      when 10000004
        throw AccountIdInvalid
      when 10000005
        throw SIMStatusInvalid
      when 10000006
        throw PageSizeInvalid
      when 10000007
        throw PageNumberInvalid
      when 10000008
        throw NoOperatorCustomFieldPermission
      when 10000009
        throw NoAccountCustomFieldPermission
      when 10000010
        throw NoCustomerCustomFieldPermission
      when 10000011
        throw MissingFields
      when 10000012
        throw DateFormatInvalid
      when 10000013
        throw RatePlanInvalid
      when 10000014
        throw CommunicationPlanInvalid
      when 10000015
        throw CustomerInvalid
      when 10000016
        throw OverageLimitOverrideInvalid
      when 10000017
        throw MessageEncoodingInvalid
      when 10000018
        throw DateCodingInvalid
      when 10000019
        throw ValidityPeriodInvalid
      when 10000020
        throw MessageCharacterLimitReached
      when 10000021
        throw ICCIDInvalid
      when 10000022
        throw FromDateMissing
      when 10000023
        throw BadJSONRequest
      when 10000024
        throw APIVersionNumberInvalid
      when 10000025
        throw DeviceIDNotFound
      when 10000026
        throw ModemIDNotFound
      when 10000027
        throw ToFromDateError
      when 10000028
        throw RequestParameterError
      when 10000029
        throw DeviceActivationStatusError
      when 10000030
        throw RoleAPIAccessError
      when 10000031
        throw ZoneInvalid
      when 10000032
        throw CycleStartDateInvalid
      when 10000033
        throw ContactNameInvalid
      when 10000049
        throw DaysOfHistoryInvalid
      when 10000062
        throw AccountDataAccessError
      when 10000079
        throw AccountAPIAccessError
      when 10000080
        throw APIAccessForbiden
      when 10000500
        throw ServiceProviderNotFound
      when 10000501
        throw AccountNotCreated
      when 10000504
        throw AccountAlreadyExists
      when 10000505
        throw RegionIdInvalid
      when 10000515
        throw BillingCycleStartInvalid
      when 10000516
        throw BillCycleStartSetError
      when 10000521
        throw CountryCodeInvalid
      when 10000528
        throw PartnerAccountCreateError
      when 10000530
        throw AccountIdRequired
      when 10000532
        throw CustomChargeCreationError
      when 10000533
        throw ChargeIdInvalid
      when 10000534
        throw ReferenceIdRequired
      when 10000535
        throw CustomChargeDescriptionRequired
      when 10000536
        throw ChargeAmountRequired
      when 10000537
        throw ChargeFrequencyRequired
      when 10000538
        throw RatePlanIdRequired
      when 10000539
        throw DeviceStateRequired
      when 10000540
        throw OperatorIdInvalid
      when 10000541
        throw ChargeStatusInvalid
      when 10000542
        throw ChargeStatusRequired
      when 10000543
        throw ChargeIdInvalid
      when 10000545
        throw ChargeFrequencyValueInvalid
      when 10000546
        throw DeviceStateInvalid
      when 10000547
        throw ChargeStatusError
      when 10000548
        throw PrimaryContactDetailsRequired
      when 10000549
        throw CustomChargeDeleteError
      when 10000550
        throw InvalidChargeStatusTransistion
      when 10000551
        throw AccountChargeNotFount
      when 10000552
        throw ReferenceChargeCombinationNotFound
      when 10000553
        throw ServiceProviderChargeIdError
      when 10000557
        throw OperatorAccountsNotFound
      when 10000559
        throw CustomChargeFetchError
      when 10000562
        throw OperatorIdInvalid
      when 10000563
        throw OperatorIdRequired
      when 10000567
        throw AccountNameInvalid
      when 10000568
        throw UsernameAlreadyExists
      when 10000602
        throw CellIdTrackingDisabled
      when 20000001
        throw ICCIDNotFound
      when 20000002
        throw SMSMessageIdNotFound
      when 20000003
        throw AccountIdInvalid
      when 20000005
        throw RoleInvalid
      when 30000001
        throw UnknownServerError
      when 30000002
        throw ControlCenterMessageSubmitFail
      when 50001225
        throw ShippingAddressRequired
      when 50001226
        throw PPUAddressRequired
      when 50001224
        throw BillingContactRequired
      when 50001227
        throw OperatorNameInvalid
      when 50001228
        throw AccountTypeInvalid
      when 50001229
        throw CurrencyCodeInvalid
      when 50001230
        throw LanguageInvalid
      when 50001231
        throw SIMStateInvalid
      when 50001233
        throw JSONValidationError
      when 50001234
        throw CommunicationPlanInvalidForAccount
      when 50001235
        throw AccountSegmentInvalid
      else
        return
      end
    end #check_errors

  end #class

end #module
