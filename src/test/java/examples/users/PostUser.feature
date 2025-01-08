Feature: Create a new user
  # Define the feature name as "Create a new user"

  Background:
    # Define the background steps that will be executed before each scenario

    * url 'https://jsonplaceholder.typicode.com'
    # Set the base URL for the API requests

  Scenario: create a new user
    # Define a scenario to create a new user

    * def user =
      """
      {
        "name": "Test User",
        "username": "testuser",
        "email": "test@user.com",
        "address": {
          "street": "Has No Name",
          "suite": "Apt. 123",
          "city": "Electri",
          "zipcode": "54321-6789"
        }
      }
      """
      # Define the user object with the necessary details

    Given path 'users'
    # Set the path to 'users'

    And request user
    # Set the request body to the user object

    When method post
    # Perform a POST request

    Then status 201
    # Verify that the response status is 201

    And print response
    # Print the response