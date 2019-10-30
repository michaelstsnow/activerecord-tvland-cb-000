class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name=self.first_name + " " + self.last_name
  end

  def list_roles
      for role in self.characters
      end
  end

end
