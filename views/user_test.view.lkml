view: user_test {
  sql_table_name: `Batch2_demo.user_test`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    description: "Type inferred from '1'"
    sql: ${TABLE}.id ;;
  }

  dimension: birthdate {
    type: string
    description: "Type inferred from '3/8/1971'"
    sql: ${TABLE}.birthdate ;;
  }

  dimension: cc {
    type: number
    description: "Type inferred from '6759521864920116'"
    sql: ${TABLE}.cc ;;
  }

  dimension: comments {
    type: string
    description: "Type inferred from '1E+02'"
    sql: ${TABLE}.comments ;;
  }

  dimension: country {
    type: string
    description: "Type inferred from 'Indonesia'"
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: email {
    type: string
    description: "Type inferred from 'ajordan0@com.com'"
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    description: "Type inferred from 'Amanda'"
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    description: "Type inferred from 'Female'"
    sql: ${TABLE}.gender ;;
  }

  dimension: ip_address {
    type: string
    description: "Type inferred from '1.197.201.2'"
    sql: ${TABLE}.ip_address ;;
  }

  dimension: last_name {
    type: string
    description: "Type inferred from 'Jordan'"
    sql: ${TABLE}.last_name ;;
  }

  dimension: registration_dttm {
    type: string
    description: "Type inferred from '2016-02-03T07:55:29Z'"
    sql: ${TABLE}.registration_dttm ;;
  }

  dimension: salary {
    type: number
    description: "Type inferred from '49756.53'"
    sql: ${TABLE}.salary ;;
  }

  dimension: title {
    type: string
    description: "Type inferred from 'Internal Auditor'"
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [id, last_name, first_name]
  }
}
