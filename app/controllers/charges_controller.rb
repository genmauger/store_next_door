class ChargesController < ApplicationController
  
  #Need to require in info from other controller up top
  def new
    @email = current_user.email 
  end
  
  def charge
    # amount = @sneaker.price.to_i

    if current_user.stripe_id.blank?
        customer = Stripe::Customer.create(
        email: params[:stripeEmail],
        source: params[:stripeToken]
      )
      current_user.stripe_id = customer.id
      current_user.save!
    end

      Stripe::Charge.create(
        customer: current_user.stripe_id,
        amount: amount,
        :currency => 'aud'
      )

      # current_user.charges << Charge.new(charge_id: charge.id)
      
      flash[:notice] = "Payment made!"
      redirect_back fallback_location: root_path

      rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_back fallback_location: root_path
  end
end
