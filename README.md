#Intro to Android Development - CSSE 490#
##Rose-Hulman Institute of Technology##
##Dr. Fisher##

The following is the JSON API reference for myfortune.heroku.com

# Getting fortunes by posting data #

##Getting a specific fortune##
###URL: myfortune.heroku.com/fortune/###
The JSON object should be posted in 'data' as follows:

    data => 
    {
        "id": "1"
    }

and will return a JSON object that looks like this:

__Success__

    {
        "result": "success", 
        "fortune": "A neat fortune."
    }

__Failure__

    {
        "result": "fail"
    }

##Getting a __random__ fortune##
###URL: myfortune.heroku.com/fortune/###
The JSON object should be posted in 'data' as follows:

    data => 
    {
        "random": "true"
    }

and will return a JSON object that looks like this:

__Success__

    {
        "result": "success", 
        "fortune": "A neat random fortune."
    }

__Failure__

    {
        "result": "fail"
    }
    
# Getting fortunes by URL #

##Getting the number of fortunes in the system##
###URL: myfortune.heroku.com/fortunes/###
Will return a JSON object that looks like this:

__Success__

    {
        "result": "success", 
        "count": 30
    }

__Failure__

    {
        "result": "fail"
    }

##Getting a specific fortune##
###URL: myfortune.heroku.com/fortune/:id/###
Where :id is the integer id of the fortune you want
Will return a JSON object that looks like this:

__Success__

    {
        "result": "success", 
        "fortune": "A neat fortune."
    }

__Failure__

    {
        "result": "fail"
    }

##Getting a __random__ fortune##
###URL: myfortune.heroku.com/fortune/random/###
Will return a JSON object that looks like this:

__Success__

    {
        "result": "success", 
        "fortune": "A neat random fortune."
    }

__Failure__

    {
        "result": "fail"
    }