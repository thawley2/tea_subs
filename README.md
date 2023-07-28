# README
![the-republic-of-tea](https://github.com/thawley2/tea_subs/assets/120520954/221db96c-42dd-4ff8-8dd0-085799827e21)
# Tea Subs
## About
Tea subs is a RESTful API server application to allow users to subscribe, cancel and view all their tea subscriptions.
## Built with:
- Ruby - V3.1.1
- Rails - V7.0.6
## Endpoints
### Subscribe to a subscription
```
#request
post {{domain}}/api/v0/users/:user_id/subscriptions/:subscription_id

#response
{
    "data": {
        "message": "Successfully subscribed to #{subscription_name}"
    }
}
```
### Cancel a subscription
```
#request
patch {{domain}}/api/v0/users/:user_id/subscriptions/:subscription_id

#response
{
    "data": {
        "message": "Successfully cancelled #{subscription_name} subscription"
    }
}
```
### View all user subscriptions
```
#request
get {{domain}}/api/v0/users/:user_id/subscriptions

#response
{
    "data": [
        {
            "id": "1",
            "type": "subscription",
            "attributes": {
                "title": "Free Trial",
                "price": 30.72,
                "frequency": "Payment in advance",
                "status": "active",
                "teas": []
            }
        },
        {
            "id": "2",
            "type": "subscription",
            "attributes": {
                "title": "Premium",
                "price": 25.03,
                "frequency": "Payment in advance",
                "status": "cancelled",
                "teas": [
                    {
                        "name": "Lahijan"
                    },
                    {
                        "name": "Houttuynia"
                    }
                ]
            }
        },
        {
            "id": "3",
            "type": "subscription",
            "attributes": {
                "title": "Basic",
                "price": 34.61,
                "frequency": "Payment in advance",
                "status": "active",
                "teas": [
                    {
                        "name": "Biluochun"
                    },
                    {
                        "name": "Vietnamese"
                    },
                    {
                        "name": "Dill"
                    }
                ]
            }
        }
    ]
}
```
## Get a local copy of this repository
1. Clone this repository
```
git@github.com:thawley2/tea_subs.git
```
2. Navigate into cloned repository run the following commands in your terminal
  - Create database
    ```rails db:{create,migrate,seed}```
  - Install dependencies
    ```bundle install```
3. Run test suite to make sure everything was setup correctly
  - ```bundle exec rspec```
  - All tests should be passing
4. Start up local server to test endpoints, in your terminal run ```rails s```
  - Running the create database command also seeds the development database with fake information
  - In Postman (or whichever API platform you use to test requests/responses), try the endpoints designed above


## Created By:
- Thomas Hawley |[Github](https://github.com/thawley2)| |[LinkedIn](https://www.linkedin.com/in/thomas-c-hawley/)|



