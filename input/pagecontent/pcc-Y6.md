This section corresponds to transaction [PCC-Y6] of the IHE Technical Framework. Transaction [PCC-Y6] is used by the Referral Status Query Client and Referral Status Query Server Actors. The Retrieve SDOH Referral Status [PCC-Y6] transaction is used to query and get back results.

### Scope

The Client [PCC-Y6] transaction passes a go Request from a Client to a Server.

### Actors Roles

**Table: Actor Roles**

|Actor | Role |
|-------------------+--------------------------|
| [Referral Status Consumer](volume-1.html#client)    | Sends query to Provider |
| [Referral Status Provider](volume-1.html#server) | Receives the query and responds |

### Referenced Standards

**FHIR-R4** [HL7 FHIR Release 4.0](http://www.hl7.org/FHIR/R4)

### Interactions

<figure>
{%include pcc-Y6-seq.svg%}
<p id="fX.X.X.X-1" class="figureTitle">Figure X.X.X.X-1: SDOH Referral Status Query Interactions</p>
</figure>
<br clear="all">

#### SDOH Referral Status Query

This interaction uses the [FHIR Search mechanism](https://hl7.org/FHIR/R4/search.html) to obtain the current status of an existing referral, based on the referral identifier.

##### Trigger Events

The Consumer system or user is authorized to query for the status of an existing SDOH referral, and based on user action or a business rule within the system, it sends are query to the Referral Status Provider.

##### Query Semantics

The query is a [FHIR search](https://hl7.org/FHIR/R4/search.html) against either a `Task` or `ServiceRequest` resource. The formal list of parameters is describer the SDOH Referral Status Consumer [CapabilityStatement definition](CapabilityStatement-IHE.SDOH-RSQ.client.html).

##### Expected Actions

''TODO: define expected actions''

#### Go Response Message

##### Trigger Events

''TODO: define the triggers''

##### Message Semantics

''TODO: define the message -- usually with a StructureDefintion''

##### Expected Actions

''TODO: define expected actions''

### CapabilityStatement Resource

Server implementing this transaction shall provide a CapabilityStatement Resource as described in ITI TF-2x: Appendix Z.3 indicating the transaction has been implemented.

* Requirements CapabilityStatement for [Client](CapabilityStatement-IHE.ToDo.client.html)
* Requirements CapabilityStatement for [Server](CapabilityStatement-IHE.ToDo.server.html)

### Security Considerations

See [MHD Security Considerations](volume-1.html#security-considerations)

#### Security Audit Considerations

''TODO: The security audit criteria ''

##### Client Audit

''TODO: the specifics''

##### Server Audit

''TODO: the specifics''
