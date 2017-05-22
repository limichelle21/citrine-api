# README


SI-Unit Conversion Web Service

+ Ruby 2.3.1
+ Rails 5.1.1
+ Development: sqlite3
+ Production: postgresql

This web service takes a string of units multiplied and/or divided, and converts these units into their corresponding SI units along with a multiplication factor that can be used to convert the original units into the SI units. 

The service will return a JSON object.

Input units and their corresponding SI units have been seeded into the database. 


####Using this Service:####

Navigate to:
<https://citrine-api.herokuapp.com/units/si>


Available | Input Units
----- | ------ 
minute | min 
hour | h 
day | d 
degree | ° | ' 
second | "
hectare | ha
litre | L
tonne | t


Append your unit search query to the URL. Equations are acceptable.

ex: "(degree*(litre/minute))"

<https://citrine-api.herokuapp.com/units/si?units=(degree*(litre/minute))>

The returned JSON object will return the `unit_name` of the converted SI units and a `multiplication_factor` used to convert the original input units into SI units. 

