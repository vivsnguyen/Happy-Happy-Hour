# Happy-Happy-Hour
Try it out here: https://happyhappy-hour.herokuapp.com/

DeveloperWeek2020 Hackathon - using TomTom API to prevent food waste

https://devpost.com/software/happy-happy-hour-74ypbj

# <img src="https://github.com/vivsnguyen/Happy-Happy-Hour/blob/master/images/original.png" width="100%" alt="Happy Happy Hour">

Happy Happy Hour is just like a normal happy hour, but with the added benefit of reducing food waste from local businesses! Businesses can post a date, time, location, and deal for what would normally go to waste (ex. not-as-fresh bagels are 50% off), and users can enjoy saving money and the planet.

## Contents
* [Tech Stack](#tech-stack)
* [Features](#features)
* [Future Features](#future)
* [Installation](#installation)

## <a name="tech-stack"></a>Technologies
* Python
* Flask
* Werkzeug
* PostgreSQL
* SQLAlchemy
* HTML
* Jinja
* CSS
* Bootstrap
* JavaScript
* jQuery
* AJAX
* TomTom API
* TomTom Maps SDK


## <a name="features"></a>Features

#### Restaurant dashboard

![alt text](https://github.com/vivsnguyen/Happy-Happy-Hour/blob/master/images/user.png "Restaurant dashboard")

#### Restaurant offers page

![alt text](https://github.com/vivsnguyen/Happy-Happy-Hour/blob/master/images/offers.png "Restaurant offers page")

## <a name="installation"></a>Installation
To run Happy Happy Hour on your own machine:

Clone or fork this repo:
```
https://github.com/vivsnguyen/Happy-Happy-Hour.git
```

Create and activate a virtual environment inside your Playlistify directory:
```
virtualenv env
source env/bin/activate
```

Install the dependencies:
```
pip install -r requirements.txt
```

Set up the database:

```
createdb restaurants
python3 model.py
```

Run the app:

```
python3.6 server.py
```

You can now navigate to 'localhost:5000/' to access Happy Happy Hour.
