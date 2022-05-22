# README

Github repo located at: https://github.com/JM-Sully/Inventory
This app requires an API key from Open Weather in order to run. To run locally, create a .env file and name your API key WEATHER_API_KEY. Example below:
        WEATHER_API_KEY=48fj3f7fd7d723725sddfs8sd7ak38d883n

## Setup on Replit

In order to run this applicaiton on Replit you will need to click 'fork repl' (create an account if you don't already have one) and copy and paste each of the below lines of code in 'Shell'.

1.  Install Bundler

        gem install bundler -v '~> 2.3'

2.  Install gems

        bundle install

3. Configure your datastore

        rake db:setup

4. Click 'Run' button 

5. Sometimes Replit will show a sad face in the iframe. If that happens, click on the 'open in new tab' icon in the top right hand corner and it *should* work.
