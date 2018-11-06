module Tele2

  class CustomerNotFound < StandardError
    def initialize(msg="Customer was not Found")
      super
    end
  end

  class RoleNotFound < StandardError
    def initialize(msg="Role was not Found")
      super
    end
  end

  class CouldNotCreateUser < StandardError
    def initialize(msg="Could not create the new user")
      super
    end
  end

  class UserNotFound < StandardError
    def initialize(msg="User was not Found")
      super
    end
  end

  class EmailIsEmpty < StandardError
    def initialize(msg="Email is empty")
      super
    end
  end

  class InvalidEmail < StandardError
    def initialize(msg="The email provided is invalid")
      super
    end
  end

  class CouldNotUpdateUser < StandardError
    def initialize(msg="Could not update desired user")
      super
    end
  end

  class LanguageEmpty < StandardError
    def initialize(msg="Language feild is empty")
      super
    end
  end

  class FirstNameInvalid < StandardError
    def initialize(msg="The first name provided is invalid")
      super
    end
  end

  class LastNameInvalid < StandardError
    def initialize(msg="The last name provided is invalid")
      super
    end
  end

  class UserAccessTypeInvalid < StandardError
    def initialize(msg="The user access type provided is invalid. Valid types include API, UI or API_UI")
      super
    end
  end

  class APICredentialsInvalid < StandardError
    def initialize(msg="The API credentials provided are invalid")
      super
    end
  end

  class AccountIdMissing < StandardError
    def initialize(msg="Please provide and account id")
      super
    end
  end

  class DateTimeMissing < StandardError
    def initialize(msg="Please provide a date and/or time")
      super
    end
  end

  class AccountIdInvalid < StandardError
    def initialize(msg="The account id provided is invalid")
      super
    end
  end

  class SIMStatusInvalid < StandardError
    def initialize(msg="The SIM status provided is invalid")
      super
    end
  end

  class PageSizeInvalid < StandardError
    def initialize(msg="The page size provided is invalid")
      super
    end
  end

  class PageNumberInvalid < StandardError
    def initialize(msg="The page number provided is invalid")
      super
    end
  end

  class NoOperatorCustomFieldPermission < StandardError
    def initialize(msg="Your role does not have permission to edit the operator custom fields.")
      super
    end
  end

  class NoAccountCustomFieldPermission < StandardError
    def initialize(msg="Your role does not have permission to edit the account custom fields.")
      super
    end
  end

  class NoCustomerCustomFieldPermission < StandardError
    def initialize(msg="Your role does not have permission to edit the customer custom fields.")
      super
    end
  end

  class MissingFields < StandardError
    def initialize(msg="One or more required fields are missing")
      super
    end
  end

  class DateFormatInvalid < StandardError
    def initialize(msg="The date format used is invalid")
      super
    end
  end

  class RatePlanInvalid < StandardError
    def initialize(msg="The rate plan provided is invalid")
      super
    end
  end

  class CommunicationPlanInvalid < StandardError
    def initialize(msg="The communication plan provided is invalid")
      super
    end
  end

  class CustomerInvalid < StandardError
    def initialize(msg="The cutomer provided is invalid")
      super
    end
  end

  class OverageLimitOverrideInvalid < StandardError
    def initialize(msg="The value provided for the overage limit override field is invalid")
      super
    end
  end

  class MessageEncoodingInvalid < StandardError
    def initialize(msg="The message encoding method provided is invalid")
      super
    end
  end

  class DateCodingInvalid < StandardError
    def initialize(msg="The data coding provided is invalid")
      super
    end
  end

  class ValidityPeriodInvalid < StandardError
    def initialize(msg="The validity period provided is invalid")
      super
    end
  end

  class MessageCharacterLimitReached < StandardError
    def initialize(msg="The message contains to many characters")
      super
    end
  end

  class ICCIDInvalid < StandardError
    def initialize(msg="The iccid provided is invalid")
      super
    end
  end

  class FromDateMissing < StandardError
    def initialize(msg="The from date value is missing")
      super
    end
  end

  class BadJSONRequest < StandardError
    def initialize(msg="The JSON in the request is not well formed. Please ensure that commas, colons, braces etc. are formatted properly.")
      super
    end
  end

  class APIVersionNumberInvalid < StandardError
    def initialize(msg="The API version number provided is invalid")
      super
    end
  end

  class DeviceIDNotFound < StandardError
    def initialize(msg="The device id cannot be found")
      super
    end
  end

  class ModemIDNotFound < StandardError
    def initialize(msg="The modem id cannot be found")
      super
    end
  end

  class ToFromDateError < StandardError
    def initialize(msg="The to date value must follow the from date value")
      super
    end
  end

  class RequestParameterError < StandardError
    def initialize(msg="The request contained one or more unrecognized parameters")
      super
    end
  end

  class DeviceActivationStatusError < StandardError
    def initialize(msg="The device cannot be moved to pre-activation status")
      super
    end
  end

  class RoleAPIAccessError < StandardError
    def initialize(msg="This role does not have access to this API")
      super
    end
  end

  class ZoneInvalid < StandardError
    def initialize(msg="The zone provided is invalid")
      super
    end
  end

  class CycleStartDateInvalid < StandardError
    def initialize(msg="The cycleStartDate must specify one of the last three billing cycles (including the current cycle)")
      super
    end
  end

  class ContactNameInvalid < StandardError
    def initialize(msg="The contact name provided is invalid")
      super
    end
  end

  class DaysOfHistoryInvalid < StandardError
    def initialize(msg="The days of history must be less than or equal to 365")
      super
    end
  end

  class AccountDataAccessError < StandardError
    def initialize(msg="This user does not have access to the account data")
      super
    end
  end

  class AccountAPIAccessError < StandardError
    def initialize(msg="This account does not have access to this API")
      super
    end
  end

  class APIAccessForbiden < StandardError
    def initialize(msg="API access is forbidden. This error can occur if your role doesn't have access to the function or if the operator doesn't have access to the Custom Charges REST APIs")
      super
    end
  end

  class ServiceProviderNotFound < StandardError
    def initialize(msg="The service provider cannot be found")
      super
    end
  end

  class AccountNotCreated < StandardError
    def initialize(msg="Could not create account")
      super
    end
  end

  class AccountAlreadyExists < StandardError
    def initialize(msg="An account with this name already exists")
      super
    end
  end

  class RegionIdInvalid < StandardError
    def initialize(msg="The region id provided is invalid")
      super
    end
  end

  class BillingCycleStartInvalid < StandardError
    def initialize(msg="The billing cycle start date provided is invalid")
      super
    end
  end

  class BillCycleStartSetError < StandardError
    def initialize(msg="Not allowed to set billing cycle start date")
      super
    end
  end

  class CountryCodeInvalid < StandardError
    def initialize(msg="The country code provided is invalid")
      super
    end
  end

  class PartnerAccountCreateError < StandardError
    def initialize(msg="Partner account creation not allowed")
      super
    end
  end

  class AccountIdRequired < StandardError
    def initialize(msg="The account id is required")
      super
    end
  end

  class CustomChargeCreationError < StandardError
    def initialize(msg="There was an error creating a custom charge")
      super
    end
  end

  class ChargeIdInvalid < StandardError
    def initialize(msg="Resource not found - invalid charge id")
      super
    end
  end

  class ReferenceIdRequired < StandardError
    def initialize(msg="The reference id is required")
      super
    end
  end

  class CustomChargeDescriptionRequired < StandardError
    def initialize(msg="The custom charge description is required")
      super
    end
  end

  class ChargeAmountRequired < StandardError
    def initialize(msg="The charge amount is required")
      super
    end
  end

  class ChargeFrequencyRequired < StandardError
    def initialize(msg="The charge frequency is required")
      super
    end
  end

  class RatePlanIdRequired < StandardError
    def initialize(msg="The rate plan id is required")
      super
    end
  end

  class DeviceStateRequired < StandardError
    def initialize(msg="The device state is required")
      super
    end
  end

  class OperatorIdInvalid < StandardError
    def initialize(msg="Resource not found - invalid operator id")
      super
    end
  end

  class ChargeStatusInvalid < StandardError
    def initialize(msg="The charge status provided is invalid")
      super
    end
  end

  class ChargeStatusRequired < StandardError
    def initialize(msg="The charge status (Added or Removed) is required")
      super
    end
  end

  class InvalidChargeId < StandardError
    def initialize(msg="The charge id provided is invalid")
      super
    end
  end

  class ChargeFrequencyValueInvalid < StandardError
    def initialize(msg="The charge frequency value provided is invalid")
      super
    end
  end

  class DeviceStateInvalid < StandardError
    def initialize(msg="The device state value provided is invalid")
      super
    end
  end

  class ChargeStatusError < StandardError
    def initialize(msg="The charge status must be Added or Removed")
      super
    end
  end

  class PrimaryContactDetailsRequired < StandardError
    def initialize(msg="The primary contact first name and last name are required")
      super
    end
  end

  class CustomChargeDeleteError < StandardError
    def initialize(msg="There was an error deleting the custom charge")
      super
    end
  end

  class InvalidChargeStatusTransistion < StandardError
    def initialize(msg="Invalid status transition. To delete a charge, its status must be NEW or INACTIVE")
      super
    end
  end

  class AccountChargeNotFount < StandardError
    def initialize(msg="The specified account does not contain the specified charge")
      super
    end
  end

  class  ReferenceChargeCombinationNotFound < StandardError
    def initialize(msg="The specified reference id/cahrge id conbination does not exist in the account")
      super
    end
  end

  class ServiceProviderChargeIdError < StandardError
    def initialize(msg="The service provider doesn't contain the charge id")
      super
    end
  end

  class OperatorAccountsNotFound < StandardError
    def initialize(msg="Resource not found - accounts for given operator")
      super
    end
  end

  class CustomChargeFetchError < StandardError
    def initialize(msg="Unable to fetch custom charges")
      super
    end
  end

  class OperatorIdInvalid < StandardError
    def initialize(msg="The operator id provided is invalid for the specified account id")
      super
    end
  end

  class OperatorIdRequired < StandardError
    def initialize(msg="The operator id is required")
      super
    end
  end

  class AccountNameInvalid < StandardError
    def initialize(msg="The account name provided is invalid")
      super
    end
  end

  class UsernameAlreadyExists < StandardError
    def initialize(msg="The username provided already exists")
      super
    end
  end

  class CellIdTrackingDisabled < StandardError
    def initialize(msg="Cell Id tracking for this device is disabled")
      super
    end
  end

  class ICCIDNotFound < StandardError
    def initialize(msg="The iccid provided cannot be found")
      super
    end
  end

  class SMSMessageIdNotFound < StandardError
    def initialize(msg="The SMS messgae id provided cannot be found")
      super
    end
  end

  class ResourceNotFoundAccountInvalid < StandardError
    def initialize(msg="Resource not found : invalid account id")
      super
    end
  end

  class RoleInvalid < StandardError
    def initialize(msg="The role provided is invalid")
      super
    end
  end

  class UnknownServerError < StandardError
    def initialize(msg="An unknown server error has accured")
      super
    end
  end

  class ControlCenterMessageSubmitFail < StandardError
    def initialize(msg="Control center failed to submit the message to the SMSC")
      super
    end
  end

  class ShippingAddressRequired < StandardError
    def initialize(msg="Shipping Address cannot be null is it is not same as the billing address")
      super
    end
  end

  class PPUAddressRequired < StandardError
    def initialize(msg="PPU Address cannot be null is it is not same as the shipping address")
      super
    end
  end

  class BillingContactRequired < StandardError
    def initialize(msg="Billing Contact cannot be null is it is not same as primary contact")
      super
    end
  end

  class OperatorNameInvalid < StandardError
    def initialize(msg="The operator name provided is invalid")
      super
    end
  end

  class AccountTypeInvalid < StandardError
    def initialize(msg="The account type provided is invalid")
      super
    end
  end

  class CurrencyCodeInvalid < StandardError
    def initialize(msg="The currency code provided is invalid")
      super
    end
  end

  class LanguageInvalid < StandardError
    def initialize(msg="The language provided is invalid")
      super
    end
  end

  class SIMStateInvalid < StandardError
    def initialize(msg="The SIM state provided is invalid")
      super
    end
  end

  class JSONValidationError < StandardError
    def initialize(msg="JSON validation error")
      super
    end
  end

  class CommunicationPlanInvalidForAccount < StandardError
    def initialize(msg="The communication plan provided is invalid for the account")
      super
    end
  end

  class AccountSegmentInvalid < StandardError
    def initialize(msg="The account segmenrt provided is invalid")
      super
    end
  end
end #module
