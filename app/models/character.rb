class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    self.name + " always says: " + self.catchphrase
  end

  def build_show(name)
    show=Show.new
    show.name=name
    show.save
  end

  def build_network(name)
    newtork = Network.new
    network.name=name
  end

end
