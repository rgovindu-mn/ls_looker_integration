- dashboard: si_app_contract_and_products
  title: Contract and Products
  layout: grid
  rows:
  - elements: [contracts_expire_30_days, contract_revenue_at_risk]
    height: 100
  - elements: [contract_header]
    height: 400
  - elements: [price_program_and_prices]
    height: 400
  show_applied_filters: true
  auto_run:  true

  filters:
   - name: customer_name
     title: 'Account'
     type: field_filter
     model: base_sales_intelligence_app_model
     explore: mn_contract_header_dim
     default_value:
     field: mn_customer_dim.customer_name
     listens_to_filters: [product_name, product_group_name, srep_full_name, contract_number, contract_name]

   - name: contract_name
     title: 'Contract Name'
     type: field_filter
     model: base_sales_intelligence_app_model
     explore: mn_contract_header_dim
     default_value:
     field: mn_contract_header_dim.contract_name
     listens_to_filters: [product_name, product_group_name, srep_full_name, contract_number, customer_name]

   - name: contract_number
     title: 'Contract Number'
     type: field_filter
     model: base_sales_intelligence_app_model
     explore: mn_contract_header_dim
     default_value:
     field: mn_contract_header_dim.contract_number
     listens_to_filters: [product_name, product_group_name, srep_full_name, contract_name, customer_name]

   - name: days_to_expire
     title: 'Days To Expire'
     type: field_filter
     model: base_sales_intelligence_app_model
     explore: mn_contract_header_dim
     default_value: "[1,30]"
     field: mn_contract_header_dim.days_to_expire

   - name: srep_full_name
     title: 'Sales Rep'
     type: field_filter
     model: base_sales_intelligence_app_model
     explore: mn_contract_header_dim
     default_value:
     field: mn_contract_srep_dim.full_name
     listens_to_filters: [product_name, product_group_name, contract_number, contract_name, customer_name]

   - name: product_group_name
     title: 'Price Program'
     type: field_filter
     model: base_sales_intelligence_app_model
     explore: mn_pg_product_pricing_fact
     default_value:
     field: mn_product_group_dim.pg_name
     listens_to_filters: [product_name, srep_full_name, contract_number, contract_name, customer_name]

   - name: product_name
     title: 'Product Name'
     type: field_filter
     model: base_sales_intelligence_app_model
     explore: mn_pg_product_pricing_fact
     default_value:
     field: mn_product_dim.product_name
     listens_to_filters: [ product_group_name, srep_full_name, contract_number, contract_name, customer_name]

  elements:
    - name: contracts_expire_30_days
      title: Contracts Expiring in 30 Days
      type: single_value
      model: base_sales_intelligence_app_model
      explore: mn_contract_header_dim
      measures: [mn_contract_header_dim.count]
      filters:
        mn_contract_header_dim.days_to_expire: "[1, 30]"
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
      single_value_title: Contracts Expiring in 30 Days

    - name: contract_revenue_at_risk
      title: Revenue at risk
      type: single_value
      model: base_sales_intelligence_app_model
      explore: mn_contract_header_dim
      measures: [mn_contract_header_dim.contract_value]
      filters:
        mn_contract_header_dim.days_to_expire: "[1, 30]"
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
      single_value_title: Revenue At Risk

    - name: contract_header
      title: Contracts
      type: table
      model: base_sales_intelligence_app_model
      explore: mn_pg_product_pricing_fact
      dimensions: [mn_customer_dim.customer_name, mn_contract_header_dim.contract_name,
        mn_contract_header_dim.contract_number, mn_contract_header_dim.eff_start_date, mn_contract_header_dim.eff_end_date,
        mn_contract_header_dim.days_to_expire, mn_contract_author_dim.full_name, mn_contract_srep_dim.full_name,
        mn_contract_header_dim.value, mn_ctrt_type_dim.ctrt_type_name]
      filters:
      listen:
        customer_name: mn_customer_dim.customer_name
        contract_number: mn_contract_header_dim.contract_number
        contract_name: mn_contract_header_dim.contract_number
        days_to_expire: mn_contract_header_dim.days_to_expire
        srep_full_name: mn_contract_srep_dim.full_name
        product_group_name: mn_product_group_dim.pg_name
        product_name: mn_product_dim.product_name

      sorts: [mn_ctrt_type_dim.ctrt_type_name desc]
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
        mn_customer_dim.customer_name: Account
        mn_contract_header_dim.contract_name: Contract Name
        mn_contract_header_dim.contract_number: Contract Number
        mn_contract_header_dim.eff_end_date: End Date
        mn_contract_header_dim.eff_start_date: Start Date
        mn_contract_header_dim.days_to_expire: Days To Expire
        mn_contract_author_dim.full_name: Author
        mn_contract_srep_dim.full_name: Sales Rep
        mn_ctrt_type_dim.ctrt_type_name: Type
        mn_contract_header_dim.value: Revenue at Risk

    - name: price_program_and_prices
      title: Products Sold
      type: table
      model: base_sales_intelligence_app_model
      explore: mn_pg_product_pricing_fact
      dimensions: [mn_product_dim.product_name, mn_contract_header_dim.contract_name,
        mn_product_group_dim.pg_name, mn_pg_product_pricing_fact.start_date, mn_pg_product_pricing_fact.end_date,
        mn_pg_product_pricing_fact.tier_idx, mn_pg_product_pricing_fact.prc_high]
      filters:
      listen:
        customer_name: mn_customer_dim.customer_name
        contract_number: mn_contract_header_dim.contract_number
        contract_name: mn_contract_header_dim.contract_number
        days_to_expire: mn_contract_header_dim.days_to_expire
        srep_full_name: mn_contract_srep_dim.full_name
        product_group_name: mn_product_group_dim.pg_name
        product_name: mn_product_dim.product_name
      sorts: [mn_pg_product_pricing_fact.start_date desc]
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
        mn_customer_dim.customer_name: Account
        mn_contract_header_dim.contract_name: Contract Name
        mn_contract_header_dim.contract_number: Contract Number
        mn_contract_header_dim.eff_end_date: Start Date
        mn_contract_header_dim.eff_start_date: End Date
        mn_contract_header_dim.days_to_expire: Days To Expire
        mn_contract_owner_dim.full_name: Owner
        mn_contract_srep_dim.full_name: Sales Rep
        mn_ctrt_type_dim.ctrt_type_name: Type
        mn_contract_header_dim.value: Revenue at Risk
        mn_product_dim.sku: Product
        mn_product_group_dim.pg_name: Pricing Program
        mn_pg_product_pricing_fact.start_date: Start date
        mn_pg_product_pricing_fact.end_date: End Date
        mn_pg_product_pricing_fact.tier_idx: Price Tier
        mn_pg_product_pricing_fact.prc_high: Price
