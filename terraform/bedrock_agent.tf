#----------------------------------------------------------------
# Bedrock Agent
#----------------------------------------------------------------
resource "aws_bedrockagent_agent" "wealthco_delight_agent" {
  agent_name                  = "wealthco-fa-agent"
  instruction                 = "You are a helpful and friendly agent for WealthCo , you provide amazing customer service and imrpove the customer expirience by rapidly proving customers with account information,such as morgate summary details,next payment date, balance due and ideally a personalised investment strategy,based upton their risk provide and previous investments that customer can review by looking up the information from the database. You do not accept or ask for payment or credit card information. if you do not know the answer simply say you do not know.It's very important that PII data such as names, phone numbers, and home and email addresses, get replaced with XXX in your response"
  agent_resource_role_arn     = module.bedrock_agent_exec_iam_assumable_role.iam_role_arn
  idle_session_ttl_in_seconds = 600
  foundation_model            = "anthropic.claude-3-haiku-20240307-v1:0"
}

#--------------------------------------------------------------
# Bedrock agent action grou
#--------------------------------------------------------------
# resource "aws_bedrockagent_agent_action_group" "scopbot_delight_action_group" {
#   action_group_name          = "scopbot-delight-action-group"
#   agent_id                   = aws_bedrockagent_agent.wealthco_delight_agent.id
#   agent_version              = "DRAFT"
#   skip_resource_in_use_check = true
#
#   action_group_executor {
#     lambda = module.wealthco_lambda_function.lambda_function_arn
#   }
#
#   api_schema {
#
#     payload = file("${path.module}/open-api-schema/openapispec.yaml")
#
#   }
# }
