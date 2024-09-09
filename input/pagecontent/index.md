# SimpleTestIG

Feel free to modify this index page with your own awesome content!

```http
GET [base]/Patient?_summary=true HTTP/1.1
Authorization: Bearer vGHTPOJzh3QFd...omitted for brevity...99bhgT8Ya
```

```json
{
  "resourceType": "Bundle",
  "id": "5b6bad03-d628-4512-9fe5-55f84e31e027",
  "type": "searchset",
  "total": 0,
  "boolean": true,
  "array": [1, 2, 3],
  "link": [ 
    {
        "relation": "self",
        "url": "[base]/Patient",
        "extension": [
            {
                "url": "http://hl7.org/fhir/StructureDefinition/lastUpdated",
                "valueDateTime": "2020-04-29T15:00:00.000Z",
                // This is a comment
            }
        ]
    } 
  ]
}
```

```http
POST /token HTTP/1.1 
Host: localhost:9001
Accept: application/json
Content-type: application/x-www-form-urlencoded
Authorization: Basic bXktYXBwOm15LWFwcC1zZWNyZXQtMTIz

grant_type=authorization_code&
redirect_uri=http%3A%2F%2Flocalhost%3A9000%2Fcallback&
code=98wrghuwuogerg97&
code_verifier=qskt4342of74bkncmicdpv2qd143iqd822j41q2gupc5n3o6f1clxhpd2x11
```

```http
PUT http://example.org/fhir/Patient?identifier=urn:oid:2.16.756.888888.3.1|8734 HTTP/1.1
Accept: application/fhir+json
Content-Type: application/fhir+json
```

```json
{
  "resourceType" : "Patient",
  "identifier" : "a"
}
```

```http
PUT http://example.org/fhir/Patient?identifier=urn:oid:2.16.756.888888.3.1|8734 HTTP/1.1
Accept: application/fhir+json
Content-Type: application/fhir+json

{
  "resourceType" : "Patient",
  "identifier" : "a"
}
```

```html
<html>
  <body onload="javascript:document.forms[0].submit()">
    <form method="post" action="https://ehr/authorize">
      <input type="hidden" name="response_type" value="code"/>
      <input type="hidden" name="client_id" value="app-client-id"/>
      <input type="hidden" name="redirect_uri" value="https://app/after-auth"/>
      <input type="hidden" name="launch" value="xyz123"/>
      <input type="hidden" name="scope" value="launch patient/Observation.rs patient/Patient.rs openid fhirUser"/>
      <input type="hidden" name="state" value="98wrghuwuogerg97"/>
      <input type="hidden" name="aud" value="https://ehr/fhir"/>
    </form>
  </body>
</html>
```