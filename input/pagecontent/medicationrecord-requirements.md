Requirements:


|  | Requirement |
|----|----|
| **R1** | Medication information may include detailed process information (e.g. prescriptions and dispenses, with detailed traceability information), or summary information such as that reported by a patient or by a GP. |
| **R2** | Medication information may be processed, for example aggregated, reconciled, etc. and this should be exchanged transparently  |
| **R3** | The aggregation of medication information may be done differently, with different rules <br/> *For example, medications may be aggregated by the active principle, or by active principle and indication for a more granular view*|
| **R4** | A prescription may be triggered by first defining and planning a treatment plan, or the treatment may be documented after a prescription or dispense. |
| **R5** | In different parts of the process, Medication may be represented differently <br/> *For example, a medication is prescribed by its active principle, and a branded product is dispensed.*|
| **R6** | Medication items can have a M:N relation type with indications|
| **R7** | Medication overviews may include different types of medication <br/>*for example, some overviews may include vaccines, anesthetics, and OTPs, while others may exclude some of these.* |
| **R8** | Medication overviews may include different periods <br/>*For example, some overviews may include only the recent medication, while others may include the patient's lifelong medication information*|
| **R9** | The way that medication information is exchanged should capture the meaning of the information (e.g. whether the information is a prescription or a paient-reported summary), 
| **R10** | The medication exchange information should reflect the status, (e.g. from planned vs ongoing), but should be exchanged in a consistent way across the status <br/> *For example, a medication that is planned but not yet prescribed should be summarized in a way that is consistent when it is prescribed, or  reported by the patient*
