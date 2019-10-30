class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

#  def build_network(call_letters:)
#    network = Network.new
#    network.call_letters=call_letters
#    self.network=network
#    network.save
#  end

end
