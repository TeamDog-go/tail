# == Schema Information
#
# Table name: options
#
#  id            :bigint(8)        not null, primary key
#  question_id   :integer
#  o_content     :string
#  o_color       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  avail_points  :integer
#  feedback_text :text
#

class Option < ApplicationRecord
    belongs_to :question
    has_many :answers
    has_many :surveys

    def display_name
        self.o_content
    end
end
