defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    # Please implement the daily_rate/1 function
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    # Please implement the apply_discount/2 function
    discount_amount = before_discount * (discount / 100)
    final_value = before_discount - discount_amount

    final_value
  end

  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
    hours_per_day = 8
    working_days_per_month = 22

    total = hourly_rate * hours_per_day * working_days_per_month

    discount_amount = total * (discount / 100.0)

    discounted_rate = total - discount_amount
    Float.ceil(discounted_rate) |> trunc()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
    monthly = monthly_rate(hourly_rate, discount)
    hours_per_day = 8
    daily_rate = monthly / 22
    days = budget / daily_rate
    Float.floor(days, 1)
  end
end
