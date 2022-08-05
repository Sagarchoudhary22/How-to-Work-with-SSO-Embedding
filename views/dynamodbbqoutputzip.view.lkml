view: dynamodbbqoutputzip {
  sql_table_name: `Batch2_demo.dynamodb-bq-output-zip`
    ;;

  dimension: item__points_earned__n {
    type: number
    sql: ${TABLE}.Item.PointsEarned.N ;;
    group_label: "Item Points Earned"
    group_item_label: "N"
  }

  dimension_group: item__reminder_date__s {
    type: time
    description: "%E4Y-%m-%d"
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

  dimension: item__subscribed__bool {
    type: yesno
    sql: ${TABLE}.Item.Subscribed.BOOL ;;
    group_label: "Item Subscribed"
    group_item_label: "Bool"
  }

  dimension: item__username__s {
    type: string
    sql: ${TABLE}.Item.Username.S ;;
    group_label: "Item Username"
    group_item_label: "S"
  }

  dimension: item__zipcode__n {
    type: number
    sql: ${TABLE}.Item.Zipcode.N ;;
    group_label: "Item Zipcode"
    group_item_label: "N"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
