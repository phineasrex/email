def campaign_cost
  print "Enter your CPM: "
  cpm = gets.chomp.to_f
  print "Enter number of emails sent: "
  volume = gets.chomp.to_f
  @volume = volume
  campaign_cost = (@volume / 1000) * cpm
  @campaign_cost = campaign_cost
end

def cpl
  print "Enter your CTR: "
  ctr = gets.chomp.to_f
  real_ctr = ctr / 100
  print "Enter your Conversion Rate: "
  conv = gets.chomp.to_f
  real_conv = conv / 100
  lead_volume = (@volume * real_ctr) * real_conv
  cpl = @campaign_cost / lead_volume
  print "Your lead volume is #{lead_volume} and your CPL is #{cpl}."
end

puts campaign_cost
puts cpl
