view: s3bqoutput {
  sql_table_name: `Batch2_demo.s3-bq-output`
    ;;

  dimension_group: item__reminder_date__s {
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
    sql: ${TABLE}.Item.ReminderDate.S ;;
  }

  dimension: point_earned__n {
    type: number
    sql: ${TABLE}.PointEarned.N ;;
    group_label: "Point Earned"
    group_item_label: "N"
  }

  dimension: subscribed__bool {
    type: yesno
    sql: ${TABLE}.Subscribed.BOOL ;;
    group_label: "Subscribed"
    group_item_label: "Bool"
  }

  dimension: username__s {
    type: string
    sql: ${TABLE}.Username.S ;;
    group_label: "Username"
    group_item_label: "S"
  }

  dimension: zipcode__n {
    type: number
    sql: ${TABLE}.Zipcode.N ;;
    group_label: "Zipcode"
    group_item_label: "N"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
