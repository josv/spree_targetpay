module Spree
  class BillingIntegration::Targetpay < BillingIntegration

    def provider_class
      ActiveMerchant::Billing::Skrill
    end

  end
end
