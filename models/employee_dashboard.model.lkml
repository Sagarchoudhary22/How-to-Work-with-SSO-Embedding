connection: "employee_details_sagar_23"

# include all the views
include: "/views/**/*.view"
include: "/views/employee.view.lkml"
include: "/car.dashboard.lookml"

datagroup: employee_dashboard_1 {
  sql_trigger: SELECT MAX(id) FROM employee;;
  max_cache_age: "5 seconds"
}

persist_with: employee_dashboard_1

explore: employee {}
