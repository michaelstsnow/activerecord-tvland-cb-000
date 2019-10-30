class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_network(name:)
    newtork = Network.new
    network.name=name
    network.save
  end

end
