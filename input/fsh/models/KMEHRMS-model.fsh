
// Logical data model for KMEHR MedicationScheme.
// Documented by Bert Peters, based on implementation and testing results
// Element names may be changed to follow FHIR documentation convention - namely removing dashes (-)
// 2023

Logical: KMEHRMS
Title: "KMEHR Medication Schema v5.8"
Description: "This model represents the Medication Schema KMEHR V5.8. It is shown for demonstrating the field correspondence/equivalence, and not to imply any intended scope or intended behaviour."

* KMEHRMessage 1..1 Class "KMEHR Message" "KMEHR Message"
  * header 1..1 Class "KMEHR Message header"
//    * id 1..1 string ""
    * standard 1..1 Class "Which version of the standard is used"
      * cd 1..1 CD "The version of the KMEHR standard used"
        * ^comment = """
* S-VALUE = CD-STANDARD 
* value = always '20161201' " referring the eHealth XSD version
"""
    * date 0..1 date "Date"
    * time 0..1 time "Time"
    * sender 0..1 Class "Sender"
      * insert hcparties
    * recipient 0..1 Class "Recipient"
      * insert hcparties
  * folder 1..1 Class "The only data that matters"
    * idkmehr 1..1 integer "ID-KMEHR"
      * ^requirements = """
        * Equal to 1
        """
      * ^comment = " To Be checked if always 1"
    * patient 1..1 Class "the patient"
      * idinss 0..1 string "the Belgian Social Security Number identifier"
        * ^requirements = """
          * S = INSS
          * format = 11 digits
        """ 
      * firstname 0..1 string "First name of the patient. If no first name exists, the element will be empty."
      * familyname 0..1 string "Family name of the patient"
      * birthdate 0..1 date "Birth date of the patient (uses the basic data types for dates)"
      * deathdate 0..1 date "this is not used"
      * sex 1..1 Class "Sex of the patient"
        * cd 1..1 code "Coded value of patient sex"
          * ^requirements = """
            * S = CD-sex
            * ^example.valueString = female
          """            
      * address 0..1 Class "Home, work, … address(es) of the patient."
        * cd 1..1 code "Coded value"
          * ^requirements = """
            * S = CD-ADDRESS 
            * ^example.valueString = home
          """
        * country
        * zip 0..1 integer "Zip-code of the city"
        * city 0..1 string "The name of the city"
        * street 0..1 string "The name of the street"
        * housenumber 0..1 string "Housenumber within the street"
      * nationality 0..1 string "Nationality of the patient. Initially, the use of the CD-COUNTRY dictionary was required. We now recommend the use of the CD-FED-COUNTRY dictionary."
        * cd 1..1 code "Coded value"
          * ^requirements = """
            * S = CD-FED-COUNTRY
            * ^example.valueString = de
          """
      * usuallanguage 0..1 string "Usual language of the patient using the W3C language codes."
      * telecom 0..1 string "Fax, phone, … number(s) of the patient."
      * recorddatetime 0..1 ANY "Date of recording of the patient data."
      * text 0..1 string "Comment about the patient."

    * MSTransaction 1..1 Class "The metadata for the message"
      * ^comment = "here is a comment"
      // * idkmehr 1..1 integer "the KMEHR identifier for the medication line"
      // * ^comment = "S-VALUE= ID-KMEHR"
      // * ^requirements = """
      //     * Sequential, starting from 2
      //   """
      * idothers 0..* integer "Local ID of the medication line" 
        * ^definition = """
*Value set*:
  * vitalinkuri
  * RSBID
  * RSWID
"""
        * ^requirements = """
        * S-VALUE= LOCAL
        * SL-Value = 'vitalinkuri' - the identifier of the namespace
          * valueset:
            * vitalinkuri
            * RSBID
            * RSWID
        """
      * cd 1..1 code "code"
        * ^requirements = """
          * S= CD-TRANSACTION
          * valueset:
            * medicationscheme
        """
      * insert dateMandatory
      * insert timeMandatory
      * author 1..1 Class "The author of the line in the schema"
        * insert hcparties
      * isComplete 1..1 boolean "is complete"
        * ^comment = "Always set to true because it is not used"
      * isValidated 1..1 boolean "is validated"
        * ^comment = "Always set to true because it is not used"
      * version 0..1 integer "version of the medication scheme"

    * MSETransactionTreatmentSuspension 0..* Class "The treatment suspension line(s)"
      * idkmehr 1..1 integer "the KMEHR identifier for the medication line"
        * ^comment = "S-VALUE= ID-KMEHR"
        * ^requirements = """
        * Sequential, starting from 2
        """
      * idother 0..* string "Local ID of the medication line"
        * ^requirements = """
        * S-VALUE= LOCAL
        * SL-Value = 'vitalinkuri' - the identifier of the namespace
          * valueset:
            * vitalinkuri
            * RSBID
            * RSWID
        """
      * cd 0..* code "Coded value"
        * ^requirements = """
        * S= CD-TRANSACTION
        * valueset:
          * medicationschemeelement
          * treatmentsuspension
        """
      * insert dateMandatory
      * insert timeMandatory
      * author 1..1 Class "The author of the line in the schema"
        * insert hcparties
      * isComplete 1..1 boolean "is complete"
        * ^comment = "Always set to true because it is not used"
      * isValidated 1..1 boolean "is validated"
        * ^comment = "Always set to true because it is not used"
      * itemmedication 0..* Class "This describes the medication it is linked to, but has no further relevance"
        * itemId 0..* integer "a sequential unique item ID within the transaction, start=1"
        * cd 0..* ANY "describes the item category"
          * ^comment = """
          * S = CD-ITEM
          * value = medication
          """
        * insert periodDefinition
        * endMoment ^short = "the end date (and time) of the suspension"

        * content 0..* Class "To Do"
          * insert medicationIdentification
        * text 0..* string "Mandatory if compoundprescription is used - !!to be checked if possible in TS transaction!!"
        * lifecycle 1..1 string "The indication of the status, only used in a TS with value 'suspended'"
          * ^requirements = """
            * S = CD-LIFECYCLE
            * value = suspended
          """
        * lnk 1..1 string "using a link to the transaction (in the current MedicationSchema) of the related medicine"
          * ^requirements = """
            * TYPE = isplannedfor
            * URL = link to the ID-KMEHR of the medication this TS relates to
              * format = "//transaction[id[@S='ID-KMEHR']='5']"
          """
      * itemtransactionreason 0..1 Class "Extra information on the reason of suspention of the linked medication"
        * itemId 0..* integer "a sequential unique item ID within the transaction, start=1"
        * cd 0..* ANY "describes the item category"
          * ^requirements = """
            * S = CD-ITEM
            * value = transactionreason
            """
        * contenttext 0..* Class "Text"
          * text 1..* string "cardinality to be checked"
            * ^comment = "L-VALUE = [language] fr or nl or ..."
            * ^example.valueString = "Temporairement ne pas prendre en raison de l'interaction avec Y."
            * ^example.label = "Example"











    * MSETransactionmedication 0..* Class "The medication lines"
      * idkmehr 1..1 integer "the KMEHR identifier for the medication line"
        * ^comment = "S-VALUE= ID-KMEHR"
        * ^requirements = """
        * Sequential, starting from 2
        """
      * idother 0..* string "Local ID of the medication line"
        * ^requirements = """
        * S-VALUE= LOCAL
        * SL-Value = 'vitalinkuri' - the identifier of the namespace
          * valueset:
            * vitalinkuri
            * RSBID
            * RSWID
        """
      * cd 0..* code "Coded value"
        * ^requirements = """
        * S= CD-TRANSACTION
        * valueset:
          * medicationschemeelement
          * treatmentsuspension
        """
      * insert dateMandatory
      * insert timeMandatory
      * author 1..1 Class "The author of the line in the schema"
        * insert hcparties
      * isComplete 1..1 boolean "is complete"
        * ^comment = "Always set to true because it is not used"
      * isValidated 1..1 boolean "is validated"
        * ^comment = "Always set to true because it is not used"
      * version 0..* string "TO DO"

      * itemmedicationUse 0..1 Class "Extra information on the usage of the medication within this transaction"
        * itemId 0..* integer "a sequential unique item ID within the transaction, start=1"
        * cd 0..* ANY "describes the item category"
          * ^requirements = """
            * S = CD-ITEM
            * value = healthcareelement
            """
        * contentcategory 1..* Class "Category"
          * cd 0..* Class "Coded value"
            * ^requirements = """
            * S-VALUE=CD-ITEM-MS
            * value = medicationuse
            """
        * contenttext 0..* Class "Text"
          * text 1..* string "cardinality to be checked"
            * ^comment = "L-VALUE = [language] fr or nl or ..."
            * ^example.valueString = "pression artérielle" 
            * ^example.label = "Example"
      * itemendCondition 0..1 Class "Extra information on the endcondition of the medication within this MSE-transaction"
        * itemId 0..* integer "a sequential unique item ID within the transaction, start=1"
        * cd 0..* ANY "describes the item category"
          * ^requirements = """
            * S = CD-ITEM
            * value = healthcareelement
            """
        * contentcategory 1..* Class "Category"
          * cd 0..* Class "Coded value"
            * ^requirements = """
            * S-VALUE=CD-ITEM-MS
            * value = endcondition
            """
        * contenttext 0..* Class "Text"
          * text 1..* string "cardinality to be checked"
            * ^comment = "L-VALUE = [language] fr or nl or ..."
            * ^example.valueString = "pression artérielle" 
            * ^example.label = "Example"
            
      * itembeginCondition 0..1 Class "Extra information on the begincondition of the medication within this MSE-transaction"
        * itemId 0..* integer "a sequential unique item ID within the transaction, start=1"
        * cd 0..* ANY "describes the item category"
          * ^requirements = """
            * S = CD-ITEM
            * value = healthcareelement
            """
        * contentcategory 1..* Class "Category"
          * cd 0..* Class "Coded value"
            * ^requirements = """
            * S-VALUE=CD-ITEM-MS
            * value = begincondition
            """
        * contenttext 0..* Class "Text"
          * text 1..* string "cardinality to be checked"
            * ^comment = "L-VALUE = [language] fr or nl or ..."
            * ^example.valueString = "pression artérielle" 
            * ^example.label = "Example"

      * itemorigin 0..0 Class "non-permitted"
      * itemmedicationType 0..0 Class "non-permitted"
      * itemadaptationFlag 0..0 Class "non-permitted"
      * itemmedication 0..* Class "To Do"
        * itemId 0..* integer "a sequential unique item ID within the transaction, start=1"
        * cd 0..* ANY "describes the item category"
          * ^comment = """
          * S = CD-ITEM
          * value = medication
          """
        * insert periodDefinition
        * duration 0..1 integer "The duration of the treatment" 
          * ^requirements = """
            The duration is mutually exclusive with endMoment
            """
//        * obeys duration-xor-endMoment
        * contentmedicationIdentification 0..* Class "To Do"
          * insert medicationIdentification
        * content 0..* string "Extra content field which can be added if neccessary"
          * ^requirements = """
            * S = LOCAL
            * SL = SAMPROOF
            * ^example.valueString = qSv76SJEeOMdbZdVgQEDZA==
          """
        * text 0..* string "Mandatory if compoundprescription is used"
          * ^comment = "L-VALUE = [language] fr or nl or ..."
          * ^example.valueString = "Aluminiumchloride transpiratieremmende hydroalcoholische oplossing 15 % TMF" 
            * ^example.label = "Example"

        * temporality 0..* Class "The temporality"
          * cd 0..1 string "Coded value"
          * ^requirements = """
          * S = CD-TEMPORALITY
          * valueset:
            * chronic
            * acute
            * oneshot
            """
        * frequency 0..* Class "To Do"
          * periodicity 0..* Class "To Do"
            * cd 0..* ANY "S-VALUE=CD-PERIODICITY"
              * ^requirements = """
                * valueset:
                  * D
                  * DT
                  * J
                  ...
              """
        * posology 0..* Class "The freetext posology is mutual exclusive with the structured Regimen"
          * text 1..1 string "Contains the ingestion pattern in textual form"
            * ^comment = "L-VALUE = [language] fr or nl or ..."
            * ^example.valueString = "tot 4 x per dag 1 tablet"
            * ^example.label = "Example"

          * low 0..0 ANY "Not used here, only in SumEHR" 
          * high 0..0 ANY "Not used here, only in SumEHR"
          * unit 0..0 ANY "Not used here, only in SumEHR"
          * takes 0..0 ANY "Not used here, only in SumEHR"

        * regimen 0..* Class "To Do"
          * date 0..* date "date, mostly used icw periodicity=monthly or at a specifiec time of the day"
            * ^comment = """
            * Format= yyyy-mm-dd
            """    
          * weekday 0..* integer "Day of the week, mostly used icw periodicity=weekly"
            * cd 1..1 string "the day of the week"
              * ^comment = "S-VALUE=CD-WEEKDAY"
              * ^example.valueString = "monday"
              * ^example.label = "Example"

          * daynumber 0..* integer "Daynumber, mostly used icw periodicity=weekly or daily"
          * daytime 0..* Class "indication of the intake moment"
            * insert timeMandatory 
            * dayperiod 1..* Class "mutual exclusive with &lt;time&gt;"
              * cd 0..* string "Coded value"
                * ^requirements = """
                * S = CD-DAYPERIOD
                * valueset:
                  * morning
                  * betweenlunchanddinner
                  * beforesleep
                  * beforebreakfast
                  * ...
                """
          * quantity 1..1 Class "To Do"
            * decimal 0..* integer "the amount, expressed in a number"
            * unit 0..* Class "the prescribed administration unit where the decimal applies to"
              * cd 0..* string "To Do"
                * ^requirements = """
                * S = CD-ADMINISTRATIONUNIT
                * valueset:
                  * 00001
                  * gm
                  * micrograms
                  * tbl
                  * mg
                  * ...
                """
        * route 0..* Class "The drug administration route"
          * cd 0..* ANY "To Do"
            * ^requirements = """
              * S = CD-DRUG-ROUTE
              * valueset:
                * 00060
                * 00001
                * ear-left
                * derm
                * transderm
                * ...
              """
        * instructionForOverDosing 0..0 ANY "NOT USED in MS"
        * instructionForReimbursement 0..0 ANY "NOT USED in MS"
        * isSubstitutionAllowed 0..0 ANY "NOT USED in MS"
        * feedback 0..0 ANY "NOT USED in MS"
        * local 0..0 ANY "NOT USED in MS"
        * batch 0..0 ANY "NOT USED in MS"
        * deliveryDate 0..0 ANY "NOT USED in MS"
        * instructionforpatient 0..1 string "Usage instructions for the patient."
          * ^comment = "L-VALUE = [language] fr or nl or ..."
          * ^example.valueString = "A diminuer si possible"
          * ^example.label = "Example"
          

                

              











RuleSet: hcparties
* hcpartyHub 0..1 Class "the identifier of the hub"
  * itemId 1..1 string "the hub identifier"
    * ^comment = "S-VALUE= ID-HCPARTY"
    * ^example.valueString = "1990001916"
    * ^example.label = "Example"

  * cd 1..1 code "the type of the hcparty"
    * ^comment = "S-VALUE= CD-HCPARTY"
  * name 0..1 string "the name of the hub"
    * ^comment = "S-VALUE= CD-HCPARTY"
* hcpartyOrg 0..1 Class "the identifier of the org"
  * itemId 0..1 string "the org identifier - NIHDII number of the org"
    * ^example.valueString = "1990001916"
    * ^example.label = "Example"

  * cd 1..1 code "the type of the hcparty"
    * ^comment = "S-VALUE= CD-HCPARTY"
  * idencryptionActor 0..1 integer "to be checked: usage & cardinality"
    * ^requirements = """
      * S-VALUE = ID-ENCRYPTION-ACTOR
      * value = [selection of you NIHII nr]
    """
  * idencryptionApplication 0..1 ANY "Application"
    * ^requirements = """
      * S-VALUE = ID-ENCRYPTION-APPLICATION
    """
  * cdencryptionActor 0..1 Class "Usage & cardinality"
    * ^requirements = """
      * S-VALUE = CD-ENCRYPTION-ACTOR
      * valueset: 
        * EHP
        * NIHII
        * SSIN
        *...
    """
  * name 0..1 string "The name of the org"
* hcpartyindividual 1..1 Class "the identifier of the individual"
  * idriziv 0..1 string "the RIZIV individual identifier"
    * ^comment = "S-VALUE= ID-HCPARTY"
  * idinss 0..1 string "the Belgian Social Security Number identifier"
    * ^comment = "S-VALUE= INSS"
    * ^example.valueString = "69060733632"
    * ^example.label = "Example"

  * idencryptionActor 0..1 integer "to be checked: usage & cardinality"
    * ^requirements = """
      * S-VALUE = ID-ENCRYPTION-ACTOR
      * value = [selection of you NIHII nr]
    """
  * cd 1..1 code "the type of the hcparty"
    * ^example.valueString = "persphysician"
    * ^example.label = "Example"

    * ^comment = "S-VALUE= CD-HCPARTY"
  * cdencryptionActor 0..1 Class "to be checked: usage & cardinality"
    * ^requirements = """
      * valueset: 
        * EHP
        * NIHII
        * SSIN
        *...
    """
  * firstname 0..1 string "the first name of the individual"
  * familyname 0..1 string "the last name of the individual"
    * ^example.valueString = "Hendrix"
    * ^example.label = "Example"

  * address 0..* Class "Home, work, ... address(es) of the patient or healthcare party."
    * cd 1..1 Class "Coded value"
      * ^requirements = """
        * S-VALUE = CD-ADDRESS
        * example.valueString = home
      """
    * nis 0..1 code "explanation: https://nl.wikipedia.org/wiki/NIS-code"
      * ^example.valueString = "24062"
      * ^example.label = "Example"

  * telecom 0..* string "Fax, phone, … number(s) of the healthcare party."
* hcpartyapplication 0..1 Class "the software identifier"
  * itemId 0..1 string "the software identifier"
    * ^requirements = """
      * S-VALUE = LOCAL
      * SL-VALUE = endusersoftwareinfo
      * value = [received eHealth client-ID to access specific environment]
    """
  * cd 1..1 code "the type of the hcparty"
    * ^requirements = """
      * S-VALUE = CD-HCPARTY
      * value = APPLICATION
    """
  * name 0..1 string "The name of the application."
    
RuleSet: medicationIdentification
* medicinalproduct 0..* Class "Description of the medicinal product"
  * intendedName 0..1 ST "Name of prescribed product"
  * intendedCd 0..1 CD "CD-DRUG-CNK + Code (CNK)"
  * deliveredName 0..1 ST "Name of delivered product"
  * deliveredCd 0..1 CD "CD-DRUG-CNK + Code (CNK)"
* substanceproduct 0..* Class "Description of the generic product"
  * intendedName 0..1 ST "Name of prescribed product"
    * ^example.valueString = "chloorfenamine + paracetamol oraal 3,2 mg + 240 mg" 
    * ^example.label = "Example"

  * intendedCd 0..1 CD "Code of prescribed product (VMPGROUP or CNK)"
    * ^requirements = """
    * S-Value= CD-INNCLUSTER is not supported
    * S-Value= CD-VMPGROUP 
    * SV-value = e.g. LOCALDB
    * ^example.valueString = "0006106"
    """
    * ^comment = "INN is not supported"
  * deliveredName 0..1 ST "Name of delivered product"
  * deliveredCd 0..1 CD "Code of delivered product (CNK)"
    * ^comment = "This has to be CNK, not a substance, because it is a delivered product"

* compoundprescription 0..* Class "Description of the compound product"
  * ^comment = "Note that in XML this can directly be populated with the description (as it is in Wallonia)"
  * magistraltext 1..1 ST "Recipe of the prescription"
    * ^example.valueString = "R/ Aluminiumchloride hexahydraat 15 g + Isopropylalcohol 78 g + Gezuiverd water q.s. ad 100 g T"
    * ^example.label = "Example"
  * compound 0..0 Class "NOT USED"
  * formularyReference 0..0 ANY "TBD"
    // * id 0..1 string "description of the compound prescription"
    // * medicinalProduct 0..1 Class "description of the compound prescription"
    // * substance 0..1 Class "description of the compound prescription"


RuleSet: periodDefinition
* beginMoment 1..1 Class "The beginmoment of the medication/treatment suspension"
    
  * date 1..1 date  "Date"
    * ^requirements = "Format = yyyy-mm-dd"
  * time 0..1 time "Time"
    * ^requirements = "Format = HH:MM:SS or HH:MM:SS.xxxxxxx+02:00 or ... "
* endMoment 0..1 Class "The end moment of the medication/treatment suspension"
  * date 1..1 date  "Date"
    * ^requirements = "Format = yyyy-mm-dd"
  * time 0..1 time "Time"
    * ^requirements = "Format = HH:MM:SS or HH:MM:SS.xxxxxxx+02:00 or ... "

RuleSet: dateMandatory
* date 1..1 date "The date when the line was registered in the schema"
  * ^requirements = """
    * ?To be checked if mandatory
    * Format = yyyy-mm-dd
  """
        
RuleSet: timeMandatory      
* time 1..1 date "The time when the line was registered in the schema"
  * ^requirements = """
    * ?To be checked if mandatory
    * ?Format = hh:mm:ss
  """

  RuleSet: timeNotMandatory      
* time 0..1 date "The time when the line was registered in the schema"
  * ^requirements = """
    * ?To be checked if not mandatory
    * ?Format = hh:mm:ss
  """