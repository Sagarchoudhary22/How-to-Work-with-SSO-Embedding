connection: "employee_details_sagar_23"

# include all the views
include: "/views/**/*.view"

datagroup: employee_dashboard_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: employee_dashboard_default_datagroup

explore: employee {}
