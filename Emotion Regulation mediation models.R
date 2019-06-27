mod<-
'P2~c*ABUSE+b1*CRSQ_RUM+b2*ERS_TOT+P1+INC_NEED+nonwhite
CRSQ_RUM~a1*ABUSE
ERS_TOT~a2*ABUSE
ERS_TOT~~CRSQ_RUM
P1~~ERS_TOT
P1~~CRSQ_RUM
P1~~ABUSE
CRSQ_RUM~~CRSQ_RUM
ERS_TOT~~ERS_TOT
ABUSE~~ABUSE
P1~~P1
P2~~P2
INC_NEED~~INC_NEED
nonwhite~~nonwhite
CRSQ_RUM~1
ERS_TOT~1
ABUSE~1
P1~1
P2~1
INC_NEED~1
nonwhite~1
a1b1:=a1*b1
a2b2:=a2*b2
abtot:=a1*b1+a2*b2
'
fit<-lavaan(mod,data=mterp,missing="ML",se="bootstrap", bootstrap = 10000)
summary(fit,standardized=T)



mod<-'
SCARED_TOT~ c1*Age_c + c2*NUM_THREATc + b1*ThreatBiasc + c3*NUM_THREATc:Age_c + b2*ThreatBiasc:Age_c + SEX + nonwhite
ThreatBiasc~ Age_c + NUM_THREATc + NUM_THREATc:Age_c + SEX + nonwhite
ThreatBiasc~~ThreatBiasc
SEX~~SEX
Age_c~~Age_c
nonwhite~~nonwhite
NUM_THREATc~~NUM_THREATc
SCARED_TOT~~SCARED_TOT
SEX~1
Age_c~1
nonwhite~1
NUM_THREATc~1
SCARED_TOT~1
ThreatBiasc~1'

mod<-'
CDI_TOT~a*NUM_THREAT+b*ERQ_SUP+SEX+nonwhite+S1AGE
ERQ_SUP~c*NUM_THREAT+SEX+nonwhite+S1AGE
SEX~~SEX
S1AGE~~S1AGE
nonwhite~~nonwhite
NUM_THREAT~~NUM_THREAT
ERQ_SUP~~ERQ_SUP
CDI_TOT~~CDI_TOT
SEX~1
S1AGE~1
nonwhite~1
NUM_THREAT~1
ERQ_SUP~1
CDI_TOT~1
bc := b*c'
fit<-lavaan(mod,data=mtb,missing="ML",se="bootstrap", bootstrap = 5000)
summary(fit,standardized=T)

mod<-'
CDI_TOT~a*NUM_THREAT+b*CRSQ_RUM+SEX+nonwhite+S1AGE
CRSQ_RUM~c*NUM_THREAT+SEX+nonwhite+S1AGE
SEX~~SEX
S1AGE~~S1AGE
nonwhite~~nonwhite
NUM_THREAT~~NUM_THREAT
CRSQ_RUM~~CRSQ_RUM
CDI_TOT~~CDI_TOT
SEX~1
S1AGE~1
nonwhite~1
NUM_THREAT~1
CRSQ_RUM~1
CDI_TOT~1
bc := b*c'
fit<-lavaan(mod,data=mtb,missing="ML")
summary(fit,standardized=T)

mod<-'
SCARED_TOT~a*NUM_THREAT+b*ERQ_SUP+SEX+nonwhite+S1AGE
ERQ_SUP~c*NUM_THREAT+SEX+nonwhite+S1AGE
SEX~~SEX
S1AGE~~S1AGE
nonwhite~~nonwhite
NUM_THREAT~~NUM_THREAT
ERQ_SUP~~ERQ_SUP
SCARED_TOT~~SCARED_TOT
SEX~1
S1AGE~1
nonwhite~1
NUM_THREAT~1
ERQ_SUP~1
SCARED_TOT~1
bc := b*c'
fit<-lavaan(mod,data=mtb,missing="ML")
summary(fit,standardized=T)

mod<-'
SCARED_TOT~a*NUM_THREAT+b*CRSQ_RUM+SEX+nonwhite+S1AGE
CRSQ_RUM~c*NUM_THREAT+SEX+nonwhite+S1AGE
SEX~~SEX
S1AGE~~S1AGE
nonwhite~~nonwhite
NUM_THREAT~~NUM_THREAT
CRSQ_RUM~~CRSQ_RUM
SCARED_TOT~~SCARED_TOT
SEX~1
S1AGE~1
nonwhite~1
NUM_THREAT~1
CRSQ_RUM~1
SCARED_TOT~1
bc := b*c'
fit<-lavaan(mod,data=mtb,missing="ML")
summary(fit,standardized=T)

mod<-'
EXTERNAL~a*NUM_THREAT+b*ERQ_SUP+SEX+nonwhite+S1AGE
ERQ_SUP~c*NUM_THREAT+SEX+nonwhite+S1AGE
SEX~~SEX
S1AGE~~S1AGE
nonwhite~~nonwhite
NUM_THREAT~~NUM_THREAT
ERQ_SUP~~ERQ_SUP
EXTERNAL~~EXTERNAL
SEX~1
S1AGE~1
nonwhite~1
NUM_THREAT~1
ERQ_SUP~1
EXTERNAL~1
bc := b*c'
fit<-lavaan(mod,data=mtb,missing="ML")
summary(fit,standardized=T)

mod<-'
EXTERNAL~a*NUM_THREAT+b*CRSQ_RUM+SEX+nonwhite+S1AGE
CRSQ_RUM~c*NUM_THREAT+SEX+nonwhite+S1AGE
SEX~~SEX
S1AGE~~S1AGE
nonwhite~~nonwhite
NUM_THREAT~~NUM_THREAT
CRSQ_RUM~~CRSQ_RUM
EXTERNAL~~EXTERNAL
SEX~1
S1AGE~1
nonwhite~1
NUM_THREAT~1
CRSQ_RUM~1
EXTERNAL~1
bc := b*c'
fit<-lavaan(mod,data=mtb,missing="ML")
summary(fit,standardized=T)

