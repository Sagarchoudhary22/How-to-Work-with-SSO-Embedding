- dashboard: car
  title: Car
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
    - name: hello_world
      type: looker_column
  description: ''
  preferred_slug: bbDHY16QV5frqOs8cshZbj
  elements:
  - title: Car Details
    name: Car Details
    model: car_detail_dashboard
    explore: car_data
    type: table
    fields: [car_data.id, car_data.car_name, car_data.car_rating, car_data.car_availability,
      car_data.body_type, car_data.booking_down_pymnt, car_data.broker_quote, car_data.city,
      car_data.fitness_certificate, car_data.fuel_type, car_data.kms_run, car_data.make,
      car_data.model, car_data.original_price, car_data.registered_city, car_data.registered_state,
      car_data.rto, car_data.sale_price, car_data.source, car_data.times_viewed, car_data.total_owners,
      car_data.transmission, car_data.variant, car_data.warranty_avail]
    sorts: [car_data.car_name]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      car_data.id: Car ID
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          custom: {id: 2ada8f23-4d8e-ea06-9b87-9bf9b9ed24df, label: Custom, type: continuous,
            stops: [{color: "#ff161f", offset: 0}, {color: "#ff625c", offset: 50},
              {color: "#fdff62", offset: 100}]}, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    column_order: ["$$$_row_numbers_$$$", car_data.id, car_data.car_name, car_data.car_rating,
      car_data.car_availability, car_data.body_type, car_data.booking_down_pymnt,
      car_data.broker_quote, car_data.city, car_data.fitness_certificate, car_data.fuel_type,
      car_data.kms_run, car_data.make, car_data.model, car_data.original_price, car_data.registered_city,
      car_data.registered_state, car_data.rto, car_data.sale_price, car_data.source,
      car_data.times_viewed, car_data.total_owners, car_data.transmission, car_data.variant,
      car_data.warranty_avail]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    hidden_points_if_no: []
    listen: {}
    row: 4
    col: 0
    width: 24
    height: 9
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <body>
      <img src="https://giffiles.alphacoders.com/991/99139.gif"
      width="400px" height="160px">
      </body>
    row: 0
    col: 0
    width: 6
    height: 4
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <body>
      <center><img src="https://d2t1xqejof9utc.cloudfront.net/screenshots/pics/f8981cb0d58c7713f5a208c77bc1dec1/large.jpg"
      width="350px" height="160px">
      </center>
      </body>
    row: 0
    col: 19
    width: 5
    height: 4
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"🅲🅰🆁   🅳🅴🆃🅰🅸🅻 🅳🅰🆂🅷🅱🅾🅰🆁🅳","fontSize":"46pt","backgroundColor":"rgb(255,
      255, 255)","color":"rgb(143, 143, 143)","bold":true}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 6
    width: 13
    height: 4
