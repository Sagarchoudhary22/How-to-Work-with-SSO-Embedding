view: employee {
  sql_table_name: `sagar_choudhary.Employee`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}.City_Name ;;
  }

  dimension: conuntry_name {
    type:zipcode
    sql: ${TABLE}.Conuntry_Name ;;
  }
  dimension_group: doj {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DOJ ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.Email_Address ;;
  }

  dimension: first_name_last_name {
    type: string
    sql: ${TABLE}.FirstName_LastName ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.Job_Title ;;
  }

  dimension: salary {
    type: number
    sql: ${TABLE}.Salary ;;
  }

  dimension :region{
    type :string
    sql:${TABLE}.region;;
  }


  measure: count {
    type: count
    drill_fields: [id, conuntry_name, city_name, first_name_last_name]
  }
  measure: Average{
    type: count
    drill_fields: [salary]
  }
}
