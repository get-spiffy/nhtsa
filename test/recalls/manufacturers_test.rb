require 'test_helper'

class ManufacturersTest < Minitest::Test

  def test_it_builds_url_as_expected
    expected_url = "http://webapi.nhtsa.gov/api/Recalls/vehicle/modelyear/1993?format=json"

    assert_equal expected_url, Nhtsa::Recalls::Manufacturers.new(1993).url
  end

  def test_manufacturers_returns_an_array_of_manufacturer_names
    manufacturer_names = ["ACURA", "AERO", "AIRSTREAM", "ALFA", "ALLEN CAMPER", "ALLURE", "ALTEC", "AM GENERAL", "AMERICAN LAFRANCE", "AMERICAN TRAVEL", "AMTRAN", "ASPEN", "ASTON MARTIN", "ATHEY", "AUDI", "BEALL", "BEAVER", "BEAVER COACH", "BENSON", "BENTLEY", "BEST", "BIGDOG", "BLUE BIRD", "BLUEBIRD", "BMW", "BOYDSTUN", "BUELL", "BUICK", "CACHE", "CADILLAC", "CALIFORNIA", "CARRIAGE", "CHAMPION", "CHANCE", "CHEVROLET", "CHRYSLER", "CLASSIC", "COACH HOUSE", "COACHMEN", "COAST MACHINERY", "COLLINS", "CORBEIL", "COUNTRY COACH", "COZAD", "CRAFTSMEN", "CRANE", "CROSSROADS", "CRUISER RV", "CUSHMAN", "CUSTOM CAMPERS", "DABRYAN", "DAEWOO", "DAEWOO PUERTO RICO", "DAMON", "DEMPSTER", "DESTINY", "DIAMOND COACH", "DITCH WITCH", "DODGE", "DOLPHIN", "DORSEY", "DOUBLE DUTY", "DRAKE", "DUCATI", "DUTCHMEN", "DYNAMAX", "EAGLE", "EAST", "EAST MANUFACTURING", "EBY", "ELDORADO", "ELGIN", "EMERGENCY ONE", "ENC", "ENTREPRISES", "ETI", "EUROPA", "EXECUTIVE COACH", "EXPLORER VAN", "FEATHERLITE", "FEDERAL COACH", "FERRARI", "FLEETWOOD", "FONTAINE", "FORD", "FOREST RIVER", "FORETRAVEL", "FRANKLIN", "FREIGHTLINER", "FRUEHAUF", "FWF", "GENERAL COACH", "GENERAL TRAILER", "GENIE", "GEORGIE BOY", "GILLIG", "GIRARDIN", "GLENDALE", "GMC", "GORE", "GREAT DANE", "GRUMMAN", "GULF STREAM", "GULF TOYOTA", "HALE", "HARLEY-DAVIDSON", "HARMAR", "HARMON", "HARNEY", "HART", "HAULMARK", "HINO", "HME", "HOLIDAY RAMBLER", "HOME AND PARK", "HONDA", "HORTON", "HUMDINGER", "HY-LINE", "HYUNDAI", "HYUNDAI CARIBBEAN", "HYUNDAI TRANSLEAD", "IC", "INFINITI", "INTERNATIONAL", "INTERNATIONAL HARVESTER", "INTRIGUE", "ISUZU", "ITASCA", "J&L", "JAGUAR", "JAYCO", "JEEP", "JMH", "K-Z", "KENWORTH", "KEYSTONE", "KIA", "KING OF THE ROAD", "KIT RV", "KME", "KRYSTAL", "LAMBORGHINI", "LANCE", "LAND ROVER", "LAZY DAZE", "LCW", "LEXUS", "LINCOLN", "LOTUS", "LUXOR", "MAC", "MACK", "MADRID", "MAGNUM", "MARATHON", "MARK III", "MARQUE", "MARQUEZ", "MATE", "MAXIM", "MAZDA", "MCCOY MILLER", "MCI", "MCKENZIE", "MEDTEC", "MERCEDES BENZ", "MERCURY", "MID BUS", "MID CONTINENT", "MITSUBISHI", "MITSUBISHI CARIBBEAN", "MITSUBISHI FUSO", "MOBILE SUITES", "MONACO COACH", "MONON", "MORGAN TRAILER", "MOTO GUZZI", "NABI", "NATIONAL RV", "NAVISTAR", "NELSON", "NEOPLAN", "NEW FLYER", "NEW HORIZONS", "NEWELL", "NEWMAR", "NISSAN", "NISSAN DIESEL", "NOVA BUS", "NOVABUS", "NU VAN", "NU WA", "OLDSMOBILE", "OPTIMA", "ORION", "OSHKOSH", "OTTAWA", "OVERLAND", "PACE ARROW", "PEERLESS", "PETERBILT", "PETERSEN", "PICASSO", "PIERCE", "PLEASURE WAY", "PLYMOUTH", "POLAR", "PONTIAC", "PORSCHE", "PREVOST", "PROGRESSIVE", "QUALITY COACH", "RED RIVER", "REGENCY", "REITNOUER", "RELIANCE", "RELIANCE TRAILER", "RENEGADE", "REXHALL", "RHODES", "RIALTA", "RIDE AWAY", "ROAD RESCUE", "ROLLS-ROYCE", "ROYALE", "S&S", "SAAB", "SAFARI COACH", "SALEEN", "SATURN", "SCHIEN", "SCOTTY", "SETRA", "SHASTA", "SILVER EAGLE", "SKYLINE", "SPACE CRAFT", "SPARTAN", "SPEC TEC", "STAIRS", "STARCRAFT", "STERLING", "STRICK", "SUBARU", "SUN HAWK", "SUN VALLEY", "SUNDOWNER", "SUNLINE", "SUNNYBROOK", "SUPERIOR", "SUTPHEN", "SUZUKI", "TALBERT", "TARASPORT", "TEREX", "TETON HOMES", "THOMAS", "THOMAS BUILT BUSES", "THOR", "THOR CALIFORNIA", "TIARA", "TIFFIN", "TIMPTE", "TOYOTA", "TPI", "TRAIL KING", "TRAILER", "TRAILMOBILE", "TRANSCRAFT", "TRANSPORT DESIGNS", "TRAVIS", "TRIAD MACK", "TRIUMPH", "TROPI CAL", "TRUCK EQUIPMENT", "TURTLE TOP", "UD", "ULTIMATE", "UNITED", "UNITED STATES COACHWORKS", "UNIVERSAL SPECIALTY", "US BUS", "UTILIMASTER", "UTILITY", "VACTOR", "VAN CON", "VAN HOOL", "VECTRA", "VIKING", "VOLKSWAGEN", "VOLVO", "WABASH", "WARREN", "WEEKEND WARRIOR", "WELD-IT", "WESCO", "WESTERN", "WESTERN STAR", "WHITE GMC", "WILKENS", "WINNEBAGO", "WINSTON", "XL", "YAMAHA"]

    assert_equal manufacturer_names, Nhtsa::Recalls::Manufacturers.new(1998).manufacturers
  end

end