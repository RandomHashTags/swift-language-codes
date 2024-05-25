//
//  SwiftLanguageCodes.swift
//
//
//  Created by Evan Anderson on 5/25/24.
//

#if !(os(macOS) || os(iOS) || os(tvOS) || os(watchOS) || os(visionOS))
import Foundation

public extension Locale {
    struct LanguageCode : Hashable, Codable, Sendable, ExpressibleByStringLiteral, CustomDebugStringConvertible {
        public typealias ExtendedGraphemeClusterLiteralType = String
        public typealias StringLiteralType = String
        public typealias UnicodeScalarLiteralType = String

        public let identifier:String

        public init(stringLiteral value: String) {
            identifier = value
        }
        public init(_ identifier: String) {
            self.identifier = identifier
        }

        public enum IdentifierType : Sendable {
            /// Two-letter alpha-2 code, e.g. "en" for English
            case alpha2
            /// Three-letter alpha-3 code, e.g. "eng" for English
            case alpha3
        }

        public var debugDescription : String {
            return identifier
        }

        public func identifier(type: Locale.LanguageCode.IdentifierType) -> String? {
            switch type {
                case .alpha2: return alpha2()
                case .alpha3: return alpha3()
            }
        }

        public var isISOLanguage : Bool {
            return false // TODO: fix
        }
    }
}

// MARK: Alpha 2
extension Locale.LanguageCode {
    func alpha2() -> String? {
        switch self {
            case .afar: return "aa"
            case .abkhazian: return "ab"
            case .achinese: return "ace"
            case .acoli: return "ach"
            case .adangme: return "ada"
            case .adyghe: return "ady"
            case .avestan: return "ae"
            case .tunisianArabic: return "aeb"
            case .afrikaans: return "af"
            case .afrihili: return "afh"
            case .aghem: return "agq"
            case .ainu: return "ain"
            case .akan: return "ak"
            case .akkadian: return "akk"
            case .alabama: return "akz"
            case .aleut: return "ale"
            case .ghegAlbanian: return "aln"
            case .southernAltai: return "alt"
            case .amharic: return "am"
            case .aragonese: return "an"
            case .oldEnglish: return "ang"
            case .angika: return "anp"
            case .apache,Western: return "apw"
            case .arabic: return "ar"
            case .aramaic: return "arc"
            case .mapuche: return "arn"
            case .araona: return "aro"
            case .arapaho: return "arp"
            case .algerianArabic: return "arq"
            case .arabic,Najdi: return "ars"
            case .arawak: return "arw"
            case .moroccanArabic: return "ary"
            case .egyptianArabic: return "arz"
            case .assamese: return "as"
            case .asu: return "asa"
            case .americanSignLanguage: return "ase"
            case .asturian: return "ast"
            case .avaric: return "av"
            case .kotava: return "avk"
            case .awadhi: return "awa"
            case .aymara: return "ay"
            case .azerbaijani: return "az"
            case .bashkir: return "ba"
            case .baluchi: return "bal"
            case .balinese: return "ban"
            case .bavarian: return "bar"
            case .basaa: return "bas"
            case .bamun: return "bax"
            case .batakToba: return "bbc"
            case .ghomala: return "bbj"
            case .belarusian: return "be"
            case .beja: return "bej"
            case .bemba: return "bem"
            case .amazigh: return "ber"
            case .betawi: return "bew"
            case .bena: return "bez"
            case .bafut: return "bfd"
            case .badaga: return "bfq"
            case .bulgarian: return "bg"
            case .haryanvi: return "bgc"
            case .westernBalochi: return "bgn"
            case .bhojpuri: return "bho"
            case .bislama: return "bi"
            case .bikol: return "bik"
            case .bini: return "bin"
            case .banjar: return "bjn"
            case .kom: return "bkm"
            case .siksiká: return "bla"
            case .bambara: return "bm"
            case .bangla: return "bn"
            case .tibetan: return "bo"
            case .bishnupriya: return "bpy"
            case .bakhtiari: return "bqi"
            case .breton: return "br"
            case .braj: return "bra"
            case .brahui: return "brh"
            case .bodo: return "brx"
            case .bosnian: return "bs"
            case .akoose: return "bss"
            case .buriat: return "bua"
            case .buginese: return "bug"
            case .bulu: return "bum"
            case .blin: return "byn"
            case .medumba: return "byv"
            case .catalan: return "ca"
            case .caddo: return "cad"
            case .carib: return "car"
            case .cayuga: return "cay"
            case .atsam: return "cch"
            case .chakma: return "ccp"
            case .chechen: return "ce"
            case .cebuano: return "ceb"
            case .chiga: return "cgg"
            case .chamorro: return "ch"
            case .chibcha: return "chb"
            case .chagatai: return "chg"
            case .chuukese: return "chk"
            case .mari: return "chm"
            case .chinookJargon: return "chn"
            case .choctaw: return "cho"
            case .chipewyan: return "chp"
            case .cherokee: return "chr"
            case .cheyenne: return "chy"
            case .chickasaw: return "cic"
            case .kurdishSorani: return "ckb"
            case .corsican: return "co"
            case .coptic: return "cop"
            case .capiznon: return "cps"
            case .cree: return "cr"
            case .crimeanTatar: return "crh"
            case .czech: return "cs"
            case .kashubian: return "csb"
            case .churchSlavic: return "cu"
            case .chuvash: return "cv"
            case .welsh: return "cy"
            case .danish: return "da"
            case .dakota: return "dak"
            case .dargwa: return "dar"
            case .taita: return "dav"
            case .german: return "de"
            case .delaware: return "del"
            case .slave: return "den"
            case .dogrib: return "dgr"
            case .dinka: return "din"
            case .zarma: return "dje"
            case .dogri: return "doi"
            case .lowerSorbian: return "dsb"
            case .centralDusun: return "dtp"
            case .duala: return "dua"
            case .middleDutch: return "dum"
            case .dhivehi: return "dv"
            case .jolaFonyi: return "dyo"
            case .dyula: return "dyu"
            case .dzongkha: return "dz"
            case .dazaga: return "dzg"
            case .embu: return "ebu"
            case .ewe: return "ee"
            case .efik: return "efi"
            case .emilian: return "egl"
            case .ancientEgyptian: return "egy"
            case .ekajuk: return "eka"
            case .greek: return "el"
            case .elamite: return "elx"
            case .english: return "en"
            case .middleEnglish: return "enm"
            case .esperanto: return "eo"
            case .spanish: return "es"
            case .centralYupik: return "esu"
            case .estonian: return "et"
            case .basque: return "eu"
            case .ewondo: return "ewo"
            case .extremaduran: return "ext"
            case .persian: return "fa"
            case .fang: return "fan"
            case .fanti: return "fat"
            case .fula: return "ff"
            case .finnish: return "fi"
            case .filipino: return "fil"
            case .tornedalenFinnish: return "fit"
            case .fijian: return "fj"
            case .faroese: return "fo"
            case .fon: return "fon"
            case .french: return "fr"
            case .cajunFrench: return "frc"
            case .middleFrench: return "frm"
            case .oldFrench: return "fro"
            case .arpitan: return "frp"
            case .northernFrisian: return "frr"
            case .easternFrisian: return "frs"
            case .friulian: return "fur"
            case .westernFrisian: return "fy"
            case .irish: return "ga"
            case .ga: return "gaa"
            case .gagauz: return "gag"
            case .ganChinese: return "gan"
            case .gayo: return "gay"
            case .gbaya: return "gba"
            case .zoroastrianDari: return "gbz"
            case .scottishGaelic: return "gd"
            case .geez: return "gez"
            case .gilbertese: return "gil"
            case .galician: return "gl"
            case .gilaki: return "glk"
            case .middleHighGerman: return "gmh"
            case .guarani: return "gn"
            case .oldHighGerman: return "goh"
            case .goanKonkani: return "gom"
            case .gondi: return "gon"
            case .gorontalo: return "gor"
            case .gothic: return "got"
            case .grebo: return "grb"
            case .ancientGreek: return "grc"
            case .swissGerman: return "gsw"
            case .gujarati: return "gu"
            case .wayuu: return "guc"
            case .frafra: return "gur"
            case .gusii: return "guz"
            case .manx: return "gv"
            case .gwichin: return "gwi"
            case .hausa: return "ha"
            case .haida: return "hai"
            case .hakkaChinese: return "hak"
            case .hawaiian: return "haw"
            case .hebrew: return "he"
            case .hindi: return "hi"
            case .fijiHindi: return "hif"
            case .hiligaynon: return "hil"
            case .hittite: return "hit"
            case .hmong: return "hmn"
            case .hiriMotu: return "ho"
            case .croatian: return "hr"
            case .upperSorbian: return "hsb"
            case .xiangChinese: return "hsn"
            case .haitianCreole: return "ht"
            case .hungarian: return "hu"
            case .hupa: return "hup"
            case .armenian: return "hy"
            case .herero: return "hz"
            case .interlingua: return "ia"
            case .iban: return "iba"
            case .ibibio: return "ibb"
            case .indonesian: return "id"
            case .interlingue: return "ie"
            case .igbo: return "ig"
            case .liangshanYi: return "ii"
            case .inupiaq: return "ik"
            case .iloko: return "ilo"
            case .ingush: return "inh"
            case .ido: return "io"
            case .icelandic: return "is"
            case .italian: return "it"
            case .inuktitut: return "iu"
            case .ingrian: return "izh"
            case .japanese: return "ja"
            case .jamaicanCreoleEnglish: return "jam"
            case .lojban: return "jbo"
            case .ngomba: return "jgo"
            case .machame: return "jmc"
            case .judeoPersian: return "jpr"
            case .judeoArabic: return "jrb"
            case .jutish: return "jut"
            case .javanese: return "jv"
            case .georgian: return "ka"
            case .karaKalpak: return "kaa"
            case .kabyle: return "kab"
            case .kachin: return "kac"
            case .jju: return "kaj"
            case .kamba: return "kam"
            case .kawi: return "kaw"
            case .kabardian: return "kbd"
            case .kanembu: return "kbl"
            case .tyap: return "kcg"
            case .makonde: return "kde"
            case .kabuverdianu: return "kea"
            case .kenyang: return "ken"
            case .koro: return "kfo"
            case .kongo: return "kg"
            case .kaingang: return "kgp"
            case .khasi: return "kha"
            case .khotanese: return "kho"
            case .koyraChiini: return "khq"
            case .khowar: return "khw"
            case .kikuyu: return "ki"
            case .kirmanjki: return "kiu"
            case .kuanyama: return "kj"
            case .kazakh: return "kk"
            case .kako: return "kkj"
            case .kalaallisut: return "kl"
            case .kalenjin: return "kln"
            case .khmer: return "km"
            case .kimbundu: return "kmb"
            case .kannada: return "kn"
            case .korean: return "ko"
            case .komiPermyak: return "koi"
            case .konkani: return "kok"
            case .kosraean: return "kos"
            case .kpelle: return "kpe"
            case .kanuri: return "kr"
            case .karachayBalkar: return "krc"
            case .krio: return "kri"
            case .kinarayA: return "krj"
            case .karelian: return "krl"
            case .kurukh: return "kru"
            case .kashmiri: return "ks"
            case .shambala: return "ksb"
            case .bafia: return "ksf"
            case .colognian: return "ksh"
            case .kurdish: return "ku"
            case .kumyk: return "kum"
            case .kutenai: return "kut"
            case .komi: return "kv"
            case .cornish: return "kw"
            case .kyrgyz: return "ky"
            case .latin: return "la"
            case .ladino: return "lad"
            case .langi: return "lag"
            case .westernPanjabi: return "lah"
            case .lamba: return "lam"
            case .luxembourgish: return "lb"
            case .lezghian: return "lez"
            case .linguaFrancaNova: return "lfn"
            case .ganda: return "lg"
            case .limburgish: return "li"
            case .ligurian: return "lij"
            case .livonian: return "liv"
            case .lakota: return "lkt"
            case .lombard: return "lmo"
            case .lingala: return "ln"
            case .lao: return "lo"
            case .mongo: return "lol"
            case .lozi: return "loz"
            case .northernLuri: return "lrc"
            case .lithuanian: return "lt"
            case .latgalian: return "ltg"
            case .lubaKatanga: return "lu"
            case .lubaLulua: return "lua"
            case .luiseno: return "lui"
            case .lunda: return "lun"
            case .luo: return "luo"
            case .mizo: return "lus"
            case .luyia: return "luy"
            case .latvian: return "lv"
            case .literaryChinese: return "lzh"
            case .laz: return "lzz"
            case .madurese: return "mad"
            case .mafa: return "maf"
            case .magahi: return "mag"
            case .maithili: return "mai"
            case .makasar: return "mak"
            case .mandingo: return "man"
            case .masai: return "mas"
            case .maba: return "mde"
            case .moksha: return "mdf"
            case .maguindanaon: return "mdh"
            case .mandar: return "mdr"
            case .mende: return "men"
            case .meru: return "mer"
            case .morisyen: return "mfe"
            case .malagasy: return "mg"
            case .middleIrish: return "mga"
            case .makhuwaMeetto: return "mgh"
            case .meta: return "mgo"
            case .marshallese: return "mh"
            case .māori: return "mi"
            case .mikmaw: return "mic"
            case .mandaic: return "mid"
            case .minangkabau: return "min"
            case .uncoded: return "mis"
            case .macedonian: return "mk"
            case .malayalam: return "ml"
            case .mongolian: return "mn"
            case .manchu: return "mnc"
            case .manipuri: return "mni"
            case .mohawk: return "moh"
            case .mossi: return "mos"
            case .marathi: return "mr"
            case .westernMari: return "mrj"
            case .malay: return "ms"
            case .maltese: return "mt"
            case .mundang: return "mua"
            case .multiple: return "mul"
            case .muscogee: return "mus"
            case .mirandese: return "mwl"
            case .marwari: return "mwr"
            case .mentawai: return "mwv"
            case .burmese: return "my"
            case .myene: return "mye"
            case .erzya: return "myv"
            case .mazanderani: return "mzn"
            case .nauru: return "na"
            case .minNanChinese: return "nan"
            case .neapolitan: return "nap"
            case .nama: return "naq"
            case .norwegianBokmål: return "nb"
            case .northNdebele: return "nd"
            case .lowGerman: return "nds"
            case .nepali: return "ne"
            case .newari: return "new"
            case .ndonga: return "ng"
            case .nias: return "nia"
            case .niuean: return "niu"
            case .aoNaga: return "njo"
            case .dutch: return "nl"
            case .kwasio: return "nmg"
            case .norwegianNynorsk: return "nn"
            case .ngiemboon: return "nnh"
            case .wancho: return "nnp"
            case .norwegian: return "no"
            case .nogai: return "nog"
            case .oldNorse: return "non"
            case .novial: return "nov"
            case .nko: return "nqo"
            case .southNdebele: return "nr"
            case .northernSotho: return "nso"
            case .nuer: return "nus"
            case .navajo: return "nv"
            case .classicalNewari: return "nwc"
            case .nyanja: return "ny"
            case .nyamwezi: return "nym"
            case .nyankole: return "nyn"
            case .nyoro: return "nyo"
            case .nzima: return "nzi"
            case .occitan: return "oc"
            case .ojibwa: return "oj"
            case .oromo: return "om"
            case .odia: return "or"
            case .ossetic: return "os"
            case .osage: return "osa"
            case .ottomanTurkish: return "ota"
            case .oldTurkish: return "otk"
            case .oldUighur: return "oui"
            case .punjabi: return "pa"
            case .pangasinan: return "pag"
            case .pahlavi: return "pal"
            case .pampanga: return "pam"
            case .papiamento: return "pap"
            case .palauan: return "pau"
            case .picard: return "pcd"
            case .nigerianPidgin: return "pcm"
            case .pennsylvaniaGerman: return "pdc"
            case .plautdietsch: return "pdt"
            case .oldPersian: return "peo"
            case .palatineGerman: return "pfl"
            case .phoenician: return "phn"
            case .pali: return "pi"
            case .polish: return "pl"
            case .piedmontese: return "pms"
            case .pontic: return "pnt"
            case .pohnpeian: return "pon"
            case .wolastoqey: return "pqm"
            case .prussian: return "prg"
            case .oldProvençal: return "pro"
            case .pashto: return "ps"
            case .portuguese: return "pt"
            case .quechua: return "qu"
            case .kiche: return "quc"
            case .chimborazoHighlandQuichua: return "qug"
            case .rajasthani: return "raj"
            case .rapanui: return "rap"
            case .rarotongan: return "rar"
            case .rejang: return "rej"
            case .romagnol: return "rgn"
            case .rohingya: return "rhg"
            case .riffian: return "rif"
            case .romansh: return "rm"
            case .rundi: return "rn"
            case .romanian: return "ro"
            case .rombo: return "rof"
            case .romany: return "rom"
            case .rotuman: return "rtm"
            case .russian: return "ru"
            case .rusyn: return "rue"
            case .roviana: return "rug"
            case .aromanian: return "rup"
            case .kinyarwanda: return "rw"
            case .rwa: return "rwk"
            case .sanskrit: return "sa"
            case .sandawe: return "sad"
            case .sakha: return "sah"
            case .samaritanAramaic: return "sam"
            case .samburu: return "saq"
            case .sasak: return "sas"
            case .santali: return "sat"
            case .saurashtra: return "saz"
            case .ngambay: return "sba"
            case .sangu: return "sbp"
            case .sardinian: return "sc"
            case .sicilian: return "scn"
            case .scots: return "sco"
            case .sindhi: return "sd"
            case .sassareseSardinian: return "sdc"
            case .southernKurdish: return "sdh"
            case .northernSami: return "se"
            case .seneca: return "see"
            case .sena: return "seh"
            case .seri: return "sei"
            case .selkup: return "sel"
            case .koyraboroSenni: return "ses"
            case .sango: return "sg"
            case .oldIrish: return "sga"
            case .samogitian: return "sgs"
            case .tachelhit: return "shi"
            case .shan: return "shn"
            case .chadianArabic: return "shu"
            case .sinhala: return "si"
            case .sidamo: return "sid"
            case .slovak: return "sk"
            case .slovenian: return "sl"
            case .lowerSilesian: return "sli"
            case .selayar: return "sly"
            case .samoan: return "sm"
            case .southernSami: return "sma"
            case .luleSami: return "smj"
            case .inariSami: return "smn"
            case .skoltSami: return "sms"
            case .shona: return "sn"
            case .soninke: return "snk"
            case .somali: return "so"
            case .sogdien: return "sog"
            case .albanian: return "sq"
            case .serbian: return "sr"
            case .srananTongo: return "srn"
            case .serer: return "srr"
            case .swati: return "ss"
            case .saho: return "ssy"
            case .southernSotho: return "st"
            case .saterlandFrisian: return "stq"
            case .sundanese: return "su"
            case .sukuma: return "suk"
            case .susu: return "sus"
            case .sumerian: return "sux"
            case .swedish: return "sv"
            case .swahili: return "sw"
            case .comorian: return "swb"
            case .classicalSyriac: return "syc"
            case .assyrian: return "syr"
            case .silesian: return "szl"
            case .tamil: return "ta"
            case .tulu: return "tcy"
            case .telugu: return "te"
            case .timne: return "tem"
            case .teso: return "teo"
            case .tereno: return "ter"
            case .tetum: return "tet"
            case .tajik: return "tg"
            case .thai: return "th"
            case .tigrinya: return "ti"
            case .tigre: return "tig"
            case .tiv: return "tiv"
            case .turkmen: return "tk"
            case .tokelau: return "tkl"
            case .tsakhur: return "tkr"
            case .klingon: return "tlh"
            case .tlingit: return "tli"
            case .talysh: return "tly"
            case .tamashek: return "tmh"
            case .tswana: return "tn"
            case .tongan: return "to"
            case .nyasaTonga: return "tog"
            case .tokPisin: return "tpi"
            case .turkish: return "tr"
            case .turoyo: return "tru"
            case .taroko: return "trv"
            case .tsonga: return "ts"
            case .tsakonian: return "tsd"
            case .tsimshian: return "tsi"
            case .tatar: return "tt"
            case .muslimTat: return "ttt"
            case .tumbuka: return "tum"
            case .tuvalu: return "tvl"
            case .twi: return "tw"
            case .tasawaq: return "twq"
            case .tahitian: return "ty"
            case .tuvinian: return "tyv"
            case .centralAtlasTamazight: return "tzm"
            case .udmurt: return "udm"
            case .uyghur: return "ug"
            case .ugaritic: return "uga"
            case .ukrainian: return "uk"
            case .umbundu: return "umb"
            case .unidentified: return "und"
            case .urdu: return "ur"
            case .uzbek: return "uz"
            case .vai: return "vai"
            case .venda: return "ve"
            case .venetian: return "vec"
            case .veps: return "vep"
            case .vietnamese: return "vi"
            case .westFlemish: return "vls"
            case .mainFranconian: return "vmf"
            case .makhuwa: return "vmw"
            case .volapük: return "vo"
            case .votic: return "vot"
            case .võro: return "vro"
            case .vunjo: return "vun"
            case .walloon: return "wa"
            case .walser: return "wae"
            case .wolaytta: return "wal"
            case .waray: return "war"
            case .washo: return "was"
            case .warlpiri: return "wbp"
            case .wolof: return "wo"
            case .shanghainese: return "wuu"
            case .kalmyk: return "xal"
            case .xhosa: return "xh"
            case .mingrelian: return "xmf"
            case .soga: return "xog"
            case .yao: return "yao"
            case .yapese: return "yap"
            case .yangben: return "yav"
            case .yemba: return "ybb"
            case .yiddish: return "yi"
            case .yoruba: return "yo"
            case .nheengatu: return "yrl"
            case .cantonese: return "yue"
            case .zhuang: return "za"
            case .zapotec: return "zap"
            case .blissymbols: return "zbl"
            case .zeelandic: return "zea"
            case .zenaga: return "zen"
            case .tamazightStandardMoroccan: return "zgh"
            case .chinese: return "zh"
            case .zulu: return "zu"
            case .zuni: return "zun"
            case .unavailable: return "zxx"
            case .zaza: return "zza"
            default: return nil
        }
    }
}

// MARK: Alpha 3
extension Locale.LanguageCode {
    func alpha3() -> String? {
        switch self {
            case .afar: return "aar"
            case .abkhazian: return "abk"
            case .achinese: return "ace"
            case .acoli: return "ach"
            case .adangme: return "ada"
            case .adyghe: return "ady"
            case .avestan: return "ave"
            case .tunisianArabic: return "aeb"
            case .afrikaans: return "afr"
            case .afrihili: return "afh"
            case .aghem: return "agq"
            case .ainu: return "ain"
            case .akan: return "aka"
            case .akkadian: return "akk"
            case .alabama: return "akz"
            case .aleut: return "ale"
            case .ghegAlbanian: return "aln"
            case .southernAltai: return "alt"
            case .amharic: return "amh"
            case .aragonese: return "arg"
            case .oldEnglish: return "ang"
            case .angika: return "anp"
            case .apache,Western: return "apw"
            case .arabic: return "ara"
            case .aramaic: return "arc"
            case .mapuche: return "arn"
            case .araona: return "aro"
            case .arapaho: return "arp"
            case .algerianArabic: return "arq"
            case .arabic,Najdi: return "ars"
            case .arawak: return "arw"
            case .moroccanArabic: return "ary"
            case .egyptianArabic: return "arz"
            case .assamese: return "asm"
            case .asu: return "asa"
            case .americanSignLanguage: return "ase"
            case .asturian: return "ast"
            case .avaric: return "ava"
            case .kotava: return "avk"
            case .awadhi: return "awa"
            case .aymara: return "aym"
            case .azerbaijani: return "aze"
            case .bashkir: return "bak"
            case .baluchi: return "bal"
            case .balinese: return "ban"
            case .bavarian: return "bar"
            case .basaa: return "bas"
            case .bamun: return "bax"
            case .batakToba: return "bbc"
            case .ghomala: return "bbj"
            case .belarusian: return "bel"
            case .beja: return "bej"
            case .bemba: return "bem"
            case .amazigh: return "ber"
            case .betawi: return "bew"
            case .bena: return "bez"
            case .bafut: return "bfd"
            case .badaga: return "bfq"
            case .bulgarian: return "bul"
            case .haryanvi: return "bgc"
            case .westernBalochi: return "bgn"
            case .bhojpuri: return "bho"
            case .bislama: return "bis"
            case .bikol: return "bik"
            case .bini: return "bin"
            case .banjar: return "bjn"
            case .kom: return "bkm"
            case .siksiká: return "bla"
            case .bambara: return "bam"
            case .bangla: return "ben"
            case .tibetan: return "bod"
            case .bishnupriya: return "bpy"
            case .bakhtiari: return "bqi"
            case .breton: return "bre"
            case .braj: return "bra"
            case .brahui: return "brh"
            case .bodo: return "brx"
            case .bosnian: return "bos"
            case .akoose: return "bss"
            case .buriat: return "bua"
            case .buginese: return "bug"
            case .bulu: return "bum"
            case .blin: return "byn"
            case .medumba: return "byv"
            case .catalan: return "cat"
            case .caddo: return "cad"
            case .carib: return "car"
            case .cayuga: return "cay"
            case .atsam: return "cch"
            case .chakma: return "ccp"
            case .chechen: return "che"
            case .cebuano: return "ceb"
            case .chiga: return "cgg"
            case .chamorro: return "cha"
            case .chibcha: return "chb"
            case .chagatai: return "chg"
            case .chuukese: return "chk"
            case .mari: return "chm"
            case .chinookJargon: return "chn"
            case .choctaw: return "cho"
            case .chipewyan: return "chp"
            case .cherokee: return "chr"
            case .cheyenne: return "chy"
            case .chickasaw: return "cic"
            case .kurdishSorani: return "ckb"
            case .corsican: return "cos"
            case .coptic: return "cop"
            case .capiznon: return "cps"
            case .cree: return "cre"
            case .crimeanTatar: return "crh"
            case .czech: return "ces"
            case .kashubian: return "csb"
            case .churchSlavic: return "chu"
            case .chuvash: return "chv"
            case .welsh: return "cym"
            case .danish: return "dan"
            case .dakota: return "dak"
            case .dargwa: return "dar"
            case .taita: return "dav"
            case .german: return "deu"
            case .delaware: return "del"
            case .slave: return "den"
            case .dogrib: return "dgr"
            case .dinka: return "din"
            case .zarma: return "dje"
            case .dogri: return "doi"
            case .lowerSorbian: return "dsb"
            case .centralDusun: return "dtp"
            case .duala: return "dua"
            case .middleDutch: return "dum"
            case .dhivehi: return "div"
            case .jolaFonyi: return "dyo"
            case .dyula: return "dyu"
            case .dzongkha: return "dzo"
            case .dazaga: return "dzg"
            case .embu: return "ebu"
            case .ewe: return "ewe"
            case .efik: return "efi"
            case .emilian: return "egl"
            case .ancientEgyptian: return "egy"
            case .ekajuk: return "eka"
            case .greek: return "ell"
            case .elamite: return "elx"
            case .english: return "eng"
            case .middleEnglish: return "enm"
            case .esperanto: return "epo"
            case .spanish: return "spa"
            case .centralYupik: return "esu"
            case .estonian: return "est"
            case .basque: return "eus"
            case .ewondo: return "ewo"
            case .extremaduran: return "ext"
            case .persian: return "fas"
            case .fang: return "fan"
            case .fanti: return "fat"
            case .fula: return "ful"
            case .finnish: return "fin"
            case .filipino: return "fil"
            case .tornedalenFinnish: return "fit"
            case .fijian: return "fij"
            case .faroese: return "fao"
            case .fon: return "fon"
            case .french: return "fra"
            case .cajunFrench: return "frc"
            case .middleFrench: return "frm"
            case .oldFrench: return "fro"
            case .arpitan: return "frp"
            case .northernFrisian: return "frr"
            case .easternFrisian: return "frs"
            case .friulian: return "fur"
            case .westernFrisian: return "fry"
            case .irish: return "gle"
            case .ga: return "gaa"
            case .gagauz: return "gag"
            case .ganChinese: return "gan"
            case .gayo: return "gay"
            case .gbaya: return "gba"
            case .zoroastrianDari: return "gbz"
            case .scottishGaelic: return "gla"
            case .geez: return "gez"
            case .gilbertese: return "gil"
            case .galician: return "glg"
            case .gilaki: return "glk"
            case .middleHighGerman: return "gmh"
            case .guarani: return "grn"
            case .oldHighGerman: return "goh"
            case .goanKonkani: return "gom"
            case .gondi: return "gon"
            case .gorontalo: return "gor"
            case .gothic: return "got"
            case .grebo: return "grb"
            case .ancientGreek: return "grc"
            case .swissGerman: return "gsw"
            case .gujarati: return "guj"
            case .wayuu: return "guc"
            case .frafra: return "gur"
            case .gusii: return "guz"
            case .manx: return "glv"
            case .gwichin: return "gwi"
            case .hausa: return "hau"
            case .haida: return "hai"
            case .hakkaChinese: return "hak"
            case .hawaiian: return "haw"
            case .hebrew: return "heb"
            case .hindi: return "hin"
            case .fijiHindi: return "hif"
            case .hiligaynon: return "hil"
            case .hittite: return "hit"
            case .hmong: return "hmn"
            case .hiriMotu: return "hmo"
            case .croatian: return "hrv"
            case .upperSorbian: return "hsb"
            case .xiangChinese: return "hsn"
            case .haitianCreole: return "hat"
            case .hungarian: return "hun"
            case .hupa: return "hup"
            case .armenian: return "hye"
            case .herero: return "her"
            case .interlingua: return "ina"
            case .iban: return "iba"
            case .ibibio: return "ibb"
            case .indonesian: return "ind"
            case .interlingue: return "ile"
            case .igbo: return "ibo"
            case .liangshanYi: return "iii"
            case .inupiaq: return "ipk"
            case .iloko: return "ilo"
            case .ingush: return "inh"
            case .ido: return "ido"
            case .icelandic: return "isl"
            case .italian: return "ita"
            case .inuktitut: return "iku"
            case .ingrian: return "izh"
            case .japanese: return "jpn"
            case .jamaicanCreoleEnglish: return "jam"
            case .lojban: return "jbo"
            case .ngomba: return "jgo"
            case .machame: return "jmc"
            case .judeoPersian: return "jpr"
            case .judeoArabic: return "jrb"
            case .jutish: return "jut"
            case .javanese: return "jav"
            case .georgian: return "kat"
            case .karaKalpak: return "kaa"
            case .kabyle: return "kab"
            case .kachin: return "kac"
            case .jju: return "kaj"
            case .kamba: return "kam"
            case .kawi: return "kaw"
            case .kabardian: return "kbd"
            case .kanembu: return "kbl"
            case .tyap: return "kcg"
            case .makonde: return "kde"
            case .kabuverdianu: return "kea"
            case .kenyang: return "ken"
            case .koro: return "kfo"
            case .kongo: return "kon"
            case .kaingang: return "kgp"
            case .khasi: return "kha"
            case .khotanese: return "kho"
            case .koyraChiini: return "khq"
            case .khowar: return "khw"
            case .kikuyu: return "kik"
            case .kirmanjki: return "kiu"
            case .kuanyama: return "kua"
            case .kazakh: return "kaz"
            case .kako: return "kkj"
            case .kalaallisut: return "kal"
            case .kalenjin: return "kln"
            case .khmer: return "khm"
            case .kimbundu: return "kmb"
            case .kannada: return "kan"
            case .korean: return "kor"
            case .komiPermyak: return "koi"
            case .konkani: return "kok"
            case .kosraean: return "kos"
            case .kpelle: return "kpe"
            case .kanuri: return "kau"
            case .karachayBalkar: return "krc"
            case .krio: return "kri"
            case .kinarayA: return "krj"
            case .karelian: return "krl"
            case .kurukh: return "kru"
            case .kashmiri: return "kas"
            case .shambala: return "ksb"
            case .bafia: return "ksf"
            case .colognian: return "ksh"
            case .kurdish: return "kur"
            case .kumyk: return "kum"
            case .kutenai: return "kut"
            case .komi: return "kom"
            case .cornish: return "cor"
            case .kyrgyz: return "kir"
            case .latin: return "lat"
            case .ladino: return "lad"
            case .langi: return "lag"
            case .westernPanjabi: return "lah"
            case .lamba: return "lam"
            case .luxembourgish: return "ltz"
            case .lezghian: return "lez"
            case .linguaFrancaNova: return "lfn"
            case .ganda: return "lug"
            case .limburgish: return "lim"
            case .ligurian: return "lij"
            case .livonian: return "liv"
            case .lakota: return "lkt"
            case .lombard: return "lmo"
            case .lingala: return "lin"
            case .lao: return "lao"
            case .mongo: return "lol"
            case .lozi: return "loz"
            case .northernLuri: return "lrc"
            case .lithuanian: return "lit"
            case .latgalian: return "ltg"
            case .lubaKatanga: return "lub"
            case .lubaLulua: return "lua"
            case .luiseno: return "lui"
            case .lunda: return "lun"
            case .luo: return "luo"
            case .mizo: return "lus"
            case .luyia: return "luy"
            case .latvian: return "lav"
            case .literaryChinese: return "lzh"
            case .laz: return "lzz"
            case .madurese: return "mad"
            case .mafa: return "maf"
            case .magahi: return "mag"
            case .maithili: return "mai"
            case .makasar: return "mak"
            case .mandingo: return "man"
            case .masai: return "mas"
            case .maba: return "mde"
            case .moksha: return "mdf"
            case .maguindanaon: return "mdh"
            case .mandar: return "mdr"
            case .mende: return "men"
            case .meru: return "mer"
            case .morisyen: return "mfe"
            case .malagasy: return "mlg"
            case .middleIrish: return "mga"
            case .makhuwaMeetto: return "mgh"
            case .meta: return "mgo"
            case .marshallese: return "mah"
            case .māori: return "mri"
            case .mikmaw: return "mic"
            case .mandaic: return "mid"
            case .minangkabau: return "min"
            case .uncoded: return "mis"
            case .macedonian: return "mkd"
            case .malayalam: return "mal"
            case .mongolian: return "mon"
            case .manchu: return "mnc"
            case .manipuri: return "mni"
            case .mohawk: return "moh"
            case .mossi: return "mos"
            case .marathi: return "mar"
            case .westernMari: return "mrj"
            case .malay: return "msa"
            case .maltese: return "mlt"
            case .mundang: return "mua"
            case .multiple: return "mul"
            case .muscogee: return "mus"
            case .mirandese: return "mwl"
            case .marwari: return "mwr"
            case .mentawai: return "mwv"
            case .burmese: return "mya"
            case .myene: return "mye"
            case .erzya: return "myv"
            case .mazanderani: return "mzn"
            case .nauru: return "nau"
            case .minNanChinese: return "nan"
            case .neapolitan: return "nap"
            case .nama: return "naq"
            case .norwegianBokmål: return "nob"
            case .northNdebele: return "nde"
            case .lowGerman: return "nds"
            case .nepali: return "nep"
            case .newari: return "new"
            case .ndonga: return "ndo"
            case .nias: return "nia"
            case .niuean: return "niu"
            case .aoNaga: return "njo"
            case .dutch: return "nld"
            case .kwasio: return "nmg"
            case .norwegianNynorsk: return "nno"
            case .ngiemboon: return "nnh"
            case .wancho: return "nnp"
            case .norwegian: return "nor"
            case .nogai: return "nog"
            case .oldNorse: return "non"
            case .novial: return "nov"
            case .nko: return "nqo"
            case .southNdebele: return "nbl"
            case .northernSotho: return "nso"
            case .nuer: return "nus"
            case .navajo: return "nav"
            case .classicalNewari: return "nwc"
            case .nyanja: return "nya"
            case .nyamwezi: return "nym"
            case .nyankole: return "nyn"
            case .nyoro: return "nyo"
            case .nzima: return "nzi"
            case .occitan: return "oci"
            case .ojibwa: return "oji"
            case .oromo: return "orm"
            case .odia: return "ori"
            case .ossetic: return "oss"
            case .osage: return "osa"
            case .ottomanTurkish: return "ota"
            case .oldTurkish: return "otk"
            case .oldUighur: return "oui"
            case .punjabi: return "pan"
            case .pangasinan: return "pag"
            case .pahlavi: return "pal"
            case .pampanga: return "pam"
            case .papiamento: return "pap"
            case .palauan: return "pau"
            case .picard: return "pcd"
            case .nigerianPidgin: return "pcm"
            case .pennsylvaniaGerman: return "pdc"
            case .plautdietsch: return "pdt"
            case .oldPersian: return "peo"
            case .palatineGerman: return "pfl"
            case .phoenician: return "phn"
            case .pali: return "pli"
            case .polish: return "pol"
            case .piedmontese: return "pms"
            case .pontic: return "pnt"
            case .pohnpeian: return "pon"
            case .wolastoqey: return "pqm"
            case .prussian: return "prg"
            case .oldProvençal: return "pro"
            case .pashto: return "pus"
            case .portuguese: return "por"
            case .quechua: return "que"
            case .kiche: return "quc"
            case .chimborazoHighlandQuichua: return "qug"
            case .rajasthani: return "raj"
            case .rapanui: return "rap"
            case .rarotongan: return "rar"
            case .rejang: return "rej"
            case .romagnol: return "rgn"
            case .rohingya: return "rhg"
            case .riffian: return "rif"
            case .romansh: return "roh"
            case .rundi: return "run"
            case .romanian: return "ron"
            case .rombo: return "rof"
            case .romany: return "rom"
            case .rotuman: return "rtm"
            case .russian: return "rus"
            case .rusyn: return "rue"
            case .roviana: return "rug"
            case .aromanian: return "rup"
            case .kinyarwanda: return "kin"
            case .rwa: return "rwk"
            case .sanskrit: return "san"
            case .sandawe: return "sad"
            case .sakha: return "sah"
            case .samaritanAramaic: return "sam"
            case .samburu: return "saq"
            case .sasak: return "sas"
            case .santali: return "sat"
            case .saurashtra: return "saz"
            case .ngambay: return "sba"
            case .sangu: return "sbp"
            case .sardinian: return "srd"
            case .sicilian: return "scn"
            case .scots: return "sco"
            case .sindhi: return "snd"
            case .sassareseSardinian: return "sdc"
            case .southernKurdish: return "sdh"
            case .northernSami: return "sme"
            case .seneca: return "see"
            case .sena: return "seh"
            case .seri: return "sei"
            case .selkup: return "sel"
            case .koyraboroSenni: return "ses"
            case .sango: return "sag"
            case .oldIrish: return "sga"
            case .samogitian: return "sgs"
            case .tachelhit: return "shi"
            case .shan: return "shn"
            case .chadianArabic: return "shu"
            case .sinhala: return "sin"
            case .sidamo: return "sid"
            case .slovak: return "slk"
            case .slovenian: return "slv"
            case .lowerSilesian: return "sli"
            case .selayar: return "sly"
            case .samoan: return "smo"
            case .southernSami: return "sma"
            case .luleSami: return "smj"
            case .inariSami: return "smn"
            case .skoltSami: return "sms"
            case .shona: return "sna"
            case .soninke: return "snk"
            case .somali: return "som"
            case .sogdien: return "sog"
            case .albanian: return "sqi"
            case .serbian: return "srp"
            case .srananTongo: return "srn"
            case .serer: return "srr"
            case .swati: return "ssw"
            case .saho: return "ssy"
            case .southernSotho: return "sot"
            case .saterlandFrisian: return "stq"
            case .sundanese: return "sun"
            case .sukuma: return "suk"
            case .susu: return "sus"
            case .sumerian: return "sux"
            case .swedish: return "swe"
            case .swahili: return "swa"
            case .comorian: return "swb"
            case .classicalSyriac: return "syc"
            case .assyrian: return "syr"
            case .silesian: return "szl"
            case .tamil: return "tam"
            case .tulu: return "tcy"
            case .telugu: return "tel"
            case .timne: return "tem"
            case .teso: return "teo"
            case .tereno: return "ter"
            case .tetum: return "tet"
            case .tajik: return "tgk"
            case .thai: return "tha"
            case .tigrinya: return "tir"
            case .tigre: return "tig"
            case .tiv: return "tiv"
            case .turkmen: return "tuk"
            case .tokelau: return "tkl"
            case .tsakhur: return "tkr"
            case .klingon: return "tlh"
            case .tlingit: return "tli"
            case .talysh: return "tly"
            case .tamashek: return "tmh"
            case .tswana: return "tsn"
            case .tongan: return "ton"
            case .nyasaTonga: return "tog"
            case .tokPisin: return "tpi"
            case .turkish: return "tur"
            case .turoyo: return "tru"
            case .taroko: return "trv"
            case .tsonga: return "tso"
            case .tsakonian: return "tsd"
            case .tsimshian: return "tsi"
            case .tatar: return "tat"
            case .muslimTat: return "ttt"
            case .tumbuka: return "tum"
            case .tuvalu: return "tvl"
            case .twi: return "twi"
            case .tasawaq: return "twq"
            case .tahitian: return "tah"
            case .tuvinian: return "tyv"
            case .centralAtlasTamazight: return "tzm"
            case .udmurt: return "udm"
            case .uyghur: return "uig"
            case .ugaritic: return "uga"
            case .ukrainian: return "ukr"
            case .umbundu: return "umb"
            case .unidentified: return "und"
            case .urdu: return "urd"
            case .uzbek: return "uzb"
            case .vai: return "vai"
            case .venda: return "ven"
            case .venetian: return "vec"
            case .veps: return "vep"
            case .vietnamese: return "vie"
            case .westFlemish: return "vls"
            case .mainFranconian: return "vmf"
            case .makhuwa: return "vmw"
            case .volapük: return "vol"
            case .votic: return "vot"
            case .võro: return "vro"
            case .vunjo: return "vun"
            case .walloon: return "wln"
            case .walser: return "wae"
            case .wolaytta: return "wal"
            case .waray: return "war"
            case .washo: return "was"
            case .warlpiri: return "wbp"
            case .wolof: return "wol"
            case .shanghainese: return "wuu"
            case .kalmyk: return "xal"
            case .xhosa: return "xho"
            case .mingrelian: return "xmf"
            case .soga: return "xog"
            case .yao: return "yao"
            case .yapese: return "yap"
            case .yangben: return "yav"
            case .yemba: return "ybb"
            case .yiddish: return "yid"
            case .yoruba: return "yor"
            case .nheengatu: return "yrl"
            case .cantonese: return "yue"
            case .zhuang: return "zha"
            case .zapotec: return "zap"
            case .blissymbols: return "zbl"
            case .zeelandic: return "zea"
            case .zenaga: return "zen"
            case .tamazightStandardMoroccan: return "zgh"
            case .chinese: return "zho"
            case .zulu: return "zul"
            case .zuni: return "zun"
            case .unavailable: return "zxx"
            case .zaza: return "zza"
            default: return nil
        }
    }
}

// MARK: Language codes
public extension Locale.LanguageCode {
    /// The `und` code: used in cases where the language has not been identified
    static let unidentified:Locale.LanguageCode = Locale.LanguageCode("und")
    /// The `mis` code: represents languages that have no been included in the ISO standard yet
    static let uncoded:Locale.LanguageCode = Locale.LanguageCode("mis")
    /// The `mul` code: represents the language of some content when there are more than one languages
    static let multiple:Locale.LanguageCode = Locale.LanguageCode("mul")
    /// The `zxx` code: used in cases when the content is not in any particular languages, such as images, symbols, etc.
    static let unavailable:Locale.LanguageCode = Locale.LanguageCode("zxx")
}

extension Locale.LanguageCode {
    static func get(_ identifier: String) -> Locale.LanguageCode {
        return Locale.LanguageCode(identifier)
    }
}

public extension Locale.LanguageCode {
    static let isoLanguageCodes : [Locale.LanguageCode] = {
        return [] // TODO: fix
    }()
}

public extension Locale.LanguageCode {
    static let afar:Locale.LanguageCode = get("aa")
    static let abkhazian:Locale.LanguageCode = get("ab")
    static let achinese:Locale.LanguageCode = get("ace")
    static let acoli:Locale.LanguageCode = get("ach")
    static let adangme:Locale.LanguageCode = get("ada")
    static let adyghe:Locale.LanguageCode = get("ady")
    static let avestan:Locale.LanguageCode = get("ae")
    static let tunisianArabic:Locale.LanguageCode = get("aeb")
    static let afrikaans:Locale.LanguageCode = get("af")
    static let afrihili:Locale.LanguageCode = get("afh")
    static let aghem:Locale.LanguageCode = get("agq")
    static let ainu:Locale.LanguageCode = get("ain")
    static let akan:Locale.LanguageCode = get("ak")
    static let akkadian:Locale.LanguageCode = get("akk")
    static let alabama:Locale.LanguageCode = get("akz")
    static let aleut:Locale.LanguageCode = get("ale")
    static let ghegAlbanian:Locale.LanguageCode = get("aln")
    static let southernAltai:Locale.LanguageCode = get("alt")
    static let amharic:Locale.LanguageCode = get("am")
    static let aragonese:Locale.LanguageCode = get("an")
    static let oldEnglish:Locale.LanguageCode = get("ang")
    static let angika:Locale.LanguageCode = get("anp")
    static let apache,Western:Locale.LanguageCode = get("apw")
    static let arabic:Locale.LanguageCode = get("ar")
    static let aramaic:Locale.LanguageCode = get("arc")
    static let mapuche:Locale.LanguageCode = get("arn")
    static let araona:Locale.LanguageCode = get("aro")
    static let arapaho:Locale.LanguageCode = get("arp")
    static let algerianArabic:Locale.LanguageCode = get("arq")
    static let arabic,Najdi:Locale.LanguageCode = get("ars")
    static let arawak:Locale.LanguageCode = get("arw")
    static let moroccanArabic:Locale.LanguageCode = get("ary")
    static let egyptianArabic:Locale.LanguageCode = get("arz")
    static let assamese:Locale.LanguageCode = get("as")
    static let asu:Locale.LanguageCode = get("asa")
    static let americanSignLanguage:Locale.LanguageCode = get("ase")
    static let asturian:Locale.LanguageCode = get("ast")
    static let avaric:Locale.LanguageCode = get("av")
    static let kotava:Locale.LanguageCode = get("avk")
    static let awadhi:Locale.LanguageCode = get("awa")
    static let aymara:Locale.LanguageCode = get("ay")
    static let azerbaijani:Locale.LanguageCode = get("az")
    static let bashkir:Locale.LanguageCode = get("ba")
    static let baluchi:Locale.LanguageCode = get("bal")
    static let balinese:Locale.LanguageCode = get("ban")
    static let bavarian:Locale.LanguageCode = get("bar")
    static let basaa:Locale.LanguageCode = get("bas")
    static let bamun:Locale.LanguageCode = get("bax")
    static let batakToba:Locale.LanguageCode = get("bbc")
    static let ghomala:Locale.LanguageCode = get("bbj")
    static let belarusian:Locale.LanguageCode = get("be")
    static let beja:Locale.LanguageCode = get("bej")
    static let bemba:Locale.LanguageCode = get("bem")
    static let amazigh:Locale.LanguageCode = get("ber")
    static let betawi:Locale.LanguageCode = get("bew")
    static let bena:Locale.LanguageCode = get("bez")
    static let bafut:Locale.LanguageCode = get("bfd")
    static let badaga:Locale.LanguageCode = get("bfq")
    static let bulgarian:Locale.LanguageCode = get("bg")
    static let haryanvi:Locale.LanguageCode = get("bgc")
    static let westernBalochi:Locale.LanguageCode = get("bgn")
    static let bhojpuri:Locale.LanguageCode = get("bho")
    static let bislama:Locale.LanguageCode = get("bi")
    static let bikol:Locale.LanguageCode = get("bik")
    static let bini:Locale.LanguageCode = get("bin")
    static let banjar:Locale.LanguageCode = get("bjn")
    static let kom:Locale.LanguageCode = get("bkm")
    static let siksiká:Locale.LanguageCode = get("bla")
    static let bambara:Locale.LanguageCode = get("bm")
    static let bangla:Locale.LanguageCode = get("bn")
    static let tibetan:Locale.LanguageCode = get("bo")
    static let bishnupriya:Locale.LanguageCode = get("bpy")
    static let bakhtiari:Locale.LanguageCode = get("bqi")
    static let breton:Locale.LanguageCode = get("br")
    static let braj:Locale.LanguageCode = get("bra")
    static let brahui:Locale.LanguageCode = get("brh")
    static let bodo:Locale.LanguageCode = get("brx")
    static let bosnian:Locale.LanguageCode = get("bs")
    static let akoose:Locale.LanguageCode = get("bss")
    static let buriat:Locale.LanguageCode = get("bua")
    static let buginese:Locale.LanguageCode = get("bug")
    static let bulu:Locale.LanguageCode = get("bum")
    static let blin:Locale.LanguageCode = get("byn")
    static let medumba:Locale.LanguageCode = get("byv")
    static let catalan:Locale.LanguageCode = get("ca")
    static let caddo:Locale.LanguageCode = get("cad")
    static let carib:Locale.LanguageCode = get("car")
    static let cayuga:Locale.LanguageCode = get("cay")
    static let atsam:Locale.LanguageCode = get("cch")
    static let chakma:Locale.LanguageCode = get("ccp")
    static let chechen:Locale.LanguageCode = get("ce")
    static let cebuano:Locale.LanguageCode = get("ceb")
    static let chiga:Locale.LanguageCode = get("cgg")
    static let chamorro:Locale.LanguageCode = get("ch")
    static let chibcha:Locale.LanguageCode = get("chb")
    static let chagatai:Locale.LanguageCode = get("chg")
    static let chuukese:Locale.LanguageCode = get("chk")
    static let mari:Locale.LanguageCode = get("chm")
    static let chinookJargon:Locale.LanguageCode = get("chn")
    static let choctaw:Locale.LanguageCode = get("cho")
    static let chipewyan:Locale.LanguageCode = get("chp")
    static let cherokee:Locale.LanguageCode = get("chr")
    static let cheyenne:Locale.LanguageCode = get("chy")
    static let chickasaw:Locale.LanguageCode = get("cic")
    static let kurdishSorani:Locale.LanguageCode = get("ckb")
    static let corsican:Locale.LanguageCode = get("co")
    static let coptic:Locale.LanguageCode = get("cop")
    static let capiznon:Locale.LanguageCode = get("cps")
    static let cree:Locale.LanguageCode = get("cr")
    static let crimeanTatar:Locale.LanguageCode = get("crh")
    static let czech:Locale.LanguageCode = get("cs")
    static let kashubian:Locale.LanguageCode = get("csb")
    static let churchSlavic:Locale.LanguageCode = get("cu")
    static let chuvash:Locale.LanguageCode = get("cv")
    static let welsh:Locale.LanguageCode = get("cy")
    static let danish:Locale.LanguageCode = get("da")
    static let dakota:Locale.LanguageCode = get("dak")
    static let dargwa:Locale.LanguageCode = get("dar")
    static let taita:Locale.LanguageCode = get("dav")
    static let german:Locale.LanguageCode = get("de")
    static let delaware:Locale.LanguageCode = get("del")
    static let slave:Locale.LanguageCode = get("den")
    static let dogrib:Locale.LanguageCode = get("dgr")
    static let dinka:Locale.LanguageCode = get("din")
    static let zarma:Locale.LanguageCode = get("dje")
    static let dogri:Locale.LanguageCode = get("doi")
    static let lowerSorbian:Locale.LanguageCode = get("dsb")
    static let centralDusun:Locale.LanguageCode = get("dtp")
    static let duala:Locale.LanguageCode = get("dua")
    static let middleDutch:Locale.LanguageCode = get("dum")
    static let dhivehi:Locale.LanguageCode = get("dv")
    static let jolaFonyi:Locale.LanguageCode = get("dyo")
    static let dyula:Locale.LanguageCode = get("dyu")
    static let dzongkha:Locale.LanguageCode = get("dz")
    static let dazaga:Locale.LanguageCode = get("dzg")
    static let embu:Locale.LanguageCode = get("ebu")
    static let ewe:Locale.LanguageCode = get("ee")
    static let efik:Locale.LanguageCode = get("efi")
    static let emilian:Locale.LanguageCode = get("egl")
    static let ancientEgyptian:Locale.LanguageCode = get("egy")
    static let ekajuk:Locale.LanguageCode = get("eka")
    static let greek:Locale.LanguageCode = get("el")
    static let elamite:Locale.LanguageCode = get("elx")
    static let english:Locale.LanguageCode = get("en")
    static let middleEnglish:Locale.LanguageCode = get("enm")
    static let esperanto:Locale.LanguageCode = get("eo")
    static let spanish:Locale.LanguageCode = get("es")
    static let centralYupik:Locale.LanguageCode = get("esu")
    static let estonian:Locale.LanguageCode = get("et")
    static let basque:Locale.LanguageCode = get("eu")
    static let ewondo:Locale.LanguageCode = get("ewo")
    static let extremaduran:Locale.LanguageCode = get("ext")
    static let persian:Locale.LanguageCode = get("fa")
    static let fang:Locale.LanguageCode = get("fan")
    static let fanti:Locale.LanguageCode = get("fat")
    static let fula:Locale.LanguageCode = get("ff")
    static let finnish:Locale.LanguageCode = get("fi")
    static let filipino:Locale.LanguageCode = get("fil")
    static let tornedalenFinnish:Locale.LanguageCode = get("fit")
    static let fijian:Locale.LanguageCode = get("fj")
    static let faroese:Locale.LanguageCode = get("fo")
    static let fon:Locale.LanguageCode = get("fon")
    static let french:Locale.LanguageCode = get("fr")
    static let cajunFrench:Locale.LanguageCode = get("frc")
    static let middleFrench:Locale.LanguageCode = get("frm")
    static let oldFrench:Locale.LanguageCode = get("fro")
    static let arpitan:Locale.LanguageCode = get("frp")
    static let northernFrisian:Locale.LanguageCode = get("frr")
    static let easternFrisian:Locale.LanguageCode = get("frs")
    static let friulian:Locale.LanguageCode = get("fur")
    static let westernFrisian:Locale.LanguageCode = get("fy")
    static let irish:Locale.LanguageCode = get("ga")
    static let ga:Locale.LanguageCode = get("gaa")
    static let gagauz:Locale.LanguageCode = get("gag")
    static let ganChinese:Locale.LanguageCode = get("gan")
    static let gayo:Locale.LanguageCode = get("gay")
    static let gbaya:Locale.LanguageCode = get("gba")
    static let zoroastrianDari:Locale.LanguageCode = get("gbz")
    static let scottishGaelic:Locale.LanguageCode = get("gd")
    static let geez:Locale.LanguageCode = get("gez")
    static let gilbertese:Locale.LanguageCode = get("gil")
    static let galician:Locale.LanguageCode = get("gl")
    static let gilaki:Locale.LanguageCode = get("glk")
    static let middleHighGerman:Locale.LanguageCode = get("gmh")
    static let guarani:Locale.LanguageCode = get("gn")
    static let oldHighGerman:Locale.LanguageCode = get("goh")
    static let goanKonkani:Locale.LanguageCode = get("gom")
    static let gondi:Locale.LanguageCode = get("gon")
    static let gorontalo:Locale.LanguageCode = get("gor")
    static let gothic:Locale.LanguageCode = get("got")
    static let grebo:Locale.LanguageCode = get("grb")
    static let ancientGreek:Locale.LanguageCode = get("grc")
    static let swissGerman:Locale.LanguageCode = get("gsw")
    static let gujarati:Locale.LanguageCode = get("gu")
    static let wayuu:Locale.LanguageCode = get("guc")
    static let frafra:Locale.LanguageCode = get("gur")
    static let gusii:Locale.LanguageCode = get("guz")
    static let manx:Locale.LanguageCode = get("gv")
    static let gwichin:Locale.LanguageCode = get("gwi")
    static let hausa:Locale.LanguageCode = get("ha")
    static let haida:Locale.LanguageCode = get("hai")
    static let hakkaChinese:Locale.LanguageCode = get("hak")
    static let hawaiian:Locale.LanguageCode = get("haw")
    static let hebrew:Locale.LanguageCode = get("he")
    static let hindi:Locale.LanguageCode = get("hi")
    static let fijiHindi:Locale.LanguageCode = get("hif")
    static let hiligaynon:Locale.LanguageCode = get("hil")
    static let hittite:Locale.LanguageCode = get("hit")
    static let hmong:Locale.LanguageCode = get("hmn")
    static let hiriMotu:Locale.LanguageCode = get("ho")
    static let croatian:Locale.LanguageCode = get("hr")
    static let upperSorbian:Locale.LanguageCode = get("hsb")
    static let xiangChinese:Locale.LanguageCode = get("hsn")
    static let haitianCreole:Locale.LanguageCode = get("ht")
    static let hungarian:Locale.LanguageCode = get("hu")
    static let hupa:Locale.LanguageCode = get("hup")
    static let armenian:Locale.LanguageCode = get("hy")
    static let herero:Locale.LanguageCode = get("hz")
    static let interlingua:Locale.LanguageCode = get("ia")
    static let iban:Locale.LanguageCode = get("iba")
    static let ibibio:Locale.LanguageCode = get("ibb")
    static let indonesian:Locale.LanguageCode = get("id")
    static let interlingue:Locale.LanguageCode = get("ie")
    static let igbo:Locale.LanguageCode = get("ig")
    static let liangshanYi:Locale.LanguageCode = get("ii")
    static let inupiaq:Locale.LanguageCode = get("ik")
    static let iloko:Locale.LanguageCode = get("ilo")
    static let ingush:Locale.LanguageCode = get("inh")
    static let ido:Locale.LanguageCode = get("io")
    static let icelandic:Locale.LanguageCode = get("is")
    static let italian:Locale.LanguageCode = get("it")
    static let inuktitut:Locale.LanguageCode = get("iu")
    static let ingrian:Locale.LanguageCode = get("izh")
    static let japanese:Locale.LanguageCode = get("ja")
    static let jamaicanCreoleEnglish:Locale.LanguageCode = get("jam")
    static let lojban:Locale.LanguageCode = get("jbo")
    static let ngomba:Locale.LanguageCode = get("jgo")
    static let machame:Locale.LanguageCode = get("jmc")
    static let judeoPersian:Locale.LanguageCode = get("jpr")
    static let judeoArabic:Locale.LanguageCode = get("jrb")
    static let jutish:Locale.LanguageCode = get("jut")
    static let javanese:Locale.LanguageCode = get("jv")
    static let georgian:Locale.LanguageCode = get("ka")
    static let karaKalpak:Locale.LanguageCode = get("kaa")
    static let kabyle:Locale.LanguageCode = get("kab")
    static let kachin:Locale.LanguageCode = get("kac")
    static let jju:Locale.LanguageCode = get("kaj")
    static let kamba:Locale.LanguageCode = get("kam")
    static let kawi:Locale.LanguageCode = get("kaw")
    static let kabardian:Locale.LanguageCode = get("kbd")
    static let kanembu:Locale.LanguageCode = get("kbl")
    static let tyap:Locale.LanguageCode = get("kcg")
    static let makonde:Locale.LanguageCode = get("kde")
    static let kabuverdianu:Locale.LanguageCode = get("kea")
    static let kenyang:Locale.LanguageCode = get("ken")
    static let koro:Locale.LanguageCode = get("kfo")
    static let kongo:Locale.LanguageCode = get("kg")
    static let kaingang:Locale.LanguageCode = get("kgp")
    static let khasi:Locale.LanguageCode = get("kha")
    static let khotanese:Locale.LanguageCode = get("kho")
    static let koyraChiini:Locale.LanguageCode = get("khq")
    static let khowar:Locale.LanguageCode = get("khw")
    static let kikuyu:Locale.LanguageCode = get("ki")
    static let kirmanjki:Locale.LanguageCode = get("kiu")
    static let kuanyama:Locale.LanguageCode = get("kj")
    static let kazakh:Locale.LanguageCode = get("kk")
    static let kako:Locale.LanguageCode = get("kkj")
    static let kalaallisut:Locale.LanguageCode = get("kl")
    static let kalenjin:Locale.LanguageCode = get("kln")
    static let khmer:Locale.LanguageCode = get("km")
    static let kimbundu:Locale.LanguageCode = get("kmb")
    static let kannada:Locale.LanguageCode = get("kn")
    static let korean:Locale.LanguageCode = get("ko")
    static let komiPermyak:Locale.LanguageCode = get("koi")
    static let konkani:Locale.LanguageCode = get("kok")
    static let kosraean:Locale.LanguageCode = get("kos")
    static let kpelle:Locale.LanguageCode = get("kpe")
    static let kanuri:Locale.LanguageCode = get("kr")
    static let karachayBalkar:Locale.LanguageCode = get("krc")
    static let krio:Locale.LanguageCode = get("kri")
    static let kinarayA:Locale.LanguageCode = get("krj")
    static let karelian:Locale.LanguageCode = get("krl")
    static let kurukh:Locale.LanguageCode = get("kru")
    static let kashmiri:Locale.LanguageCode = get("ks")
    static let shambala:Locale.LanguageCode = get("ksb")
    static let bafia:Locale.LanguageCode = get("ksf")
    static let colognian:Locale.LanguageCode = get("ksh")
    static let kurdish:Locale.LanguageCode = get("ku")
    static let kumyk:Locale.LanguageCode = get("kum")
    static let kutenai:Locale.LanguageCode = get("kut")
    static let komi:Locale.LanguageCode = get("kv")
    static let cornish:Locale.LanguageCode = get("kw")
    static let kyrgyz:Locale.LanguageCode = get("ky")
    static let latin:Locale.LanguageCode = get("la")
    static let ladino:Locale.LanguageCode = get("lad")
    static let langi:Locale.LanguageCode = get("lag")
    static let westernPanjabi:Locale.LanguageCode = get("lah")
    static let lamba:Locale.LanguageCode = get("lam")
    static let luxembourgish:Locale.LanguageCode = get("lb")
    static let lezghian:Locale.LanguageCode = get("lez")
    static let linguaFrancaNova:Locale.LanguageCode = get("lfn")
    static let ganda:Locale.LanguageCode = get("lg")
    static let limburgish:Locale.LanguageCode = get("li")
    static let ligurian:Locale.LanguageCode = get("lij")
    static let livonian:Locale.LanguageCode = get("liv")
    static let lakota:Locale.LanguageCode = get("lkt")
    static let lombard:Locale.LanguageCode = get("lmo")
    static let lingala:Locale.LanguageCode = get("ln")
    static let lao:Locale.LanguageCode = get("lo")
    static let mongo:Locale.LanguageCode = get("lol")
    static let lozi:Locale.LanguageCode = get("loz")
    static let northernLuri:Locale.LanguageCode = get("lrc")
    static let lithuanian:Locale.LanguageCode = get("lt")
    static let latgalian:Locale.LanguageCode = get("ltg")
    static let lubaKatanga:Locale.LanguageCode = get("lu")
    static let lubaLulua:Locale.LanguageCode = get("lua")
    static let luiseno:Locale.LanguageCode = get("lui")
    static let lunda:Locale.LanguageCode = get("lun")
    static let luo:Locale.LanguageCode = get("luo")
    static let mizo:Locale.LanguageCode = get("lus")
    static let luyia:Locale.LanguageCode = get("luy")
    static let latvian:Locale.LanguageCode = get("lv")
    static let literaryChinese:Locale.LanguageCode = get("lzh")
    static let laz:Locale.LanguageCode = get("lzz")
    static let madurese:Locale.LanguageCode = get("mad")
    static let mafa:Locale.LanguageCode = get("maf")
    static let magahi:Locale.LanguageCode = get("mag")
    static let maithili:Locale.LanguageCode = get("mai")
    static let makasar:Locale.LanguageCode = get("mak")
    static let mandingo:Locale.LanguageCode = get("man")
    static let masai:Locale.LanguageCode = get("mas")
    static let maba:Locale.LanguageCode = get("mde")
    static let moksha:Locale.LanguageCode = get("mdf")
    static let maguindanaon:Locale.LanguageCode = get("mdh")
    static let mandar:Locale.LanguageCode = get("mdr")
    static let mende:Locale.LanguageCode = get("men")
    static let meru:Locale.LanguageCode = get("mer")
    static let morisyen:Locale.LanguageCode = get("mfe")
    static let malagasy:Locale.LanguageCode = get("mg")
    static let middleIrish:Locale.LanguageCode = get("mga")
    static let makhuwaMeetto:Locale.LanguageCode = get("mgh")
    static let meta:Locale.LanguageCode = get("mgo")
    static let marshallese:Locale.LanguageCode = get("mh")
    static let māori:Locale.LanguageCode = get("mi")
    static let mikmaw:Locale.LanguageCode = get("mic")
    static let mandaic:Locale.LanguageCode = get("mid")
    static let minangkabau:Locale.LanguageCode = get("min")
    static let macedonian:Locale.LanguageCode = get("mk")
    static let malayalam:Locale.LanguageCode = get("ml")
    static let mongolian:Locale.LanguageCode = get("mn")
    static let manchu:Locale.LanguageCode = get("mnc")
    static let manipuri:Locale.LanguageCode = get("mni")
    static let mohawk:Locale.LanguageCode = get("moh")
    static let mossi:Locale.LanguageCode = get("mos")
    static let marathi:Locale.LanguageCode = get("mr")
    static let westernMari:Locale.LanguageCode = get("mrj")
    static let malay:Locale.LanguageCode = get("ms")
    static let maltese:Locale.LanguageCode = get("mt")
    static let mundang:Locale.LanguageCode = get("mua")
    static let muscogee:Locale.LanguageCode = get("mus")
    static let mirandese:Locale.LanguageCode = get("mwl")
    static let marwari:Locale.LanguageCode = get("mwr")
    static let mentawai:Locale.LanguageCode = get("mwv")
    static let burmese:Locale.LanguageCode = get("my")
    static let myene:Locale.LanguageCode = get("mye")
    static let erzya:Locale.LanguageCode = get("myv")
    static let mazanderani:Locale.LanguageCode = get("mzn")
    static let nauru:Locale.LanguageCode = get("na")
    static let minNanChinese:Locale.LanguageCode = get("nan")
    static let neapolitan:Locale.LanguageCode = get("nap")
    static let nama:Locale.LanguageCode = get("naq")
    static let norwegianBokmål:Locale.LanguageCode = get("nb")
    static let northNdebele:Locale.LanguageCode = get("nd")
    static let lowGerman:Locale.LanguageCode = get("nds")
    static let nepali:Locale.LanguageCode = get("ne")
    static let newari:Locale.LanguageCode = get("new")
    static let ndonga:Locale.LanguageCode = get("ng")
    static let nias:Locale.LanguageCode = get("nia")
    static let niuean:Locale.LanguageCode = get("niu")
    static let aoNaga:Locale.LanguageCode = get("njo")
    static let dutch:Locale.LanguageCode = get("nl")
    static let kwasio:Locale.LanguageCode = get("nmg")
    static let norwegianNynorsk:Locale.LanguageCode = get("nn")
    static let ngiemboon:Locale.LanguageCode = get("nnh")
    static let wancho:Locale.LanguageCode = get("nnp")
    static let norwegian:Locale.LanguageCode = get("no")
    static let nogai:Locale.LanguageCode = get("nog")
    static let oldNorse:Locale.LanguageCode = get("non")
    static let novial:Locale.LanguageCode = get("nov")
    static let nko:Locale.LanguageCode = get("nqo")
    static let southNdebele:Locale.LanguageCode = get("nr")
    static let northernSotho:Locale.LanguageCode = get("nso")
    static let nuer:Locale.LanguageCode = get("nus")
    static let navajo:Locale.LanguageCode = get("nv")
    static let classicalNewari:Locale.LanguageCode = get("nwc")
    static let nyanja:Locale.LanguageCode = get("ny")
    static let nyamwezi:Locale.LanguageCode = get("nym")
    static let nyankole:Locale.LanguageCode = get("nyn")
    static let nyoro:Locale.LanguageCode = get("nyo")
    static let nzima:Locale.LanguageCode = get("nzi")
    static let occitan:Locale.LanguageCode = get("oc")
    static let ojibwa:Locale.LanguageCode = get("oj")
    static let oromo:Locale.LanguageCode = get("om")
    static let odia:Locale.LanguageCode = get("or")
    static let ossetic:Locale.LanguageCode = get("os")
    static let osage:Locale.LanguageCode = get("osa")
    static let ottomanTurkish:Locale.LanguageCode = get("ota")
    static let oldTurkish:Locale.LanguageCode = get("otk")
    static let oldUighur:Locale.LanguageCode = get("oui")
    static let punjabi:Locale.LanguageCode = get("pa")
    static let pangasinan:Locale.LanguageCode = get("pag")
    static let pahlavi:Locale.LanguageCode = get("pal")
    static let pampanga:Locale.LanguageCode = get("pam")
    static let papiamento:Locale.LanguageCode = get("pap")
    static let palauan:Locale.LanguageCode = get("pau")
    static let picard:Locale.LanguageCode = get("pcd")
    static let nigerianPidgin:Locale.LanguageCode = get("pcm")
    static let pennsylvaniaGerman:Locale.LanguageCode = get("pdc")
    static let plautdietsch:Locale.LanguageCode = get("pdt")
    static let oldPersian:Locale.LanguageCode = get("peo")
    static let palatineGerman:Locale.LanguageCode = get("pfl")
    static let phoenician:Locale.LanguageCode = get("phn")
    static let pali:Locale.LanguageCode = get("pi")
    static let polish:Locale.LanguageCode = get("pl")
    static let piedmontese:Locale.LanguageCode = get("pms")
    static let pontic:Locale.LanguageCode = get("pnt")
    static let pohnpeian:Locale.LanguageCode = get("pon")
    static let wolastoqey:Locale.LanguageCode = get("pqm")
    static let prussian:Locale.LanguageCode = get("prg")
    static let oldProvençal:Locale.LanguageCode = get("pro")
    static let pashto:Locale.LanguageCode = get("ps")
    static let portuguese:Locale.LanguageCode = get("pt")
    static let quechua:Locale.LanguageCode = get("qu")
    static let kiche:Locale.LanguageCode = get("quc")
    static let chimborazoHighlandQuichua:Locale.LanguageCode = get("qug")
    static let rajasthani:Locale.LanguageCode = get("raj")
    static let rapanui:Locale.LanguageCode = get("rap")
    static let rarotongan:Locale.LanguageCode = get("rar")
    static let rejang:Locale.LanguageCode = get("rej")
    static let romagnol:Locale.LanguageCode = get("rgn")
    static let rohingya:Locale.LanguageCode = get("rhg")
    static let riffian:Locale.LanguageCode = get("rif")
    static let romansh:Locale.LanguageCode = get("rm")
    static let rundi:Locale.LanguageCode = get("rn")
    static let romanian:Locale.LanguageCode = get("ro")
    static let rombo:Locale.LanguageCode = get("rof")
    static let romany:Locale.LanguageCode = get("rom")
    static let rotuman:Locale.LanguageCode = get("rtm")
    static let russian:Locale.LanguageCode = get("ru")
    static let rusyn:Locale.LanguageCode = get("rue")
    static let roviana:Locale.LanguageCode = get("rug")
    static let aromanian:Locale.LanguageCode = get("rup")
    static let kinyarwanda:Locale.LanguageCode = get("rw")
    static let rwa:Locale.LanguageCode = get("rwk")
    static let sanskrit:Locale.LanguageCode = get("sa")
    static let sandawe:Locale.LanguageCode = get("sad")
    static let sakha:Locale.LanguageCode = get("sah")
    static let samaritanAramaic:Locale.LanguageCode = get("sam")
    static let samburu:Locale.LanguageCode = get("saq")
    static let sasak:Locale.LanguageCode = get("sas")
    static let santali:Locale.LanguageCode = get("sat")
    static let saurashtra:Locale.LanguageCode = get("saz")
    static let ngambay:Locale.LanguageCode = get("sba")
    static let sangu:Locale.LanguageCode = get("sbp")
    static let sardinian:Locale.LanguageCode = get("sc")
    static let sicilian:Locale.LanguageCode = get("scn")
    static let scots:Locale.LanguageCode = get("sco")
    static let sindhi:Locale.LanguageCode = get("sd")
    static let sassareseSardinian:Locale.LanguageCode = get("sdc")
    static let southernKurdish:Locale.LanguageCode = get("sdh")
    static let northernSami:Locale.LanguageCode = get("se")
    static let seneca:Locale.LanguageCode = get("see")
    static let sena:Locale.LanguageCode = get("seh")
    static let seri:Locale.LanguageCode = get("sei")
    static let selkup:Locale.LanguageCode = get("sel")
    static let koyraboroSenni:Locale.LanguageCode = get("ses")
    static let sango:Locale.LanguageCode = get("sg")
    static let oldIrish:Locale.LanguageCode = get("sga")
    static let samogitian:Locale.LanguageCode = get("sgs")
    static let tachelhit:Locale.LanguageCode = get("shi")
    static let shan:Locale.LanguageCode = get("shn")
    static let chadianArabic:Locale.LanguageCode = get("shu")
    static let sinhala:Locale.LanguageCode = get("si")
    static let sidamo:Locale.LanguageCode = get("sid")
    static let slovak:Locale.LanguageCode = get("sk")
    static let slovenian:Locale.LanguageCode = get("sl")
    static let lowerSilesian:Locale.LanguageCode = get("sli")
    static let selayar:Locale.LanguageCode = get("sly")
    static let samoan:Locale.LanguageCode = get("sm")
    static let southernSami:Locale.LanguageCode = get("sma")
    static let luleSami:Locale.LanguageCode = get("smj")
    static let inariSami:Locale.LanguageCode = get("smn")
    static let skoltSami:Locale.LanguageCode = get("sms")
    static let shona:Locale.LanguageCode = get("sn")
    static let soninke:Locale.LanguageCode = get("snk")
    static let somali:Locale.LanguageCode = get("so")
    static let sogdien:Locale.LanguageCode = get("sog")
    static let albanian:Locale.LanguageCode = get("sq")
    static let serbian:Locale.LanguageCode = get("sr")
    static let srananTongo:Locale.LanguageCode = get("srn")
    static let serer:Locale.LanguageCode = get("srr")
    static let swati:Locale.LanguageCode = get("ss")
    static let saho:Locale.LanguageCode = get("ssy")
    static let southernSotho:Locale.LanguageCode = get("st")
    static let saterlandFrisian:Locale.LanguageCode = get("stq")
    static let sundanese:Locale.LanguageCode = get("su")
    static let sukuma:Locale.LanguageCode = get("suk")
    static let susu:Locale.LanguageCode = get("sus")
    static let sumerian:Locale.LanguageCode = get("sux")
    static let swedish:Locale.LanguageCode = get("sv")
    static let swahili:Locale.LanguageCode = get("sw")
    static let comorian:Locale.LanguageCode = get("swb")
    static let classicalSyriac:Locale.LanguageCode = get("syc")
    static let assyrian:Locale.LanguageCode = get("syr")
    static let silesian:Locale.LanguageCode = get("szl")
    static let tamil:Locale.LanguageCode = get("ta")
    static let tulu:Locale.LanguageCode = get("tcy")
    static let telugu:Locale.LanguageCode = get("te")
    static let timne:Locale.LanguageCode = get("tem")
    static let teso:Locale.LanguageCode = get("teo")
    static let tereno:Locale.LanguageCode = get("ter")
    static let tetum:Locale.LanguageCode = get("tet")
    static let tajik:Locale.LanguageCode = get("tg")
    static let thai:Locale.LanguageCode = get("th")
    static let tigrinya:Locale.LanguageCode = get("ti")
    static let tigre:Locale.LanguageCode = get("tig")
    static let tiv:Locale.LanguageCode = get("tiv")
    static let turkmen:Locale.LanguageCode = get("tk")
    static let tokelau:Locale.LanguageCode = get("tkl")
    static let tsakhur:Locale.LanguageCode = get("tkr")
    static let klingon:Locale.LanguageCode = get("tlh")
    static let tlingit:Locale.LanguageCode = get("tli")
    static let talysh:Locale.LanguageCode = get("tly")
    static let tamashek:Locale.LanguageCode = get("tmh")
    static let tswana:Locale.LanguageCode = get("tn")
    static let tongan:Locale.LanguageCode = get("to")
    static let nyasaTonga:Locale.LanguageCode = get("tog")
    static let tokPisin:Locale.LanguageCode = get("tpi")
    static let turkish:Locale.LanguageCode = get("tr")
    static let turoyo:Locale.LanguageCode = get("tru")
    static let taroko:Locale.LanguageCode = get("trv")
    static let tsonga:Locale.LanguageCode = get("ts")
    static let tsakonian:Locale.LanguageCode = get("tsd")
    static let tsimshian:Locale.LanguageCode = get("tsi")
    static let tatar:Locale.LanguageCode = get("tt")
    static let muslimTat:Locale.LanguageCode = get("ttt")
    static let tumbuka:Locale.LanguageCode = get("tum")
    static let tuvalu:Locale.LanguageCode = get("tvl")
    static let twi:Locale.LanguageCode = get("tw")
    static let tasawaq:Locale.LanguageCode = get("twq")
    static let tahitian:Locale.LanguageCode = get("ty")
    static let tuvinian:Locale.LanguageCode = get("tyv")
    static let centralAtlasTamazight:Locale.LanguageCode = get("tzm")
    static let udmurt:Locale.LanguageCode = get("udm")
    static let uyghur:Locale.LanguageCode = get("ug")
    static let ugaritic:Locale.LanguageCode = get("uga")
    static let ukrainian:Locale.LanguageCode = get("uk")
    static let umbundu:Locale.LanguageCode = get("umb")
    static let urdu:Locale.LanguageCode = get("ur")
    static let uzbek:Locale.LanguageCode = get("uz")
    static let vai:Locale.LanguageCode = get("vai")
    static let venda:Locale.LanguageCode = get("ve")
    static let venetian:Locale.LanguageCode = get("vec")
    static let veps:Locale.LanguageCode = get("vep")
    static let vietnamese:Locale.LanguageCode = get("vi")
    static let westFlemish:Locale.LanguageCode = get("vls")
    static let mainFranconian:Locale.LanguageCode = get("vmf")
    static let makhuwa:Locale.LanguageCode = get("vmw")
    static let volapük:Locale.LanguageCode = get("vo")
    static let votic:Locale.LanguageCode = get("vot")
    static let võro:Locale.LanguageCode = get("vro")
    static let vunjo:Locale.LanguageCode = get("vun")
    static let walloon:Locale.LanguageCode = get("wa")
    static let walser:Locale.LanguageCode = get("wae")
    static let wolaytta:Locale.LanguageCode = get("wal")
    static let waray:Locale.LanguageCode = get("war")
    static let washo:Locale.LanguageCode = get("was")
    static let warlpiri:Locale.LanguageCode = get("wbp")
    static let wolof:Locale.LanguageCode = get("wo")
    static let shanghainese:Locale.LanguageCode = get("wuu")
    static let kalmyk:Locale.LanguageCode = get("xal")
    static let xhosa:Locale.LanguageCode = get("xh")
    static let mingrelian:Locale.LanguageCode = get("xmf")
    static let soga:Locale.LanguageCode = get("xog")
    static let yao:Locale.LanguageCode = get("yao")
    static let yapese:Locale.LanguageCode = get("yap")
    static let yangben:Locale.LanguageCode = get("yav")
    static let yemba:Locale.LanguageCode = get("ybb")
    static let yiddish:Locale.LanguageCode = get("yi")
    static let yoruba:Locale.LanguageCode = get("yo")
    static let nheengatu:Locale.LanguageCode = get("yrl")
    static let cantonese:Locale.LanguageCode = get("yue")
    static let zhuang:Locale.LanguageCode = get("za")
    static let zapotec:Locale.LanguageCode = get("zap")
    static let blissymbols:Locale.LanguageCode = get("zbl")
    static let zeelandic:Locale.LanguageCode = get("zea")
    static let zenaga:Locale.LanguageCode = get("zen")
    static let tamazightStandardMoroccan:Locale.LanguageCode = get("zgh")
    static let chinese:Locale.LanguageCode = get("zh")
    static let zulu:Locale.LanguageCode = get("zu")
    static let zuni:Locale.LanguageCode = get("zun")
    static let zaza:Locale.LanguageCode = get("zza")
}

#endif
