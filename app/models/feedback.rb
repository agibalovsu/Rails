class Feedback 
  include ActiveModel::Model

  attr_accessor :email, :message

  validates :email, presence: true,
                    format: URI::DEFAULT_PARSER.regexp[:ABS]
  validates :message, presence: true,
end
