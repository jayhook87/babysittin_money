require 'active_support'
require 'time_difference'
class BabysittinMoney

  def gimme_my_money(start_time, bed_time, finish_time)

    midnight = start_time.beginning_of_day + 1.day if start_time.class == Time

    if start_time.class == Time && bed_time.class == Time && finish_time.class == Time
      start_to_bed = TimeDifference.between(start_time, bed_time).in_hours * 12
      bed_to_midnight = TimeDifference.between(bed_time, midnight).in_hours * 8
      making_bank = TimeDifference.between(midnight, finish_time).in_hours * 16


    elsif bed_time == 0 && start_time.class == Time && finish_time.class == Time
      start_to_bed = TimeDifference.between(start_time, finish_time).in_hours * 12
      bed_to_midnight = 0
      making_bank = 0


    else
      return 'error bro'

    end
    money_made(start_to_bed, bed_to_midnight, making_bank)

  end

  def money_made(*rates)
    rates.inject(0,:+)
  end

end
