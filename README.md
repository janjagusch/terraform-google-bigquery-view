# terraform-google-bigquery-view

A Terraform module for creating BigQuery views.

## Usage

### View Config

Views are defined in `config.yaml` files:

```yaml
dataset_id: my_dataset
table_id: my_view
query: SELECT * FROM my_table;
description: My example view
```

Instead of writing the `query` directly, you can also reference to a `query_file`:

```yaml
dataset_id: my_dataset
table_id: my_view
query_file: ./query.sql
description: My example view
```

Where the `query_file` path is relative to the location of `config.yaml`.

You can find an example in the [example_view](./example_view) folder.

### Accessing Module

In your `main.tf`:

```
module "bigquery-view" {
  source  = "janjagusch/bigquery-view/google"
  version = "0.1.0"

  config_file = "./example_view/config.yaml"
}
```

## Authors

* Jan-Benedikt Jagusch <jan.jagusch@gmail.com>
