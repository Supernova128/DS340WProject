library(tidyverse)


Speakerdataen <- read.csv("Speakerdataen.tsv", sep = "\t")

Speakerdataen %>%
    group_by(client_id) %>%
    summarise(count = n()) ->
    numberofclients


Speakerdataen %>%
    filter(client_id == "372293e65cdab88771e028a4351651ab2eff64438ddafc211e089247dcdccca350153465eb5409ce708081d9ad384af45d1dc57bbe030ae1a2c0edd561322fb8")->
    MostvoiceGerman


Speakerdataen %>%
    filter(client_id == "b419faab633f2099c6405ff157b4d9fb5675219570f2683a4d08cbadeac4431e9d9b30dfa9b04f79aad9d8e3f75fda964809f3aa72ae9d0a4a025c59417f3dd1")->
    MostvoiceUS

Speakerdataen %>%
    filter(client_id == "7eff9a54bdb0619deffda7609d5b8565278e3328de99e63908be2a37c1ad16516240b9c92bc6b68d8130b20dc556f57005dc053f4874a49589f5971a31b97e98")->
    Mostvoice60sFemale

Speakerdataen %>%
    filter(client_id == "7963691c43c8cc498c58f117527522bf772c76c38530570bc55ef04834f67fb7a9227bd0fa1f13e64e8de1cde6594f3501e172ab86559697c08726cac26f4c6f")->
    MostvoiceTeenAUS

Speakerdataen %>%
    filter(client_id == "d7b8bd57a847b9f6a92eb975f2fe0a8686ee95a9e71b0168d5ee36090c94b373186a93d864491807465a14b0cb0cd867c6a52509095f73cb3c58490f0fb7f149")->
    MostvoiceBritish


