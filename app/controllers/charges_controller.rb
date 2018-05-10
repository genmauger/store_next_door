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
        # description: @sneaker.description,
        currency: 'AUD'
      )

      # current_user.charges << Charge.new(charge_id: charge.id)
      
      flash[:notice] = "Payment made!"
      redirect_back fallback_location: root_path

      rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_back fallback_location: root_path
  end
end

# def charge # (POST: stripe button pressed)
#   # invoice = Invoice.find(params[:invoice_id]) #hidden field
#   # amount = invoice.amount
#   # description = invoice.description

#   if current_user.stripe_id.blank?
#       customer = Stripe::Customer.create(
#       email: params[:stripeEmail],
#       source: params[:stripeToken]
#     )
#     current_user.stripe_id = customer.id
#     current_user.save!
#   end

#     Stripe::Charge.create(
#       customer: current_user.stripe_id,
#       amount: amount,
#       description: description,
#       currency: 'AUD'
#     )

#     # current_user.charges << Charge.new(charge_id: charge.id)
    
#     flash[:notice] = "Payment made!"
#     redirect_back fallback_location: root_path

#     rescue Stripe::CardError => e
#     flash[:error] = e.message
#     redirect_back fallback_location: root_path
# end

# <%= form_tag charges_path do %>
#   <article>
#     <% if flash[:error].present? %>
#       <div id="error_explanation">
#         <p><%= flash[:error] %></p>
#       </div>
#     <% end %>
#     <label class="amount">
#     <p>Charge form rendered</p>
#       <span></span>
#     </label>
#   </article>

#   <%= form.hidden_field :invoice_id, id: :charge_invoice_id %>

#   <script src="https://checkout.stripe.com/checkout.js" class="stripe-button"
#           data-key="<%= Rails.configuration.stripe[:publishable_key] %>"
#           data-description="<%= @invoice.description"
#           data-amount="<%= @invoice.amount %>"
#           data-locale="auto"></script>
# <% end %>