- dashboard: for_lookml
  title: for lookml
  layout: newspaper
  elements:
  - title: New Tile
    name: New Tile
    model: forgit2
    explore: order_items
    type: table
    fields: [order_items.id, order_items.order_id, order_items.count]
    sorts: [order_items.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    row: 0
    col: 0
    width: 8
    height: 6
