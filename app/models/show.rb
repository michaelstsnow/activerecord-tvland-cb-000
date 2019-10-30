class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

#  def build_network(call_letters:)
#    newtork = Network.new
#    network.call_letters=call_letters
#    network.save
#  end

end
