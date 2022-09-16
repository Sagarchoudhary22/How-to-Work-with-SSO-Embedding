connection: "sagar_demo"

# include all the views
include: "/views/**/*.view"

datagroup: new_project_sagar_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: new_project_sagar_default_datagroup

explore: product_batch2 {}

explore: college_details_aj {}

explore: aj_demo {}

explore: migration {}

explore: aj_demo_error_records {
  join: aj_demo_error_records__attributes {
    view_label: "Aj Demo Error Records: Attributes"
    sql: LEFT JOIN UNNEST(${aj_demo_error_records.attributes}) as aj_demo_error_records__attributes ;;
    relationship: one_to_many
  }
}

explore: sample_01_error_records {
  join: sample_01_error_records__attributes {
    view_label: "Sample 01 Error Records: Attributes"
    sql: LEFT JOIN UNNEST(${sample_01_error_records.attributes}) as sample_01_error_records__attributes ;;
    relationship: one_to_many
  }
}

explore: pub_sub_sidhu_error_records {
  join: pub_sub_sidhu_error_records__attributes {
    view_label: "Pub Sub Sidhu Error Records: Attributes"
    sql: LEFT JOIN UNNEST(${pub_sub_sidhu_error_records.attributes}) as pub_sub_sidhu_error_records__attributes ;;
    relationship: one_to_many
  }
}

explore: covid19 {}

explore: dynamodbbqoutputzip {}

explore: dynamodbbqoutput {}

explore: dynamodbbqoutput_test {}

explore: dynamodbbqsample3 {}

explore: practicepubsubtobigquery {}

explore: pubsub_demo_error_records {
  join: pubsub_demo_error_records__attributes {
    view_label: "Pubsub Demo Error Records: Attributes"
    sql: LEFT JOIN UNNEST(${pubsub_demo_error_records.attributes}) as pubsub_demo_error_records__attributes ;;
    relationship: one_to_many
  }
}

explore: pubsub_demo {}

explore: product_test {}

explore: s3bqoutput {}

explore: parquet_test {}

explore: sample_data {
  label: "Sagar_New_Join"
  join:sample_output_demo{
    type: full_outer
    relationship: one_to_one
    sql_on: ${sample_data.id}=${sample_output_demo.id} ;;
  }
}
explore: sampledata123 {}

explore: sampledata56 {}

explore: sidhu_demo2 {}

explore: sample_output_demo {}

explore: sample_superstore_aj {}

explore: trial1111 {}

explore: user_test {}
