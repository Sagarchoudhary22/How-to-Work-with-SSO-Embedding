view: trial1111 {
  sql_table_name: `Batch2_demo.trial1111`
    ;;

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ordered_quantity {
    type: number
    sql: ${TABLE}.orderedQuantity ;;
  }

  dimension: restocking_lead_time {
    type: number
    sql: ${TABLE}.restockingLeadTime ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: stock_level {
    type: number
    sql: ${TABLE}.stockLevel ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
