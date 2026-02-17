# thunderbird-desktop-metrics-and-reports
* We require all those who participate in this repo to agree and adhere to the [Mozilla Community Participation Guidelines](https://www.mozilla.org/about/governance/policies/participation/)

## 2026-02-16 how to count tags using mlr for January 2026 202

```bash
 mlr --csv nest --explode --values --across-records --nested-fs ";" -f tags\
 then filter -x 'is_null($tags) || $tags == ""'\
 then count-distinct -f tags\
 then sort -nr count 2026-01-thunderbird-questions.csv > 2026-01-thunderbird_questions_tags.csv
```

### Output

<details>
  <summary>First 25,  click disclosure triangle to reveal the rest
    

```csv
tags,count
thunderbird,899
send-and-receive-email,240
windows-11,146
customization,91
email-and-messaging,91
passwords-and-sign-in,60
windows-10,52
account-management,42
needsinfo,41
import-and-export-email,38
junk-mail-and-spam,38
app-crash,27
contacts,24
connectivity,23
install,21
profiles,18
windows,18
crashing-and-slow-performance,16
extensions,14
reset-passwords,14
events,14
attachments,13
calendar,13
import-and-export-settings,12
accounts,12
```

</summary>

```bash
 tail -n +27 2026-01-thunderbird_questions_tags.csv
```

```csv
accessibility,9
encryption,9
settings,9
update,9
undefined,8
firefox-1470,8
search,7
languages,5
save-passwords,5
windows11,5
performance-and-connectivity,4
security,4
android,3
windows-7,3
ubuntu,3
firefox-14701,3
privacy-and-security_1,2
mac-os-x-1013,2
installation-and-updates,2
windows10,2
macos,2
tags,2
mac-os,2
linux,2
firefox-14702,2
firefox-14601,1
firefox-1460,1
firefox-1150,1
microsoft,1
yahoo,1
windows-81,1
search-tag-and-share,1
instant-messaging,1
autofill,1
mac-os-x-1015,1
offtopic,1
```
</details>

## 2026-02-16 how to count tags using mlr for December 2025
* output is here: https://github.com/thunderbird/thunderbird-desktop-metrics-and-reports/blob/main/CONCATENATED_FILES/2025-12-thunderbird_questions_tags.csv
```bash
mlr --csv nest --explode --values --across-records --nested-fs ";" -f tags\
 then filter -x 'is_null($tags) || $tags == ""'\
 then count-distinct -f tags\
 then sort -nr count 2025-yearly-thunderbird-questions.csv
```

### Output

<details>
  <summary>First 25,  click disclosure triangle to reveal the rest
    
```csv
tags,count
thunderbird,1021
send-and-receive-email,221
email-and-messaging,124
customization,116
import-and-export-email,56
account-management,54
passwords-and-sign-in,41
contacts,35
needsinfo,33
junk-mail-and-spam,33
connectivity,32
attachments,26
install,25
reset-passwords,23
app-crash,21
installation-and-updates,21
events,19
profiles,18
accessibility,17
crashing-and-slow-performance,15
windows-11,15
calendar,13
search,12
windows-10,12
```

  </summary>
  
```csv
update,11
import-and-export-settings,11
encryption,11
accounts,9
languages,9
firefox-1460,9
settings,8
undefined,7
security,6
firefox-14502,6
firefox-1450,6
tags,6
performance-and-connectivity,5
extensions,5
save-passwords,5
instant-messaging,2
autofill,2
search-tag-and-share,2
firefox-14601,2
firefox-1150,1
windows-7,1
privacy-and-security_1,1
macos,1
linux,1
android,1
mac-os-x-1015,1
unsupported-locale,1
german-locale,1
  ```
</details>
