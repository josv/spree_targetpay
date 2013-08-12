Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  resources :orders do
    resource :checkout, :controller => 'checkout' do
      member do
        get :targetpay_return
      end
    end
  end

  match '/targetpay' => 'targetpay_status#update', :via => :post, :as => :targetpay_status_update

end
