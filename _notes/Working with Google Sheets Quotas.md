Since Google Sheets is online, reading and updating data would be slower. There are also limits on how many times we can read and write data. According to Google’s developer guidelines, users are restricted to creating 250 new spreadsheets a day, and free Google accounts can perform 100 read and 100 write requests per 100 seconds.

Attempting to exceed this quota will raise the googleapiclient.errors.HttpError “Quota exceeded for quota group” exception. EZSheets will automatically catch this exception and retry the request. 

If you want to view your API usage or increase your quota, go to the IAM & Admin Quotas page at https://console.developers.google.com/quotas/

If you’d rather just deal with the HttpError exceptions yourself, you can set `ezsheets.IGNORE_QUOTA to True`, and EZSheet’s methods will raise these exceptions when it encounters them.