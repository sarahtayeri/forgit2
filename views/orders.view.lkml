view: orders {
  sql_table_name: demo_db.orders ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    datatype: datetime
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.first_name, users.last_name, users.id, order_items.count]
#     html:<a href="{{link}}">
#     {% if {{orders.count._value}} > 0 %}
#     <span style="font-weight: bold; background-color: #e0434b; font-color:#ffffff; margin: 0; border-radius: 5px; text-align:center;color: white ">{{ value }}</span>
#
#     {% else %} <span style="color:black; font-size:100%; text-align:center">{{value}}</span>
#     {% endif %} </a>;;
    html:<a href="{{link}}">
    {% if {{orders.count._value}} > 0 %}
    <div style="font-weight: bold; background-color: #e0434b; font-color:#ffffff; margin: 0; border-radius: 5px; text-align:center;color: white ">{{ value }}</div>

    {% else %} <div style="color:black; font-size:100%; text-align:center">{{value}}</div>
    {% endif %} </a>;;
  }





}
