# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

#Gyms
pf = Gym.new("Planet Fitness")
cf = Gym.new("Club Fit")
#p cf
#binding.pry
#p Gym.all
#Lifter
conor = Lifter.new("Conor",95)
james = Lifter.new("James",85)
aidan = Lifter.new("Aidan",80)
#p james

#Membership
memb1 = Membership.new(40,pf,james)
memb2 = Membership.new(60,cf,conor)
memb3 = Membership.new(45,pf,aidan)
memb4 = Membership.new(30,pf,conor)
#p Membership.all
#puts "Gains!"

 #p pf.memberships
 #p pf.lifters
 #p cf.lifters
#  #p conor.gyms
#  p pf.lifters
#  p cf.lifter_names

# p conor.new_gym(40,cf)
#binding.pry
# # p pf.lift_total
# binding.pry
p Lifter.average_lift_total