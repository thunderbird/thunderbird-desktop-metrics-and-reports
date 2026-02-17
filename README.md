# thunderbird-desktop-metrics-and-reports
* We require all those who participate in this repo to agree and adhere to the [Mozilla Community Participation Guidelines](https://www.mozilla.org/about/governance/policies/participation/)
## 2026-02-16 how to count tags using mlr
```bash
mlr --csv nest --explode --values --across-records --nested-fs ";" -f tags then filter -x 'is_null($tags) || $tags == ""' then count-distinct -f tags then sort -nr count 2025-yearly-thunderbird-questions.csv
```

### Output

<details>
  <summary>First 20 or so,  click disclosure triangle to reveal the rest
    
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
