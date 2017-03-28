- dashboard: sales_performance
  title: Sales Performance
  layout: grid
  rows:
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
    default_value:
    field: mn_customer_dim.customer_name
    listens_to_filters: [product_name, contract_number, contract_name, invoice_year, invoice_month]

  - name: product_name
    title: 'Product Name'
    type: field_filter
    model: price_program_and_products
    explore: mn_combined_sale_fact
    default_value:
    field: mn_product_dim.product_name
    listens_to_filters: [account, contract_number, contract_name, invoice_year, invoice_month]

  - name: contract_name
    title: 'Contract Name'
    type: field_filter
    model: price_program_and_products
    explore: mn_combined_sale_fact
    default_value: 'Adv Specialty Hosp - TB v1'
    field: mn_contract_header_dim.contract_name
    listens_to_filters: [product_name, account, contract_number, invoice_year, invoice_month]

  - name: contract_number
    title: 'Contract Number'
    type: field_filter
    model: price_program_and_products
    explore: mn_combined_sale_fact
    default_value:
    field: mn_contract_header_dim.contract_number
    listens_to_filters: [product_name, account, contract_name, invoice_year, invoice_month]

  - name: invoice_year
    title: 'Invoice Year'
    type: field_filter
    model: price_program_and_products
    explore: mn_combined_sale_fact
    default_value: ''
    field: mn_combined_sale_fact.invoice_year
    listens_to_filters: [product_name, account, contract_number, contract_name, invoice_month]

  - name: invoice_month
    title: 'Invoice Month'
    type: field_filter
    model: price_program_and_products
    explore: mn_combined_sale_fact
    default_value: ''
    field: mn_combined_sale_fact.invoice_month
    listens_to_filters: [product_name, account, contract_number, contract_name, invoice_year]

  - name: rolling_12_months
    title: 'Rolling 12 Months'
    type: field_filter
    model: price_program_and_products
    explore: mn_combined_sale_fact
    default_value: 'Yes'
    field: mn_combined_sale_fact.rolling_12_months

  elements:
  - name: sales_perf_volume_chart
    title: Volume
    type: looker_column
    model: price_program_and_products
    explore: mn_combined_sale_fact
    dimensions: [mn_combined_sale_fact.invoice_year]
    fill_fields: [mn_combined_sale_fact.invoice_year]
    measures: [mn_combined_sale_fact.volume]
    filters:
      mn_customer_dim.customer_name: ''
      mn_channel_customer_dim.customer_name: ''
      mn_contract_header_dim.contract_name: Adv Specialty Hosp - TB v1
      mn_contract_header_dim.contract_number: ''
      mn_combined_sale_fact.sale_type: ''
      mn_category_dim.product_name: ''
      mn_product_dim.product_name: ''
      mn_1shipto_customer_dim.customer_name: ''
    sorts: [mn_combined_sale_fact.invoice_year desc]
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
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
      mn_customer_dim.customer_name: ''
      mn_channel_customer_dim.customer_name: ''
      mn_contract_header_dim.contract_name: Adv Specialty Hosp - TB v1
      mn_contract_header_dim.contract_number: ''
      mn_combined_sale_fact.sale_type: ''
      mn_category_dim.product_name: ''
      mn_product_dim.product_name: ''
      mn_1shipto_customer_dim.customer_name: ''
    sorts: [mn_combined_sale_fact.invoice_year desc]
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
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
      mn_customer_dim.customer_name: ''
      mn_channel_customer_dim.customer_name: ''
      mn_contract_header_dim.contract_name: Adv Specialty Hosp - TB v1
      mn_contract_header_dim.contract_number: ''
      mn_combined_sale_fact.rolling_12_months: ''
      mn_combined_sale_fact.sale_type: ''
      mn_category_dim.product_name: ''
      mn_product_dim.product_name: ''
      mn_1shipto_customer_dim.customer_name: ''
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
