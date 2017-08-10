# Opportunity-Stage-Insert
Allows you to add/import opportunities that are missing stages or close dates

Very basic trigger that allows you to insert a stage based on a value saved in a custom setting. 

# Instructions
1. Open 'Custom Settings" in the settings
2. Click 'Manage' next to Opportunity Stage Trigger
3. Click New
4. Enter the 18 character record type id for the record type you want to specficy a default stage for
5. Enter the exact stage name (api format)
6. Save and try

Bonus: if there is no close date it adds today's date so it can save 

Todo:
- more efficient soql queries if multiple records missing stages
- validation on record type names

Unmanaged package:
https://login.salesforce.com/packaging/installPackage.apexp?p0=04t7F000000oiqj
