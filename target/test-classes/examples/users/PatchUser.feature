Feature: Modify an existing user
  # Define the feature name as "Modify an existing user"

  Background:
    # Define the background steps that will be executed before each scenario

    * url 'https://jsonplaceholder.typicode.com'
    # Set the base URL for the API requests

  Scenario: modify an existing user
    # Define a scenario to modify an existing user

    * def updatedUser =
      """
      {
        "name": "Bryan Graham House",
        "username": "bryanhouse",
        "email": "bryangrahamhouse@user.com",
        "address": {
          "street": "King Street",
          "suite": "Apt. 456",
          "city": "Kairos City",
          "zipcode": "98765-4321"
        }
      }
      """
      # Define the updated user object with the necessary details

    Given path 'users/1'
    # Set the path to 'users/1' to modify the user with ID 1

    And request updatedUser
    # Set the request body to the updated user object

    When method patch
    # Perform a PATCH request

    Then status 200
    # Verify that the response status is 200

    And print response
    # Print the response