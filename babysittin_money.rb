require 'active_support'
require 'time_difference'
class BabysittinMoney

  def gimme_my_money(start_time, bed_time, finish_time)

    midnight = bed_time.beginning_of_day + 1.day

    start_to_bed = TimeDifference.between(start_time, bed_time).in_hours * 12
    bed_to_midnight = TimeDifference.between(bed_time, midnight).in_hours * 8
    makin_bank = TimeDifference.between(midnight, finish_time).in_hours * 16

   start_to_bed+bed_to_midnight+makin_bank
  end

end