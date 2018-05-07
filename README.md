# Postal codes in different formats

Postalcodes for (currently only) Germany in XML, JSON and CSV format. 

## Countries

- Germany (16481 postal codes)

## Sample
```
  # json
  {
    "country_code":"DE",
    "zipcode":"55252",
    "place":"Mainz-Kastel",
    "state":"Hessen",
    "state_code":"HE",
    "province":"Regierungsbezirk Darmstadt",
    "province_code":"064",
    "community":"Wiesbaden,
     Landeshauptstadt",
     "community_code":"06414",
    "latitude":"50.0102",
    "longitude":"8.2844"
  }

  # xml
  <object>
    <country-code>DE</country-code>
    <zipcode>01945</zipcode>
    <place>Grünewald</place>
    <state>Brandenburg</state>
    <state-code>BB</state-code>
    <province></province>
    <province-code>00</province-code>
    <community>Landkreis Oberspreewald-Lausitz</community>
    <community-code>12066</community-code>
    <latitude>51.4</latitude>
    <longitude>14</longitude>
  </object>


  # csv
  country_code,zipcode,place,state,state_code,province,province_code,community,community_code,latitude,longitude
  DE,55246,Mainz-Kostheim,Hessen,HE,Regierungsbezirk Darmstadt,064,"Wiesbaden, Landeshauptstadt",06414,50.0051,8.3134

```

## License

- Original creator: Data comes from http://www.geonames.org/
- Modifications: Transformed dataset into JSON, XML, CSV

- Type: This work is licensed under a Creative Commons Attribution 4.0 License. https://creativecommons.org/licenses/by/4.0/ 
