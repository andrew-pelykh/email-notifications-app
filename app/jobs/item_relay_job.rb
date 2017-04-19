class ItemRelayJob < ApplicationJob
  def perform(item)
    Subscriber.all.each do |user|
      SubscriberMailer.send_item(item, user).deliver_later
    end
  end
end
