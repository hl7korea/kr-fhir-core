Extension: KRCore_MedicationIngredient_Extension
Id: krcore-medicationIngredient
Title: "KR Core Medication Ingredient Extension"
Description: """KR Core Medication Ingredient Extension은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 처방정보 내에서 약품 성분명 정보를 표현하는데 사용되며, 이 경우 아래의 조건에 따라 본 Extension을 적용한다.

※ 사용조건
+ [KR Core MedicationRequest Profile](StructureDefinition-krcore-medicationrequest.html)을 적용한 리소스 인스턴스 내에서, `MedicationRequest.medicationCodeableConcept`를 사용하여 약품 제품명을 표현하는 경우에, 
동일한 리소스 인스턴스 내에서 **반드시(SHALL)** 약품 성분명을 함께 표현해야 하며, 이를 위해 **반드시(SHALL)** 본 Extension을 사용해야 한다.
+ KR Core MedicationRequest Profile을 적용한 리소스 인스턴스가 `MedicationRequest.medicationReference`를 사용하여 약품 제품명과 약품 성분명 정보를 간접적으로 제공한 경우에는, 
**가능한 한(SHOULD)** 본 Extension을 사용하지 않는다."""
Context: MedicationRequest.medication.ofType(CodeableConcept)
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 약물 정보** 클래스에서 정의한 *약품 성분명* 항목을 표현하기 위해 정의한 Extension."
* . ^short = "KR Core Medication Ingredient Extension"
* . ^definition = "KR Core Medication Ingredient Extension은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 처방정보 내에서 약품 성분명 정보를 표현하는데 사용되며, 이 경우 아래의 조건에 따라 본 Extension을 적용한다.\n\n※ 사용조건\n+ [KR Core MedicationRequest Profile](StructureDefinition-krcore-medicationrequest.html)을 적용한 리소스 인스턴스 내에서, `MedicationRequest.medicationCodeableConcept`를 사용하여 약품 제품명을 표현하는 경우에, \n동일한 리소스 인스턴스 내에서 **반드시(SHALL)** 약품 성분명을 함께 표현해야 하며, 이를 위해 **반드시(SHALL)** 본 Extension을 사용해야 한다.\n+ KR Core MedicationRequest Profile을 적용한 리소스 인스턴스가 `MedicationRequest.medicationReference`를 사용하여 약품 제품명과 약품 성분명 정보를 간접적으로 제공한 경우에는, \n**가능한 한(SHOULD)** 본 Extension을 사용하지 않는다."
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from KR_Core_ATC_Codes (preferred)
* value[x] ^short = "약품 성분 코드"
* value[x].coding MS
* value[x].coding.system 1.. MS
* value[x].coding.code 1.. MS