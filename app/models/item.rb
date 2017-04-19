class Item < ApplicationRecord
  after_commit { ItemRelayJob.perform_later(self) }
end
