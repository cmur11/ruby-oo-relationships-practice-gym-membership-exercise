class Lifter
  attr_reader :name, :lift_total
    @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end



  def memberships
      Membership.all.select{|memb|memb.lifter == self}
  end

  def gyms
      self.memberships.map{|memb|memb.gym.name}
  end
 # binding.pry

def self.average_lift_total
    total_weight_lifted = Lifter.all.map{|lift_instance|lift_instance.lift_total}.sum
    total_lifters = Lifter.all.count
    total_weight_lifted/total_lifters
end

def total_cost
    memberships.map{|memb|memb.cost}.sum
end

def new_gym(cost,gym)
    Membership.new(cost,self,gym)
end

end
