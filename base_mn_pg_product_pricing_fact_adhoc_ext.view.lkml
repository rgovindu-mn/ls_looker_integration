include: "base_mn_pg_product_pricing_fact.view.lkml"

  view: mn_pg_product_pricing_fact_adhoc_ext {
    extends: [mn_pg_product_pricing_fact]

    dimension: adj_high {
      label: "Tier1 Effective Adjust"
    }

    dimension: prc_high {
      label: "Tier1 Price"
    }

    dimension: adj_low {
      label: "Tier1 Adjustment Low"
    }


    dimension: eff_adj {
      label: "Tier1 Adjustment"
    }

    dimension: freight_code {
      label: "Tier1 Freight Code"
    }


    dimension: tier_volume {
      label: "Tier1 Volume"
    }
    dimension: surcharge {
      label: "Tier1 Surcharge"
    }

    dimension: payment_code {
      label: "Tier1 Payment Code"
    }

    dimension: handling {
      label: "Tier1 Handling"
    }
    dimension: tier_idx {
      hidden:  yes
    }


}
