locals {
  sso_users = {
    "krzysztof.test@sellerx.com" = {
      display_name  = "TEST Krzysztof Kasprzak"
      user_name = "krzysztof.test@sellerx.com"
      groups = "aws-access-analyticsengineer,aws-access-billing"
      scim_sso = "true"
      name = {
         given_name  = "Test"
         family_name = "Kasprzak"
      }
      emails = {
        value = "krzysztof.test@sellerx.com"
      }
    },
    "krzysztof.test2@sellerx.com" = {
      display_name  = "krzysztof Test2xxx"
      user_name = "krzysztof.test2@sellerx.com"
      groups = "aws-access-dataanalytics"
      scim_sso = "false"
      name = {
         given_name  = "Krzysztof"
         family_name = "Test2"
      }
      emails = {
        value = "krzysztof.test2@sellerx.com"
      }
    },
    "chitra.chandrasekharan@sellerx.com" = {
      display_name  = "Chitra Chandrasekharan"
      user_name = "chitra.chandrasekharan@sellerx.com"
      groups = "aws-access-dataanalytics"
      scim_sso = "true"
      name = {
         given_name  = "Chitra"
         family_name = "Chandrasekharan"
      }
      emails = {
        value = "chitra.chandrasekharan@sellerx.com"
      }
    },
     "maciej.jarosz@sellerx.com" = {
      display_name  = "Chitra Chandrasekharan"
      user_name = "maciej.jarosz@sellerx.com"
      groups = "aws-access-dataanalytics"
      scim_sso = "true"
      name = {
         given_name  = "Maciej"
         family_name = "Jarosz"
      }
      emails = {
        value = "maciej.jarosz@sellerx.com"
      }
    },
    "gaurav.khurana@sellerx.com" = {
      display_name  = "Gaurav Khurana"
      user_name = "gaurav.khurana@sellerx.com"
      groups = "aws-access-dataanalytics"
      scim_sso = "true"
      name = {
         given_name  = "Gaurav"
         family_name = "Khurana"
      }
      emails = {
        value = "gaurav.khurana@sellerx.com"
      }
    },
     "zehra.can@sellerx.com" = {
      display_name  = "Zehra Can"
      user_name = "zehra.can@sellerx.com"
      groups = "aws-access-dataanalytics"
      scim_sso = "true"
      name = {
         given_name  = "Can"
         family_name = "Zehra"
      }
      emails = {
        value = "zehra.can@sellerx.com"
      }
    },
    "sabrina.korge@sellerx.com" = {
      display_name  = "Sabrina Korge"
      user_name = "sabrina.korge@sellerx.com"
      groups = "aws-access-dataanalytics"
      scim_sso = "true"
      name = {
         given_name  = "SabrinaSabrina"
         family_name = "Korge"
      }
      emails = {
        value = "sabrina.korge@sellerx.com"
      }
    },
    "christoph.kruk@sellerx.com" = {
      display_name  = "Christoph Kruk"
      user_name = "christoph.kruk@sellerx.com"
      groups = "aws-access-dataanalytics"
      scim_sso = "true"
      name = {
         given_name  = "Christoph"
         family_name = "Kruk"
      }
      emails = {
        value = "christoph.kruk@sellerx.com"
      }
    },
    "pierre.cazeneuve@sellerx.com" = {
      display_name  = "Pierre Cazeneuve"
      user_name = "pierre.cazeneuve@sellerx.com"
      groups = "aws-access-dataanalytics"
      scim_sso = "true"
      name = {
         given_name  = "Pierre"
         family_name = "Cazeneuve"
      }
      emails = {
        value = "pierre.cazeneuve@sellerx.com"
      }
    },
  }
}
