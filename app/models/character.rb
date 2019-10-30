class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    self.name + " always says: " + self.catchphrase
  end

  def build_show(name:)
    show=Show.new
    show.name=name
    self.show=show
    show.save
  end

  def build_network(call_letters:)
    newtork = Network.new
    network.call_letters=call_letters
    self.show.network=network
    network.save
  end

end
