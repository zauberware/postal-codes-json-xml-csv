# Postal Codes in JSON, XML and CSV format

**Postal codes/ zipcodes with geo data from geonames.org converted to JSON, XML and JSON.**

Your search for postal-codes and geo data ends here 🎉🎉 This repository offers a comprehensive list of postal codes from around the globe in JSON, XML, and CSV formats. Ideal for applications that need simple postal code verification, data analysis, or any project that benefits from geolocation data, this repository simplifies the integration of postal code data across different software environments. Access this universal dataset today to enhance the geographical functionality of your projects with ease.

## Countries (number of postal codes)
Last update: 2024-06-18

- DE (16477) - Germany
- AT (18957) - Austria
- CH (4521) - Switzerland
- LI (13) - Liechtenstein
- LU (4519) - Luxembourg

- AD (7) - Andorra
- AR (20260) - Argentina
- AS (1) - American Samoa
- AU (16873) - Australia
- AX (37) - Åland Islands
- AZ (1186) - Azerbaijan
- BD (1349) - Bangladesh
- BE (2781) - Belgium
- BG (5304) - Bulgaria
- BM (112) - Bermuda
- BR (5525) - Brazil
- BY (3133) - Belarus
- CA (1655) - Canada
- CL (346) - Chile
- CN (2352) - China
- CO (3681) - Colombia
- CR (473) - Costa Rica
- CY (1127) - Cyprus
- CZ (15507) - Czech Republic
- DK (1159) - Denmark
- DO (544) - Dominican Republic
- DZ (15951) - Algeria
- EC (1225) - Ecuador
- EE (5398) - Estonia
- ES (37867) - Spain
- FI (3576) - Finland
- FM (4) - Federated States of Micronesia
- FO (130) - Faroe Islands
- FR (51677) - France
- GB (27450) - United Kingdom
- GF (77) - French Guiana
- GG (14) - Guernsey
- GL (33) - Greenland
- GP (105) - Guadeloupe
- GT (548) - Guatemala
- GU (21) - Guam
- HR (6774) - Croatia
- HT (236) - Haiti
- HU (3571) - Hungary
- IE (139) - Ireland
- IM (87) - Isle of Man
- IN (155570) - India
- IS (147) - Iceland
- IT (18415) - Italy
- JE (5) - Jersey
- JP (146883) - Japan
- KR (35583) - South Korea
- LK (1837) - Sri Lanka
- LT (21870) - Lithuania
- LV (6101) - Latvia
- MA (1325) - Morocco
- MC (29) - Monaco
- MD (1753) - Moldova
- MH (2) - Marshall Islands
- MK (220) - North Macedonia
- MP (3) - Northern Mariana Islands
- MQ (100) - Martinique
- MT (73) - Malta
- MW (491) - Malawi
- MX (144655) - Mexico
- MY (2818) - Malaysia
- NC (52) - New Caledonia
- NL (4334) - Netherlands
- NO (5132) - Norway
- NZ (1738) - New Zealand
- PA (729) - Panama
- PE (96943) - Peru
- PF (207) - French Polynesia
- PH (2317) - Philippines
- PK (2563) - Pakistan
- PL (72900) - Poland
- PM (2) - Saint Pierre and Miquelon
- PR (177) - Puerto Rico
- PT (206942) - Portugal
- PW (1) - Palau
- RE (152) - Réunion
- RO (37915) - Romania
- RS (1155) - Serbia
- RU (43538) - Russia
- SE (18815) - Sweden
- SG (121154) - Singapore
- SI (556) - Slovenia
- SJ (8) - Svalbard and Jan Mayen
- SK (5233) - Slovakia
- SM (26) - San Marino
- TH (903) - Thailand
- TR (36307) - Turkey
- UA (29571) - Ukraine
- US (41483) - United States
- UY (1964) - Uruguay
- VA (1) - Vatican City
- VI (16) - U.S. Virgin Islands
- WF (3) - Wallis and Futuna
- YT (21) - Mayotte
- ZA (3920) - South Africa

## Format

Ready to go files in JSON, XML and CSV format.

### JSON

```
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
```

### CSV

```
  country_code,zipcode,place,state,state_code,province,province_code,community,community_code,latitude,longitude
  DE,55246,Mainz-Kostheim,Hessen,HE,Regierungsbezirk Darmstadt,064,"Wiesbaden, Landeshauptstadt",06414,50.0051,8.3134

```

### XML

```
  <object>
    <country_code>DE</country-code>
    <zipcode>01945</zipcode>
    <place>Grünewald</place>
    <state>Brandenburg</state>
    <state_code>BB</state-code>
    <province></province>
    <province_code>00</province-code>
    <community>Landkreis Oberspreewald-Lausitz</community>
    <community_code>12066</community-code>
    <latitude>51.4</latitude>
    <longitude>14</longitude>
  </object>
```

### Missing data?
Please contact geonames or ask in geonames forum https://forum.geonames.org/ for missing data. This repository is just a conversion of the original data. 

## License

- Original creator: Data comes from http://www.geonames.org/
- Modifications: Transformed dataset into JSON, XML and CSV (see convert.rb)

- Type: This work is licensed under a Creative Commons Attribution 4.0 License. https://creativecommons.org/licenses/by/4.0/

## Do you need a developer who can work with these records?

Contact us here [www.zauberware.com](https://www.zauberware.com)
