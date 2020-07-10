require 'json'



def lambda_handler(event:, context:)
  result = "howdy howdy"
  { statusCode: 200, body: JSON.generate(result) }
end


