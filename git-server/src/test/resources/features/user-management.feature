Feature: User management

  Scenario: User adds an SSH key
    Given a user with username "jgmeligmeyling"
    When  the users adds an SSH key with name "macbook-pro" and contents:
      """
      ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDKc82LZQyszhOO4C2UGGVQ0/8ZNcDpGFIHXBMid/+BK9UM9ys9MfPZF/QZkx8M+bGdEebSutuMIWtV/nnKtnoibA1i7YUIscmJ6x372poOpa9ze4O0CuZN1oYN2PEUuLO04Ikxu37wpA9wmvgAj8GUF7xh9vcsjRFaommO0soVpHIgYmIdA2/HKX6Q5395C/SOKhxIEhaGCzfBaYl2PuRNE67nnKI5dWsDVRBHJBvVuwzFassk6TGetJ59j2QrCiZOWrWltNvwIc34fkJWJlLGlKo6eUhcXVKcmzc1WjT/p0gurb6JcB0FebsyWaacnVy/vT+kZQh6AC1Z9FZ3KBUR student1@student.tudelft.nl
      """
    Then  the key is added to the keystore

  Scenario: User adds an SSH key
    Given a user with username "jgmeligmeyling"
    And   the user has an SSH key in the key store
    When  the key is removed
    Then  the key is removed from the keystore

