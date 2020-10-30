If you accidentally share the credential or token files with someone, they won’t be able to change your Google account password, but they will have access to your spreadsheets. You can revoke these files by going to the Google Cloud Platform developer’s console page at https://console.developers.google.com/.

You’ll need to log in to your Google account to view this page. Click the Credentials link on the sidebar. Then click the trash can icon next to the credentials file you’ve accidentally shared.

To generate a new credentials file from this page, click the **Create Credentials** button and select **OAuth client ID**.  Next, for Application Type, select **Other** and give the file any name you like. This new credentials file will then be listed on the page, and you can click on the download icon to download it. The downloaded file will have a long, complicated filename, so you should rename it to the default filename that EZSheets attempts to load: **credentials-sheets.json**. You can also generate a new credential file by clicking the Enable the Google Sheets API button mentioned in the previous section.

