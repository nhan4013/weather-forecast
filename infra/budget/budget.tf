resource "aws_budgets_budget" "monthly_cost" {
  name              = "MonthlyCostBudget"
  budget_type       = "COST"
  limit_amount      = "2"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"

  notification {
    comparison_operator = "GREATER_THAN"
    notification_type   = "ACTUAL"
    threshold           = 100
    threshold_type      = "PERCENTAGE"
    subscriber_email_addresses = [ "nhanpham4013@gmail.com" ]


  }
}