- dashboard: si_account_comparison
  title: Account Comparison
  layout: grid
  rows:
  - elements: [account_price_chart, account_price_scatter]
    height: 400
  - elements: [product_chart]
    height: 400
  show_applied_filters: true
  auto_run:  true

  filters:
  - name: account
    title: 'Account'
    type: field_filter
    model: base_sales_intelligence_app_model
    explore: mn_combined_sale_fact
    default_value: Bryn Mawr Clinic,Paoli Clinic,Paoli Dialysis Center,Pilgrim Group
    field: mn_customer_dim.customer_name
    listens_to_filters: [product, product_cat_name, invoice_year, invoice_month. sale_type]

  - name: product_cat_name
    title: 'Product Category'
    type: field_filter
    model: base_sales_intelligence_app_model
    explore: mn_combined_sale_fact
    default_value: Apollo
    field: mn_category_dim.product_name
    listens_to_filters: [account, product, invoice_year, invoice_month. sale_type]

  - name: product
    title: 'Product'
    type: field_filter
    model: base_sales_intelligence_app_model
    explore: mn_combined_sale_fact
    default_value:
    field: mn_product_dim.product_name
    listens_to_filters: [account,  product_cat_name,invoice_year, invoice_month. sale_type]

  - name: invoice_year
    title: 'Invoice Year'
    type: field_filter
    model: base_sales_intelligence_app_model
    explore: mn_combined_sale_fact
    default_value:
    field: mn_combined_sale_fact.invoice_year
    listens_to_filters:  [account,  product_cat_name, product, invoice_month. sale_type]

  - name: invoice_month
    title: 'Invoice Year Month'
    type: field_filter
    model: base_sales_intelligence_app_model
    explore: mn_combined_sale_fact
    default_value:
    field: mn_combined_sale_fact.invoice_month
    listens_to_filters: [account,  product_cat_name, product, invoice_year, sale_type]

  - name: rolling_12_months
    title: 'Rolling 12 Months'
    type: field_filter
    model: base_sales_intelligence_app_model
    explore: mn_combined_sale_fact
    default_value:
    field: mn_combined_sale_fact.rolling_12_months

  - name: sale_type
    title: 'Sale Type'
    type: field_filter
    model: base_sales_intelligence_app_model
    explore: mn_combined_sale_fact
    default_value: ''
    field: mn_combined_sale_fact.sale_type
    listens_to_filters: [account, product,  product_cat_name, invoice_month, invoice_year]

  elements:
  - name: product_chart
    title: Product and Pricing Details
    type: table
    model: base_sales_intelligence_app_model
    explore: mn_combined_sale_fact
    dimensions: [mn_customer_dim.customer_name, mn_category_dim.product_name, mn_product_dim.product_name]
    measures: [mn_combined_sale_fact.volume, mn_combined_sale_fact.revenue, mn_combined_sale_fact.oninvoice_rebate_percent,
      mn_combined_sale_fact.net_rebate_percent, mn_combined_sale_fact.total_rebate_percent , mn_combined_sale_fact.price, mn_combined_sale_fact.net_price]
    filters:
    listen:
      account: mn_customer_dim.customer_name
      invoice_month: mn_combined_sale_fact.invoice_month
      invoice_year: mn_combined_sale_fact.invoice_year
      rolling_12_months: mn_combined_sale_fact.rolling_12_months
      sale_type: mn_combined_sale_fact.sale_type
      product_cat_name: mn_category_dim.product_name
      product: mn_product_dim.product_name
    sorts: [mn_category_dim.product_name desc]
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
      mn_product_dim.product_name: Product
      mn_combined_sale_fact.invoice_year: Year
      mn_combined_sale_fact.invoice_month: Year Month
      mn_category_dim.product_name: Category
      mn_customer_dim.customer_name: Account

  - name: account_price_scatter
    title: Account Rebate Comparison
    type: looker_column
    model: base_sales_intelligence_app_model
    explore: mn_combined_sale_fact
    dimensions: [mn_customer_dim.customer_name]
    measures: [mn_combined_sale_fact.revenue, mn_combined_sale_fact.oninvoice_rebate_percent,
      mn_combined_sale_fact.net_rebate_percent]
    filters:
    listen:
      account: mn_customer_dim.customer_name
      invoice_month: mn_combined_sale_fact.invoice_month
      invoice_year: mn_combined_sale_fact.invoice_year
      rolling_12_months: mn_combined_sale_fact.rolling_12_months
      sale_type: mn_combined_sale_fact.sale_type
      product_cat_name: mn_category_dim.product_name
      product: mn_product_dim.product_name
    sorts: [mn_customer_dim.customer_name]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: normal
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
    show_null_labels: true
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: false
    point_style: circle
    font_size: '12'
    custom_color_enabled: false
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
    show_legend: true
    quantize_map_value_colors: false
    value_labels: legend
    label_type: labPer
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_labels:
    mn_product_dim.product_name: Product
    mn_combined_sale_fact.invoice_year: Year
    mn_combined_sale_fact.invoice_month: Year Month
    mn_category_dim.product_name: Category
    mn_customer_dim.customer_name: Account
    mn_billto_customer_dim.customer_name: Bill To Customer
    mn_1shipto_customer_dim.customer_name: Ship To Customer
    mn_channel_customer_dim.customer_name: Channel
    series_types: {}
    swap_axes: false
    hidden_fields: [mn_combined_sale_fact.revenue]
    hide_legend: false
    y_axis_unpin: false
    hidden_series: []
    y_axis_reversed: false

  - name: account_price_chart
    title: Account Revenue Comparison
    type: looker_pie
    model: base_sales_intelligence_app_model
    explore: mn_combined_sale_fact
    dimensions: [mn_customer_dim.customer_name]
    measures: [mn_combined_sale_fact.revenue]
    dynamic_fields:
    filters:
    listen:
      account: mn_customer_dim.customer_name
      invoice_month: mn_combined_sale_fact.invoice_month
      invoice_year: mn_combined_sale_fact.invoice_year
      rolling_12_months: mn_combined_sale_fact.rolling_12_months
      sale_type: mn_combined_sale_fact.sale_type
      product_cat_name: mn_category_dim.product_name
      product: mn_product_dim.product_name
    sorts: [mn_combined_sale_fact.revenue desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    stacking: normal
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
    show_null_labels: true
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: false
    point_style: circle
    font_size: '12'
    custom_color_enabled: false
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
    show_legend: true
    quantize_map_value_colors: false
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_types: {}
    swap_axes: false
    hidden_fields: []
    hide_legend: false
    y_axis_unpin: false
    hidden_series: []
    y_axis_reversed: false
    limit_displayed_rows_values:
    show_hide: hide
    first_last: first
    num_rows: 0
