resource "azurerm_web_application_firewall_policy" "jssi-waf" {

  name = var.name

  resource_group_name = var.resource_group_name

  location = var.location

  custom_rules {

    name = "AllowOnlyFromFrontDoor"

    priority = 10

    rule_type = "MatchRule"

    action = "Block"

    match_conditions {

      match_variables {

        variable_name = "RequestHeaders"

        selector = "X-Azure-FDID"

      }

      operator = "Equal"

      negation_condition = true

      #transforms                    = ["Lowercase"]

      match_values = ["692cb959-ad24-47de-9d61-4d47ac7f3103"]

    }

  }

  policy_settings {

    enabled = true

    mode = "Prevention"

    request_body_check = true

    file_upload_limit_in_mb = 100

    max_request_body_size_in_kb = 128

  }

  managed_rules {

    managed_rule_set {

      type = "OWASP"

      version = "3.2"

    }

    managed_rule_set {

      type = "Microsoft_BotManagerRuleSet"

      version = "1.0"

    }

  }

}