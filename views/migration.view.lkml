view: migration {
  sql_table_name: `Batch2_demo.Migration`
    ;;

  dimension: points_earned {
    type: number
    sql: ${TABLE}.PointsEarned ;;
  }

  dimension_group: reminder {
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
    sql: ${TABLE}.ReminderDate ;;
  }

  dimension: subscribed {
    type: yesno
    sql: ${TABLE}.Subscribed ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.Username ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.Zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: [username]
  }
}
