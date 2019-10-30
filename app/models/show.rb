class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(call_letters:)
    newtork = Network.new
    network.call_letters=call_letters
    network.save
    self.show.network_id=network.id
  end

end
