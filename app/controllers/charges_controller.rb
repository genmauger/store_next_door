class ChargesController < ApplicationController
  
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
        # description: @sneaker.description,
        currency: 'AUD'
      )

      # current_user.charges << Charge.new(charge_id: charge.id)
      
      flash[:notice] = "Payment made!"
      redirect_back fallback_location: sneakers_path

      rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_back fallback_location: sneakers_path
  end
end

