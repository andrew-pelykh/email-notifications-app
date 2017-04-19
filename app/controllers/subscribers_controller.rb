class SubscribersController < ApplicationController

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      redirect_to items_path, notice: 'You was successfully subscribed.'
    else
      redirect_to items_path, notice: 'Something gone wrong.'
    end
  end

  def destroy
    subscriber = Subscriber.find(params[:id])
    subscriber.destroy if subscriber
  end

  private

    def subscriber_params
      params.require(:subscriber).permit(:email)
    end

end
