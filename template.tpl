___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Contester Widget",
  "categories": ["ADVERTISING", "AFFILIATE_MARKETING", "EXPERIMENTATION", "LEAD_GENERATION", "MARKETING"],
  "brand": {
    "id": "brand_dummy",
    "displayName": ""
  },
  "description": "Contester widget",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "CollectionId",
    "displayName": "Experience collection ID",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "REGEX",
        "args": [
          "^[0-9a-fA-F]{8}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{12}$"
        ]
      }
    ],
    "help": "Check Contester Backoffice integration page for value"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const injectScript = require("injectScript");
const queryPermission = require('queryPermission');

let url = "https://api.contester.net/api/public/scripts/experienceCollections/" + data.CollectionId + "/js";

if (queryPermission('inject_script', url)) {
    injectScript(url);
}

// Call data.gtmOnSuccess when the tag is finished. That's GTM requirement
data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://*.contester.net/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 12/2/2022, 2:47:34 PM

