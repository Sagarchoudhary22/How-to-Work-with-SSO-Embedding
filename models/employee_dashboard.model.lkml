connection: "employee_details_sagar_23"

# include all the views
include: "/views/**/*.view"
include: "/views/employee.view.lkml"

datagroup: employee_dashboard {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: employee_dashboard_default_datagroup

datagroup: employee_dashboard_1 {
  sql_trigger: SELECT MAX(id) FROM ID;;
  max_cache_age: "5 minute"
}

persist_with: employee_dashboard_1

explore: employee {}
