- dashboard: sales_performance
  title: Sales Performance
  layout: grid
  rows:
  - elements: [header_text1, header_text2]
    height: 50
  - elements: [ sales_perf_volume_kpi1, sales_perf_volume_kpi2,sales_perf_volume_kpi3,sales_perf_revenue_kpi1, sales_perf_revenue_kpi2,sales_perf_revenue_kpi3]
    height: 100
  - elements: [sales_perf_volume_chart, sales_perf_revenue_chart]
    height: 400
  - elements: [sales_perf_table]
    height: 400
  show_applied_filters: true
  auto_run:  true

  filters:
  - name: account
    title: 'Account'
    type: field_filter
    model: price_program_and_products
    explore: mn_combined_sale_fact
    default_value: Drug Aid Pharmacy,50 Plus Pharmacy
    field: mn_1shipto_customer_dim.customer_name
    listens_to_filters: [customer, contract_name, contract_number, sale_type, product_cat_name, sku, channel, invoice_year]

  - name: product_cat_name
    title: 'Product Category'
    type: field_filter
    model: price_program_and_products
    explore: mn_combined_sale_fact
    default_value:
    field: mn_category_dim.product_name
    listens_to_filters: [customer, contract_name, contract_number, sale_type, sku,account, channel, invoice_year]

  - name: sku
    title: 'SKU'
    type: field_filter
    model: price_program_and_products
    explore: mn_combined_sale_fact
    default_value:
    field: mn_product_dim.product_name
    listens_to_filters: [customer, contract_name, contract_number, sale_type, product_cat_name, account, channel, invoice_year]

  - name: contract_name
    title: 'Contract Name'
    type: field_filter
    model: price_program_and_products
    explore: mn_combined_sale_fact
    default_value:
    field: mn_contract_header_dim.contract_name
    listens_to_filters: [customer, contract_number, sale_type, product_cat_name, sku,account, channel, invoice_year]

  - name: contract_number
    title: 'Contract Number'
    type: field_filter
    model: price_program_and_products
    explore: mn_combined_sale_fact
    default_value:
    field: mn_contract_header_dim.contract_number
    listens_to_filters: [customer, contract_name, sale_type, product_cat_name, sku,account, channel, invoice_year]

  - name: customer
    title: 'Customer'
    type: field_filter
    model: price_program_and_products
    explore: mn_combined_sale_fact
    default_value:
    field: mn_customer_dim.customer_name
    listens_to_filters: [contract_name, contract_number, sale_type, product_cat_name, sku,account, channel, invoice_year]

  - name: channel
    title: 'channel'
    type: field_filter
    model: price_program_and_products
    explore: mn_combined_sale_fact
    default_value:
    field: mn_channel_customer_dim.customer_name
    listens_to_filters: [customer, contract_name, contract_number, sale_type, product_cat_name, sku,account, invoice_year]

  - name: sale_type
    title: 'Sale Type'
    type: field_filter
    model: price_program_and_products
    explore: mn_combined_sale_fact
    default_value: ''
    field: mn_combined_sale_fact.sale_type
    listens_to_filters: [customer, contract_name, contract_number, product_cat_name, sku,account, channel, invoice_year]

  - name: invoice_year
    title: 'Invoice Year'
    type: field_filter
    model: price_program_and_products
    explore: mn_combined_sale_fact
    default_value:
    field: mn_combined_sale_fact.invoice_year
    listens_to_filters: [customer, contract_name, contract_number, sale_type, product_cat_name, sku,account, channel]

  elements:
  - name: header_text1
    type: text
    title_text: Volume Growth

  - name: header_text2
    type: text
    title_text: Revenue Growth

  - name: sales_perf_volume_chart
    title: Volume
    type: looker_column
    model: price_program_and_products
    explore: mn_combined_sale_fact
    dimensions: [mn_combined_sale_fact.invoice_year]
    fill_fields: [mn_combined_sale_fact.invoice_year]
    measures: [mn_combined_sale_fact.volume]
    filters:
    listen:
      customer: mn_customer_dim.customer_name
      contract_name: mn_contract_header_dim.contract_name
      contract_number: mn_contract_header_dim.contract_number
      sale_type: mn_combined_sale_fact.sale_type
      product_cat_name: mn_category_dim.product_name
      sku: mn_product_dim.product_name
      account: mn_1shipto_customer_dim.customer_name
      channel: mn_channel_customer_dim.customer_name
      invoice_year: mn_combined_sale_fact.invoice_year
    sorts: [mn_combined_sale_fact.invoice_year desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    x_axis_reversed: true
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_labels:
      mn_product_dim.product_name: SKU
      mn_combined_sale_fact.invoice_year: Year
      mn_combined_sale_fact.invoice_month: Year Month
      mn_category_dim.product_name: Category
      mn_customer_dim.customer_name: Contracted Customer
      mn_billto_customer_dim.customer_name: Bill To Customer
      mn_1shipto_customer_dim.customer_name: Ship To Customer
      mn_channel_customer_dim.customer_name: Channel
    series_types: {}
    hidden_series: []
    y_axis_unpin: false



  - name: sales_perf_revenue_chart
    title: Revenue
    type: looker_column
    model: price_program_and_products
    explore: mn_combined_sale_fact
    dimensions: [mn_combined_sale_fact.invoice_year]
    fill_fields: [mn_combined_sale_fact.invoice_year]
    measures: [mn_combined_sale_fact.revenue]
    filters:
    listen:
      customer: mn_customer_dim.customer_name
      contract_name: mn_contract_header_dim.contract_name
      contract_number: mn_contract_header_dim.contract_number
      sale_type: mn_combined_sale_fact.sale_type
      product_cat_name: mn_category_dim.product_name
      sku: mn_product_dim.product_name
      account: mn_1shipto_customer_dim.customer_name
      channel: mn_channel_customer_dim.customer_name
      invoice_year: mn_combined_sale_fact.invoice_year
    sorts: [mn_combined_sale_fact.invoice_year desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_reversed: true
    x_axis_scale: ordinal
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
      mn_product_dim.product_name: SKU
      mn_combined_sale_fact.invoice_year: Year
      mn_combined_sale_fact.invoice_month: Year Month
      mn_category_dim.product_name: Category
      mn_customer_dim.customer_name: Contracted Customer
      mn_billto_customer_dim.customer_name: Bill To Customer
      mn_1shipto_customer_dim.customer_name: Ship To Customer
      mn_channel_customer_dim.customer_name: Channel
    series_types: {}
    hidden_series: []
    y_axis_unpin: false


  - name: sales_perf_table
    title: Sales Performance Details
    type: table
    model: price_program_and_products
    explore: mn_combined_sale_fact
    dimensions: [mn_category_dim.product_name, mn_product_dim.product_name, mn_customer_dim.customer_name,
      mn_billto_customer_dim.customer_name, mn_1shipto_customer_dim.customer_name, mn_contract_header_dim.contract_name,
      mn_channel_customer_dim.customer_name, mn_combined_sale_fact.invoice_year, mn_combined_sale_fact.sale_type]
    measures: [mn_combined_sale_fact.volume, mn_combined_sale_fact.revenue]
    filters:
    listen:
      customer: mn_customer_dim.customer_name
      contract_name: mn_contract_header_dim.contract_name
      contract_number: mn_contract_header_dim.contract_number
      sale_type: mn_combined_sale_fact.sale_type
      product_cat_name: mn_category_dim.product_name
      sku: mn_product_dim.product_name
      account: mn_1shipto_customer_dim.customer_name
      channel: mn_channel_customer_dim.customer_name
      invoice_year: mn_combined_sale_fact.invoice_year
    sorts: [mn_combined_sale_fact.revenue desc]
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
      mn_product_dim.product_name: SKU
      mn_combined_sale_fact.invoice_year: Year
      mn_combined_sale_fact.invoice_month: Year Month
      mn_category_dim.product_name: Category
      mn_customer_dim.customer_name: Contracted Customer
      mn_billto_customer_dim.customer_name: Bill To Customer
      mn_1shipto_customer_dim.customer_name: Ship To Customer
      mn_channel_customer_dim.customer_name: Channel


  - name: sales_perf_revenue_kpi1
    title: Untitled Visualization
    type: single_value
    model: price_program_and_products
    explore: mn_combined_sale_fact
    measures: [mn_combined_sale_fact.inv_revenue_ytd_year, mn_combined_sale_fact.inv_revenue_prior_ytd_year]
    dynamic_fields:
    - table_calculation: ytd_revenue_growth
      label: YTD  Revenue Growth
      expression: "(${mn_combined_sale_fact.inv_revenue_ytd_year} - ${mn_combined_sale_fact.inv_revenue_prior_ytd_year})/${mn_combined_sale_fact.inv_revenue_prior_ytd_year}"
      value_format:
      value_format_name: percent_0
    filters:
    listen:
      account: mn_1shipto_customer_dim.customer_name
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
    show_view_names: true
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
    series_types: {}
    hidden_series: []
    hidden_fields: [mn_combined_sale_fact.inv_revenue_ytd_year, mn_combined_sale_fact.inv_revenue_prior_ytd_year]
    single_value_title: Current vs Prior Year YTD Growth

  - name: sales_perf_volume_kpi1
    title: Untitled Visualization
    type: single_value
    model: price_program_and_products
    explore: mn_combined_sale_fact
    measures: [mn_combined_sale_fact.inv_qty_ytd_year, mn_combined_sale_fact.inv_qty_prior_ytd_year]
    dynamic_fields:
    - table_calculation: ytd_qty_growth
      label: YTD  Volume Growth
      expression: "(${mn_combined_sale_fact.inv_qty_ytd_year} - ${mn_combined_sale_fact.inv_qty_prior_ytd_year})/${mn_combined_sale_fact.inv_qty_prior_ytd_year}"
      value_format:
      value_format_name: percent_0
    listen:
      account: mn_1shipto_customer_dim.customer_name
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
    show_view_names: true
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
    series_types: {}
    hidden_series: []
    hidden_fields: [mn_combined_sale_fact.inv_qty_ytd_year, mn_combined_sale_fact.inv_qty_prior_ytd_year]
    single_value_title: Current vs Prior Year YTD Growth



  - name: sales_perf_volume_kpi2
    title: Untitled Visualization
    type: single_value
    model: price_program_and_products
    explore: mn_combined_sale_fact
    measures: [mn_combined_sale_fact.inv_qty_year1, mn_combined_sale_fact.inv_qty_year2]
    dynamic_fields:
    - table_calculation: ytd_revenue_growth
      label: Volume Growth
      expression: "(${mn_combined_sale_fact.inv_qty_year1} - ${mn_combined_sale_fact.inv_qty_year2})/${mn_combined_sale_fact.inv_qty_year2}"
      value_format:
      value_format_name: percent_0
    filters:
    listen:
      account: mn_1shipto_customer_dim.customer_name
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
    show_view_names: true
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
    series_types: {}
    hidden_series: []
    hidden_fields: [mn_combined_sale_fact.inv_qty_year1, mn_combined_sale_fact.inv_qty_year2]
    single_value_title: Prior Year Growth



  - name: sales_perf_revenue_kpi2
    title: Untitled Visualization
    type: single_value
    model: price_program_and_products
    explore: mn_combined_sale_fact
    measures: [mn_combined_sale_fact.inv_revenue_year1, mn_combined_sale_fact.inv_revenue_year2]
    dynamic_fields:
    - table_calculation: ytd_revenue_growth
      label: Revenue Growth
      expression: "(${mn_combined_sale_fact.inv_revenue_year1} - ${mn_combined_sale_fact.inv_revenue_year2})/${mn_combined_sale_fact.inv_revenue_year2}"
      value_format:
      value_format_name: percent_0
    filters:
    listen:
      account: mn_1shipto_customer_dim.customer_name
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
    show_view_names: true
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
    series_types: {}
    hidden_series: []
    hidden_fields: [mn_combined_sale_fact.inv_revenue_year1, mn_combined_sale_fact.inv_revenue_year2]
    single_value_title: Prior Year Growth




  - name: sales_perf_volume_kpi3
    title: Untitled Visualization
    type: single_value
    model: price_program_and_products
    explore: mn_combined_sale_fact
    measures: [mn_combined_sale_fact.inv_qty_year2, mn_combined_sale_fact.inv_qty_year3]
    dynamic_fields:
    - table_calculation: ytd_revenue_growth
      label: Volume Growth 2
      expression: "(${mn_combined_sale_fact.inv_qty_year2} - ${mn_combined_sale_fact.inv_qty_year3})/${mn_combined_sale_fact.inv_qty_year3}"
      value_format:
      value_format_name: percent_0
    filters:
    listen:
      account: mn_1shipto_customer_dim.customer_name
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
    show_view_names: true
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
    series_types: {}
    hidden_series: []
    hidden_fields: [mn_combined_sale_fact.inv_qty_year2, mn_combined_sale_fact.inv_qty_year3]
    single_value_title: Prior Year Growth



  - name: sales_perf_revenue_kpi3
    title: Untitled Visualization
    type: single_value
    model: price_program_and_products
    explore: mn_combined_sale_fact
    measures: [mn_combined_sale_fact.inv_revenue_year2, mn_combined_sale_fact.inv_revenue_year3]
    dynamic_fields:
    - table_calculation: ytd_revenue_growth
      label: Revenue Growth 2
      expression: "(${mn_combined_sale_fact.inv_revenue_year2} - ${mn_combined_sale_fact.inv_revenue_year3})/${mn_combined_sale_fact.inv_revenue_year3}"
      value_format:
      value_format_name: percent_0
    filters:
    listen:
      account: mn_1shipto_customer_dim.customer_name
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
    show_view_names: true
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
    series_types: {}
    hidden_series: []
    hidden_fields: [mn_combined_sale_fact.inv_revenue_year2, mn_combined_sale_fact.inv_revenue_year3]
    single_value_title: Prior Year Growth

