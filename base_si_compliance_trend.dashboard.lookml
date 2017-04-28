- dashboard: si_compliance
  show_applied_filters: false
  title: Compliance
  layout: grid
  rows:
  - elements: [account_compliance_kpi1, account_compliance_kpi2]
    height: 100
  - elements: [account_compliance_chart]
    height: 400
  - elements: [account_compliance_table]
    height: 400
  show_applied_filters: true
  auto_run:  true

  filters:
     - name: date_frame_selection
       title: 'Period Selection'
       type: field_filter
       model: base_sales_intelligence_app_model
       explore: mn_cmpl_period_fact_dated
       default_value: 'Month'
       field: mn_cmpl_period_fact.date_frame_selection

     - name: customer_name
       title: 'Account'
       type: field_filter
       model: base_sales_intelligence_app_model
       explore: mn_cmpl_period_fact
       default_value: Mercy Hospital South
       field: mn_customer_dim.customer_name
       listens_to_filters: [contract_name, contract_number, pg_name, year_month, year, rolling_12_months]

     - name: contract_name
       title: 'Contract Name'
       type: field_filter
       model: base_sales_intelligence_app_model
       explore: mn_cmpl_period_fact
       default_value: BSC - Mercy Health System
       field: mn_contract_header_dim.contract_name
       listens_to_filters: [customer_name, contract_number, pg_name, year_month, year, rolling_12_months]

     - name: contract_number
       title: 'Contract Number'
       type: field_filter
       model: base_sales_intelligence_app_model
       explore: mn_cmpl_period_fact_dated
       default_value:
       field: mn_contract_header_dim.contract_number
       listens_to_filters: [customer_name, contract_name, pg_name, year_month, year, rolling_12_months]

     - name: pg_name
       title: 'Price Program'
       type: field_filter
       model: base_sales_intelligence_app_model
       explore: mn_cmpl_period_fact
       default_value:
       field: mn_product_group_dim.pg_name
       listens_to_filters: [customer_name, contract_name, contract_number, year_month, year, rolling_12_months]

     - name: year_month
       title: 'Invoice Month'
       type: field_filter
       model: base_sales_intelligence_app_model
       explore: mn_cmpl_period_fact_dated
       default_value:
       field: mn_date_dim.year_month
       listens_to_filters: [customer_name, contract_name, contract_number, pg_name, year, rolling_12_months]

     - name: year
       title: 'Invoice Year'
       type: field_filter
       model: base_sales_intelligence_app_model
       explore: mn_cmpl_period_fact_dated
       default_value:
       field: mn_date_dim.year
       listens_to_filters: [customer_name, contract_name, contract_number, pg_name, year_month, rolling_12_months]

     - name: rolling_12_months
       title: 'Rolling 12 Months'
       type: field_filter
       model: base_sales_intelligence_app_model
       explore: mn_cmpl_period_fact_dated
       default_value:
       field: mn_cmpl_period_fact.rolling_12_months

  elements:
  - name: account_compliance_chart
    title: Compliance Trend
    type: looker_column
    model: base_sales_intelligence_app_model
    explore: mn_cmpl_period_fact_dated
    dimensions: [mn_cmpl_period_fact.date_period]
    measures: [mn_cmpl_period_fact.period_expected_sales, mn_cmpl_period_fact.period_actual_sales, mn_cmpl_period_fact.period_total_revenue_gap]
    filters:
    listen:
      date_frame_selection: mn_cmpl_period_fact.date_frame_selection
      customer_name: mn_customer_dim.customer_name
      contract_name: mn_contract_header_dim.contract_name
      contract_number: mn_contract_header_dim.contract_number
      pg_name: mn_product_group_dim.pg_name
      year_month: mn_date_dim.year_month
      year: mn_date_dim.year
      rolling_12_months: mn_cmpl_period_fact.rolling_12_months
    sorts: [mn_cmpl_period_fact.date_period]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_labels:
      mn_product_group_dim.pg_name: Price Program
      mn_cmpl_period_fact.compliance_percent: Compliance %
      mn_cmpl_period_fact.period_expected_sales: Expected Sales
      mn_cmpl_period_fact.period_actual_sales: Actual Sales
      mn_cmpl_period_fact.commit_tier: Committed Tier
      mn_date_dim.year: Year
      mn_date_dim.month_name: Month
    series_types: {}

  - name: account_compliance_table
    title: Compliance Data
    type: table
    model: base_sales_intelligence_app_model
    explore: mn_cmpl_period_fact_dated
    dimensions: [mn_contract_header_dim.contract_name, mn_contract_header_dim.contract_number,
      mn_product_group_dim.pg_name, mn_date_dim.year, mn_date_dim.month_name, mn_cmpl_period_fact.commit_tier,
      mn_cmpl_period_fact.attained_tier, mn_cmpl_period_fact.date_period]
    measures: [mn_cmpl_period_fact.period_expected_sales, mn_cmpl_period_fact.period_actual_sales,
      mn_cmpl_period_fact.compliance_percent, mn_cmpl_period_fact.period_total_revenue_gap]
    filters:
    listen:
      date_frame_selection: mn_cmpl_period_fact.date_frame_selection
      customer_name: mn_customer_dim.customer_name
      contract_name: mn_contract_header_dim.contract_name
      contract_number: mn_contract_header_dim.contract_number
      pg_name: mn_product_group_dim.pg_name
      year_month: mn_date_dim.year_month
      year: mn_date_dim.year
      rolling_12_months: mn_cmpl_period_fact.rolling_12_months
    sorts: [mn_cmpl_period_fact.date_period]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    series_labels:
      mn_product_group_dim.pg_name: Price Program
      mn_cmpl_period_fact.compliance_percent: Compliance %
      mn_cmpl_period_fact.period_expected_sales: Expected Sales
      mn_cmpl_period_fact.period_actual_sales: Actual Sales
      mn_cmpl_period_fact.commit_tier: Committed Tier
      mn_date_dim.year: Year
      mn_date_dim.month_name: Month
    hidden_fields: [mn_cmpl_period_fact.date_period]

  - name: account_compliance_kpi2
    title: Untitled Visualization
    type: single_value
    model: base_sales_intelligence_app_model
    explore: mn_cmpl_period_fact_dated
    measures: [mn_cmpl_period_fact.compliance_percent]
    dynamic_fields:
    filters:
      mn_cmpl_period_fact.date_frame_selection: Year
    listen:
      customer_name: mn_customer_dim.customer_name
      contract_name: mn_contract_header_dim.contract_name
      contract_number: mn_contract_header_dim.contract_number
      pg_name: mn_product_group_dim.pg_name
      year_month: mn_date_dim.year_month
      year: mn_date_dim.year
      rolling_12_months: mn_cmpl_period_fact.rolling_12_months
    sorts: []
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_labels:
    hidden_fields: []
    series_types: {}
    single_value_title: Overall Compliance %

  - name: account_compliance_kpi1
    title: Untitled Visualization
    type: single_value
    model: base_sales_intelligence_app_model
    explore: mn_cmpl_period_fact_dated
    measures: [mn_cmpl_period_fact.period_total_revenue_gap]
    dynamic_fields:
    filters:
    listen:
      customer_name: mn_customer_dim.customer_name
      contract_name: mn_contract_header_dim.contract_name
      contract_number: mn_contract_header_dim.contract_number
      pg_name: mn_product_group_dim.pg_name
      year_month: mn_date_dim.year_month
      year: mn_date_dim.year
      rolling_12_months: mn_cmpl_period_fact.rolling_12_months
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_labels:
      mn_product_group_dim.pg_name: Price Program
      mn_cmpl_period_fact.compliance_percent: Compliance %
      mn_cmpl_period_fact.period_expected_sales: Expected Sales
      mn_cmpl_period_fact.period_actual_sales: Actual Sales
      mn_cmpl_period_fact.commit_tier: Committed Tier
      mn_date_dim.year: Year
      mn_date_dim.month_name: Month
    hidden_fields: [mn_cmpl_period_fact.period_actual_sales, mn_cmpl_period_fact.period_expected_sales]
    series_types: {}
    single_value_title: Total Revenue Gap
    value_format: '[>=10000000]0.0,,"M";[>=10000]0.0,"K";0'
