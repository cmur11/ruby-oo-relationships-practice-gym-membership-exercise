class Gym
  attr_reader :name
    @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
      Membership.all.select{|member|member.gym == self}
  end

  def lifters
      memberships.map{|memb|memb.lifter}
  end

  def lifter_names
      lifters.map{|lifter|lifter.name}
  end

  def lift_total
      lifters.sum{|lifter_inst| lifter_inst.lift_total}
  end

end
