module SatelicomPtv
  module Model
    # Attribute Name | Type | Description
    # country String  The country code of this address. Depends on the COUNTRY_CODETYPE settings.
    # state String    The state code of this address.
    # postCode  String    The postcode of this address.
    # city  String    The city name of this address.
    # city2 String    The city district of this address.
    # street  String    The street name of this address.
    # houseNumber String    The house number of this address.

    class AdditionalField < Base
      property 'field'
      property 'value'
    end
  end
end