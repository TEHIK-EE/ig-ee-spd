<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Device
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Device</sch:title>
    <sch:rule context="f:Device">
      <sch:assert test="count(f:definition) &lt;= 0">definition: maximum cardinality of 'definition' is 0</sch:assert>
      <sch:assert test="count(f:udiCarrier) &lt;= 0">udiCarrier: maximum cardinality of 'udiCarrier' is 0</sch:assert>
      <sch:assert test="count(f:availabilityStatus) &lt;= 0">availabilityStatus: maximum cardinality of 'availabilityStatus' is 0</sch:assert>
      <sch:assert test="count(f:biologicalSourceEvent) &lt;= 0">biologicalSourceEvent: maximum cardinality of 'biologicalSourceEvent' is 0</sch:assert>
      <sch:assert test="count(f:manufacturer) &lt;= 0">manufacturer: maximum cardinality of 'manufacturer' is 0</sch:assert>
      <sch:assert test="count(f:manufactureDate) &lt;= 0">manufactureDate: maximum cardinality of 'manufactureDate' is 0</sch:assert>
      <sch:assert test="count(f:expirationDate) &lt;= 0">expirationDate: maximum cardinality of 'expirationDate' is 0</sch:assert>
      <sch:assert test="count(f:lotNumber) &lt;= 0">lotNumber: maximum cardinality of 'lotNumber' is 0</sch:assert>
      <sch:assert test="count(f:serialNumber) &lt;= 0">serialNumber: maximum cardinality of 'serialNumber' is 0</sch:assert>
      <sch:assert test="count(f:modelNumber) &lt;= 0">modelNumber: maximum cardinality of 'modelNumber' is 0</sch:assert>
      <sch:assert test="count(f:partNumber) &lt;= 0">partNumber: maximum cardinality of 'partNumber' is 0</sch:assert>
      <sch:assert test="count(f:conformsTo) &lt;= 0">conformsTo: maximum cardinality of 'conformsTo' is 0</sch:assert>
      <sch:assert test="count(f:property) &lt;= 0">property: maximum cardinality of 'property' is 0</sch:assert>
      <sch:assert test="count(f:mode) &lt;= 0">mode: maximum cardinality of 'mode' is 0</sch:assert>
      <sch:assert test="count(f:cycle) &lt;= 0">cycle: maximum cardinality of 'cycle' is 0</sch:assert>
      <sch:assert test="count(f:duration) &lt;= 0">duration: maximum cardinality of 'duration' is 0</sch:assert>
      <sch:assert test="count(f:location) &lt;= 0">location: maximum cardinality of 'location' is 0</sch:assert>
      <sch:assert test="count(f:gateway) &lt;= 0">gateway: maximum cardinality of 'gateway' is 0</sch:assert>
      <sch:assert test="count(f:safety) &lt;= 0">safety: maximum cardinality of 'safety' is 0</sch:assert>
      <sch:assert test="count(f:parent) &lt;= 0">parent: maximum cardinality of 'parent' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
