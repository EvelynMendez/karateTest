Feature: Get Users
# Define the feature name as "Get Users"

Background:
# Define the background steps that will be executed before each scenario

  * url 'https://jsonplaceholder.typicode.com'
  # Set the base URL for the API requests

Scenario: get all users and show response
# Define a scenario to get all users and show the response

  Given path 'users'
  # Set the path to 'users'

  When method get
  # Perform a GET request

  Then status 200
  # Verify that the response status is 200

  And print response
  # Print the response

  * match response[*] == '#array'
  # Verify that the response is an array

  * match response[*].id contains "#number"
  # Verify that the id of each user in the response is a number

  * match response[*].username contains "#string"
  # Verify that the username of each user in the response is a string


