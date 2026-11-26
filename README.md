# Driver Hub — Android & iOS Mobile Applications

સંપૂર્ણપણે સિન્ક (Live Synchronized) થયેલી **Driver Hub** Android અને iOS એપ્લિકેશન, જેમાં વેબસાઇટનું ફૂટર (Footer) આપોઆપ હાઇડ (Hide) કરી દેવામાં આવ્યું છે જેથી એપ્લિકેશન 100% પ્યોર નેટિવ એપ (Pure Native Mobile App) જેવી દેખાય.

---

## 🚀 પ્રોજેક્ટ હાઇલાઇટ્સ (Key Highlights)

- **સંપૂર્ણ લાઈવ સિન્ક (100% Real-time Sync)**: વેબસાઇટ (`https://driverhub.in/`) પર જ્યારે પણ નવો ડ્રાઇવર, જોબ પોસ્ટિંગ કે ફેરફાર થશે, તે એપ્લિકેશનમાં તરત જ લાઈવ દેખાશે (એપ અપડેટ કરવાની જરૂર નથી).
- **વેબસાઇટ ફૂટર રીમૂવલ (No Footer in App)**:
  - એપ્લિકેશનમાં વેબસાઇટનું લાંબુ કંપની ફૂટર, કોપીરાઈટ અને સોશિયલ લિંક્સ સંપૂર્ણપણે હાઇડ કરી દીધા છે.
  - React SPA રાઉટિંગમાં પણ પેજ બદલાય ત્યારે ફૂટર જરાય બ્લિંક થયા વગર ગાયબ રહેશે.
- **ઓફલાઇન હેન્ડલિંગ (Offline Screen)**: ઇન્ટરનેટ કનેક્શન ન હોય ત્યારે એરર પેજને બદલે બ્રાન્ડેડ "No Internet Connection - Retry" સ્ક્રીન દેખાશે.
- **એન્ડ્રોઇડ બેક બટન (Hardware Back Navigation)**: ફોનનું બેક બટન દબાવવાથી અગાઉના પેજ પર પાછા જશે, એપ અચાનક બંધ નહીં થાય.
- **બ્રાન્ડેડ થીમ અને સ્પ્લેશ સ્ક્રીન**: Driver Hub બ્રાન્ડ કલર `#08233F` અને પ્રીમિયમ સ્પ્લેશ સ્ક્રીન સેટ કરેલ છે.
- **પરમિશન્સ (Permissions)**: ડ્રાઇવર લાઇસન્સ/ડોક્યુમેન્ટ અપલોડ માટે કેમેરા, ગેલેરી અને લોકેશન પરમિશન કન્ફિગર કરેલ છે.

---

## 📦 તૈયાર થયેલ ફાઇલ્સ (Ready Deliverables)

તમામ બિલ્ડ ફાઇલ્સ **`release-builds/`** ફોલ્ડરમાં સેવ કરેલ છે:

| ફાઇલનું નામ | ફોર્મેટ | સાઇઝ | વર્ણન |
|---|---|---|---|
| **DriverHub.apk** | `.apk` | ~4.78 MB | સીધા કોઈપણ એન્ડ્રોઇડ ફોનમાં ઇન્સ્ટોલ અને ટેસ્ટિંગ માટે તૈયાર સહી કરેલ (Signed) APK |
| **DriverHub.aab** | `.aab` | ~4.55 MB | **Google Play Store Console** માં અપલોડ કરવા માટે તૈયાર સત્તાવાર Android App Bundle |
| **driverhub-release.jks** | `.jks` | 2.7 KB | પ્રોડક્શન સાઇનિંગ કીસ્ટોર (ભવિષ્યના તમામ અપડેટ્સ માટે) |

📁 ડાયરેક્ટ પાથ:
- APK: [`release-builds/DriverHub.apk`](file:///d:/HB/driver%20hub/release-builds/DriverHub.apk)
- AAB: [`release-builds/DriverHub.aab`](file:///d:/HB/driver%20hub/release-builds/DriverHub.aab)
- Keystore: [`release-builds/driverhub-release.jks`](file:///d:/HB/driver%20hub/release-builds/driverhub-release.jks)

---

## 🔑 કીસ્ટોર વિગતો (Keystore Credentials)

Google Play Store માં એપ અપલોડ કરવા અને સાઇન કરવા માટે આ કીસ્ટોરનો ઉપયોગ કરવામાં આવ્યો છે:

- **Keystore File**: `android/app/driverhub-release.jks` (અને `release-builds/driverhub-release.jks`)
- **Keystore Password**: `driverhub123`
- **Key Alias**: `driverhub`
- **Key Password**: `driverhub123`
- **Validity**: 10,000 દિવસ (Play Store ની રિક્વાયરમેન્ટ મુજબ)

> [!IMPORTANT]
> આ કીસ્ટોર ફાઇલ અને પાસવર્ડ ખૂબ મહત્વપૂર્ણ છે. ભવિષ્યમાં જ્યારે પણ તમે ગૂગલ પ્લે સ્ટોર પર નવી અપડેટ મોકલશો ત્યારે આ જ કીસ્ટોર કામ લાગશે.

---

## 📱 એન્ડ્રોઇડ એપ કઈ રીતે ઇન્સ્ટોલ કરવી (How to Test APK)

1. `release-builds/DriverHub.apk` ફાઇલ તમારા એન્ડ્રોઇડ ફોનમાં મોકલો (WhatsApp, Google Drive અથવા USB કેબલ દ્વારા).
2. ફોનમાં APK ફાઇલ પર ક્લિક કરો.
3. જો પૂછવામાં આવે તો "Install from unknown sources" ની પરવાનગી આપો.
4. "Install" બટન દબાવો. એપ ઇન્સ્ટોલ થઈ જશે!

---

## 🏪 ગૂગલ પ્લે સ્ટોર પર કઈ રીતે અપલોડ કરવી (Play Store Submission)

1. [Google Play Console](https://play.google.com/console/) માં લોગિન કરો.
2. **Create app** પર ક્લિક કરો અને નામ આપો: **Driver Hub**.
3. **Production** ટેબમાં જઈ **Create new release** પર ક્લિક કરો.
4. `release-builds/DriverHub.aab` ફાઇલ ખેંચીને (Drag & Drop) અપલોડ કરો.
5. સ્ટોર લિસ્ટિંગ (ડિસ્ક્રિપ્શન, સ્ક્રીનશૉટ્સ, `android/app/src/main/ic_launcher-web.png` માં રહેલ 512x512 આઇકન) ભરો.
6. **Review and roll out release** પર ક્લિક કરો!

---

## 🍏 iOS & TestFlight ઓટોમેટિક અપલોડ (MacBook વગર GitHub થી સીધું TestFlight)

iOS એપનો સમગ્ર નેટિવ સોર્સ કોડ અને Fastlane + GitHub Actions પાઇપલાઇન તૈયાર છે:
- **Xcode Workspace**: [`ios/App/App.xcworkspace`](file:///d:/HB/driver%20hub/ios/App/App.xcworkspace)
- **Fastlane TestFlight Script**: [`ios/App/fastlane/Fastfile`](file:///d:/HB/driver%20hub/ios/App/fastlane/Fastfile)
- **GitHub Actions Workflow**: [`.github/workflows/build-ios.yml`](file:///d:/HB/driver%20hub/.github/workflows/build-ios.yml)
- **Customizations**: `ViewController.swift` માં નોચ સેફ-એરિયા, હેડર ઓવરલેપ ફિક્સ, મેનૂમાંથી Download App રિમૂવ, અને ફૂટરમાં ફક્ત `"Designed & Developed with ❤️ by Hosting Baba"` રાખેલ છે. `Info.plist` માં `ITSAppUsesNonExemptEncryption = false` સેટ કરેલ છે જેથી TestFlight બિલ્ડ તરત જ લાઈવ થઈ શકે.

### MacBook વગર GitHub થી સીધું TestFlight માં અપલોડ કરવાની રીત (ફક્ત 1 વખત સેટઅપ):

1. **Apple Developer / App Store Connect માં એપ બનાવો**:
   - [Apple Developer Identifiers](https://developer.apple.com/account/resources/identifiers/list) માં Bundle ID **`in.driverhub.app`** રજીસ્ટર કરો.
   - [App Store Connect](https://appstoreconnect.apple.com/) માં જઈ **My Apps > + > New App** માં **`in.driverhub.app`** નામની એપ બનાવો.
2. **App Store Connect API Key (.p8) બનાવો**:
   - App Store Connect માં **Users and Access > Integrations > App Store Connect API** માં જાઓ.
   - **Generate API Key** પર ક્લિક કરો (Role: **Admin** રાખો).
   - **Key ID**, **Issuer ID** કોપી કરો અને **`.p8`** ફાઇલ ડાઉનલોડ કરો.
3. **GitHub Secrets ઉમેરો**:
   - તમારી GitHub રિપોઝીટરી (`https://github.com/Utsavthesiya146/driver`) માં **Settings > Secrets and variables > Actions > New repository secret** માં જઈ આ 4 Secrets ઉમેરો:
     - `APP_STORE_CONNECT_KEY_ID` → તમારો API Key ID
     - `APP_STORE_CONNECT_ISSUER_ID` → તમારો Issuer ID
     - `APP_STORE_CONNECT_API_KEY_B64` → `.p8` ફાઇલની અંદરનો સંપૂર્ણ ટેક્સ્ટ (અથવા Base64)
     - `APPLE_TEAM_ID` → તમારો 10-અંકનો Apple Team ID (Developer Membership પેજ પરથી મળશે)
4. **TestFlight બિલ્ડ રન કરો**:
   - GitHub ના **Actions** ટેબમાં જઈ **Build iOS & Upload to TestFlight** સિલેક્ટ કરી **Run workflow** દબાવો.
   - GitHub નું macOS ક્લાઉડ મશીન આપોઆપ એપ બિલ્ડ કરીને, સાઇન કરીને સીધી **Apple TestFlight** માં અપલોડ કરી દેશે!

> *(જો તમે ભવિષ્યમાં Mac પર જાતે બિલ્ડ કરવા માંગતા હો, તો `ios/App/App.xcworkspace` Xcode માં ખોલી સીધું Archive કરી શકો છો.)*

---

## 🔄 ફરીથી બિલ્ડ કરવા માટે (One-Click Rebuild)

જો તમે ભવિષ્યમાં કોઈ નેટિવ સેટિંગ્સ બદલો, તો રૂટમાં રહેલ **`build_apps.bat`** પર ડબલ ક્લિક કરવાથી આપોઆપ નવું APK અને AAB બની જશે.

