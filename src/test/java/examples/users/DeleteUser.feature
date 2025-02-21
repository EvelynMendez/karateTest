Feature: Delete an existing user
  # Define the feature name as "Delete an existing user"

  Background:
    # Define the background steps that will be executed before each scenario

    * url 'https://jsonplaceholder.typicode.com'
    # Set the base URL for the API requests

  Scenario: delete an existing user
    # Define a scenario to delete an existing user

    Given path 'users/1'
    # Set the path to 'users/1' to delete the user with ID 1

    When method delete
    # Perform a DELETE request

    Then status 200
    # Verify that the response status is 200

    And print 'User with id 1 deleted successfully'
