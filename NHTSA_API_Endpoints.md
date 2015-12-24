## Safety Ratings ##

### End Point ###
    /SafetyRatings

### Rating by Vehicle ID ###
    /SafetyRatings/vehicleid/{VEHICLE_ID}

### Verbose Methods ###
    /SafetyRatings/modelyear/{MODEL_YR}
    /SafetyRatings/modelyear/{MODEL_YR}/make/{MAKE}
    /SafetyRatings/modelyear/{MODEL_YR}/make/{MAKE}/model/{MODEL}

### Concise Methods ###
    /SafetyRatings/{MODEL_YR}
    /SafetyRatings/{MODEL_YR}/{MAKE}
    /SafetyRatings/{MODEL_YR}/{MAKE}/{MODEL}


## Recalls ##

### End Point ###
    /Recalls

### Recalls by Brand ###
    /Recalls/{PRODUCT_TYPE}/brand/{MAKE}
    /Recalls/{PRODUCT_TYPE}/brand/{MAKE}/model/{MODEL}

### Verbose Methods ###
    /Recalls/{PRODUCT_TYPE}/modelyear/{MODEL_YR}
    /Recalls/{PRODUCT_TYPE}/modelyear/{MODEL_YR}/make/{MAKE}
    /Recalls/{PRODUCT_TYPE}/modelyear/{MODEL_YR}/make/{MAKE}/model/{MODEL}

### Concise Methods ###
    /Recalls/{PRODUCT_TYPE}
    /Recalls/{PRODUCT_TYPE}/{MODEL_YR}
    /Recalls/{PRODUCT_TYPE}/{MODEL_YR}/{MAKE}
    /Recalls/{PRODUCT_TYPE}/{MODEL_YR}/{MAKE}/{MODEL}


## Complaints ##

### End Point ###
    /Complaints

### Complaints by Brand ###
    /Complaints/{PRODUCT_TYPE}/brand/{MAKE}
    /Complaints/{PRODUCT_TYPE}/brand/{MAKE}/model/{MODEL}

### Verbose Methods ###
    /Complaints/{PRODUCT_TYPE}/modelyear/{MODEL_YR}
    /Complaints/{PRODUCT_TYPE}/modelyear/{MODEL_YR}/make/{MAKE}
    /Complaints/{PRODUCT_TYPE}/modelyear/{MODEL_YR}/make/{MAKE}/model/{MODEL}

### Concise Methods ###
    /Complaints/{PRODUCT_TYPE}
    /Complaints/{PRODUCT_TYPE}/{MODEL_YR}
    /Complaints/{PRODUCT_TYPE}/{MODEL_YR}/{MAKE}
    /Complaints/{PRODUCT_TYPE}/{MODEL_YR}/{MAKE}/{MODEL}


## Civil Penalties ##

### End Point ###
    /CivilPenalties

### Verbose Methods ###
    /CivilPenalties/year/{FISCAL_YEAR}

### Concise Methods ###
    /CivilPenalties/{FISCAL_YEAR}


## Child Seat Safety Inspection Station ##

### End Point ###
    /CSSIStation

### CSSIS by State ###
    /CSSIStation/state/{STATE}

    /CSSIStation/state/{STATE}/page/{Page}

    /CSSIStation/state/{STATE}/lang/{LANG}
    /CSSIStation/state/{STATE}/lang/{LANG}/{SPECIALWEEK}
    /CSSIStation/state/{STATE}/lang/{LANG}/page/{Page}
    /CSSIStation/state/{STATE}/lang/{LANG}/{SPECIALWEEK}/page/{Page}

    /CSSIStation/state/{STATE}/{SPECIALWEEK}
    /CSSIStation/state/{STATE}/{SPECIALWEEK}/page/{Page}
    /CSSIStation/state/{STATE}/{SPECIALWEEK}/lang/{LANG}
    /CSSIStation/state/{STATE}/{SPECIALWEEK}/lang/{LANG}/page/{Page}

### CSSIS by Zip Code ###
    /CSSIStation/zip/{ZIP}
    /CSSIStation/zip/{ZIP}/{CPSWEEK}
    /CSSIStation/zip/{ZIP}/{CPSWEEK}/lang/{LANG}

    /CSSIStation/zip/{ZIP}/lang/{LANG}
    /CSSIStation/zip/{ZIP}/lang/{LANG}/{CPSWEEK}

    /CSSIStation/zip/{ZIP}/miles/{MILES}
    /CSSIStation/zip/{ZIP}/miles/{MILES}/{CPSWEEK}
    /CSSIStation/zip/{ZIP}/miles/{MILES}/lang/{LANG}
    /CSSIStation/zip/{ZIP}/miles/{MILES}/{CPSWEEK}/lang/{LANG}
    /CSSIStation/zip/{ZIP}/miles/{MILES}/lang/{LANG}/{CPSWEEK}

### CSSIS by Geo Location ###
    /CSSIStation/geo/{LAT}/{LONG}
    /CSSIStation/geo/{CPSWEEK}/lang/{LANG}/miles/{MILES}/{LAT}/{LONG}

    /CSSIStation/geo/miles/{MILES}/{CPSWEEK}/{LAT}/{LONG}
    /CSSIStation/geo/miles/{MILES}/lang/{LANG}/{LAT}/{LONG}

    /CSSIStation/geo/lang/{LANG}/{CPSWEEK}/miles/{MILES}/{LAT}/{LONG}
