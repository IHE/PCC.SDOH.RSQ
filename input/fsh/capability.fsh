Instance: IHE.SDOH-RSQ.client
InstanceOf: CapabilityStatement
Title: "SDOH Referral Status Consumer"
Usage: #definition
* description = """
CapabilityStatement for the Referral Status Consumer Actor in the Patient Care Coordination Technical Framework Supplement PCC SDOH Referral Status Query. See https://profiles.ihe.net/PCC/TF/Volume1/ch-38.html. The IHE Profile text is Normative, this conformance resource is Informative. 

The Consumer obtains the status of an existing SDOH Referral by querying the SDOH Referral Status Provider based on the referral identifier.
- The referral workflow and the various mechanisms on how the referral identifier is known to the consumer and the provider are out of scope.
- The consumer may choose the entry point for the FHIR search, either a `ServiceRequest` or a `Task` resource.
"""
* url = "https://profiles.ihe.net/PCC/SDOH-RSQ/CapabilityStatement/IHE.SDOH-RSQ.client"
* name = "IHE_Referral_Status_Consumer"
* title = "IHE Referral Status Consumer"
* status = #active
* experimental = false
* date = "2024-06-14"
* publisher = "Integrating the Healthcare Enterprise (IHE)"
* contact[0].name = "IHE"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "http://ihe.net"
* contact[+].name = "Patient Care Coordination Domain"
* contact[=].telecom.system = #email
* contact[=].telecom.value = "pcc@ihe.net"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* copyright = "IHE http://www.ihe.net/Governance/#Intellectual_Property"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #client
  * documentation = """
  The Referral Status Query Client has the capability to query a Server for the status of a previously accepted referral. The query is accomplished via FHIR Search against the ServiceRequest or Task resources. 
  The choice of which resource is used depends on the architecture of the implementation. 
  """
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
  * resource[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * type = #ServiceRequest
    * documentation = """
Using FHIR search on the `ServiceRequest` resource as part of transaction [PCC-Y6] allows to find out the status of an existing referral.
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * referencePolicy[+] = #resolves
    * searchParam[+]
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
    * searchParam[+]
      * name = "identifier"
      * type = #token
      * documentation = "The business identifier representing the referral identifier"
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
  * resource[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * type = #Task
    * documentation = """
Using FHIR search on the `Task` resource as part of transaction [PCC-Y6] alllows to find out the status of an existing referral.
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * referencePolicy[+] = #resolves
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "identifier"
      * type = #token
      * documentation = "The business identifier representing the referral identifier"
  * interaction.code = #search-system


Instance: IHE.SDOH-RSQ.server
InstanceOf: CapabilityStatement
Title: "SDOH Referral Status Query Server"
Usage: #definition
* description = """
CapabilityStatement for the SDOH Referral Status Server Actor.

Explain
- blah
- blah
"""
* url = "https://profiles.ihe.net/PCC/SDOH-RSQ/CapabilityStatement/IHE.SDOH-RSQ.serever"
* name = "IHE_Referral_Status_Query_server"
* title = "IHE Referral Status Query server"
* status = #active
* experimental = false
* date = "2024-06-14"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = """
The Referral Status Query Server provides the status of a previously accepted referral. The query is accomplished via FHIR Search against the ServiceRequest or Task resources. 
The choice of which resource is used depends on the architecture of the implementation. 
  """
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
  * resource[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * type = #ServiceRequest
    * documentation = """
Using FHIR search on the `ServiceRequest` resource as part of transaction [PCC-Y6] allows to find out the status of an existing referral.
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * referencePolicy[+] = #resolves
    * searchRevInclude[+] = "Task:focus"
    * searchParam[+]
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
    * searchParam[+]
      * name = "identifier"
      * type = #token
      * documentation = "The business identifier representing the referral identifier"
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
  * resource[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * type = #Task
    * documentation = """
Using FHIR search on the `Task` resource as part of transaction [PCC-Y6] alllows to find out the status of an existing referral.
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * referencePolicy[+] = #resolves
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "identifier"
      * type = #token
      * documentation = "The business identifier representing the referral identifier"
  * interaction.code = #search-system

