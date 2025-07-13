### View file for users
# # This is a simple example view file for data on users as a starting point for learning how to write LookML. 
###

# BUSINESS CASE: This view file correlates to the 'users' table, which contains one unique row for each user of the ecommerce website.

view: users { # A view with the name 'users'
  sql_table_name: `cloud-training-demos.thelook_ecommerce.users`;; # defines the table in the database that this view is based on. This table name is used in the FROM/JOIN clause that Looker will use in SQL commands to your database.

  ### Dimensions ###
  # A dimension is a non-aggregate field used for grouping/slicing data (such as identifiers, status, and date).
  ####

  dimension: id { # Creates a dimension named "id." You can name the dimension whatever you like.
    primary_key: yes # Identifies this dimension as the primary key (a dimension with a unique value for every row)
    type: number # Specifies the type of data in the dimension. The type affects rendering, filtering, sort order, suggestions, and more.
    sql: ${TABLE}.id ;; # Specifies the actual SQL that is used for the field when the query runs, notice the ${} substitution operator.
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: street_address {
    type: string
    sql: ${TABLE}.street_address ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}.traffic_source ;;
  }

  dimension_group: created_at { # Dimension groups create multiple dimensions with different time granularities, in a single declaration.
    type: time
    timeframes: [raw,time,date,week,month,quarter,year] # The different time grains to create dimensions for. They will be presented together in the Explore field-picker under one group label
    sql: ${TABLE}.created_at ;;
  }

  ####
  # Measures
  # Measures are fields that are aggregate calculations (such as sum, max, and min).
  ####

  measure: count { # Creates a measure with any name we like
    label: "# of Users" # Overrides this measures label in Looker's front end
    type: count # Defines the aggregation type (sum, count, count_distinct, etc)
    # Note that Count, unlike other measure types, doesn't require a SQL parameter
  }

}
