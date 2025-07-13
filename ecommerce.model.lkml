### Basic ecommmerce model file ###
# This is a simple example model file as a starting point for learning how to write LookML. 
###

connection: "default_bigquery_connection"

label: "Cymbal Ecommerce" # Set label to easily identify this grouping of Explores in the main Explore list in the Looker menu

include: "/order_details/views/*.view.lkml" # The '*' wildcard was used here to include all view files in this folder.

### Basic Explore definition ###
# ## Business case for this example.
# # You have a table of sales records named order_items, which includes a column for user_id and additional data 
# # on which items or products were included in the sales order. You also have a table of user information named 
# # users, which includes an id column for the user and additional information about the user such as demographic data.
# # Your analysts want to write queries and create visualizations about sales, including information
# # about the users who placed orders and which specific products were ordered by which users.
####


