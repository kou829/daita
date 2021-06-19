class Agenda < ApplicationRecord
    belongs_to :user

    with_options presence: true do
        validates :title
        validates :catch_copy
        validates :user
    end
end
