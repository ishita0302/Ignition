def processConsumptionReport(xmlData):
    """
    Process consumption report XML data and store in database
    Args:
        xmlData: XML string containing consumption data
    """
    # Parse XML
    from org.jdom import SAXBuilder
    from java.io import StringReader
    
    builder = SAXBuilder()
    document = builder.build(StringReader(xmlData))
    rootElement = document.getRootElement()
    
    # Get all row elements
    rows = rootElement.getChild("named_query").getChildren()
    
    # Prepare data for batch insert
    data = []
    for row in rows:
        dateTime = row.getChildText("DateTime")
        waterConsumed = float(row.getChildText("WATER_CONSUMED"))
        energyConsumed = float(row.getChildText("ENERGY_CONSUMED"))
        data.append([dateTime, waterConsumed, energyConsumed])
    
    # Insert data into database using system.db functions
    if data:
        # Create table if it doesn't exist
        system.db.runUpdateQuery("""
            CREATE TABLE IF NOT EXISTS ConsumptionData (
                ID INTEGER PRIMARY KEY AUTOINCREMENT,
                DateTime DATETIME,
                WaterConsumed REAL,
                EnergyConsumed REAL,
                UNIQUE(DateTime)
            )
        """)
        
        # Insert data in batch
        system.db.runPrepUpdate("""
            INSERT OR IGNORE INTO ConsumptionData 
            (DateTime, WaterConsumed, EnergyConsumed) 
            VALUES (?, ?, ?)
        """, data)
    
    return len(data)