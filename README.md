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

Where the `query_file` path is relative to the location of `config.yaml`. The query file can also contain placeholder variables that can be templated.

You can find an example in the [example_view](./example_view) folder.

## Authors

* Jan-Benedikt Jagusch <jan.jagusch@gmail.com>
