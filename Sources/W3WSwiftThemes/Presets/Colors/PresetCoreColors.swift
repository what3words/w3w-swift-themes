//
//  PresetCoreColors.swift
//  DesignSwitch
//
//  Created by Dave Duprey on 15/01/2024.
//


extension W3WCoreColor {
  
  public struct core {
    
    // purples
    static public let purple10 = W3WCoreColor(alpha: 0xff, hex: 0x330045)
    static public let purple20 = W3WCoreColor(alpha: 0xff, hex: 0x53006f)
    static public let purple30 = W3WCoreColor(alpha: 0xff, hex: 0x75049a)
    static public let purple40 = W3WCoreColor(alpha: 0xff, hex: 0x8b4ca1)
    static public let purple50 = W3WCoreColor(alpha: 0xff, hex: 0xac4bd0)
    static public let purple60 = W3WCoreColor(alpha: 0xff, hex: 0xc967ec)
    static public let purple70 = W3WCoreColor(alpha: 0xff, hex: 0xe188ff)
    static public let purple80 = W3WCoreColor(alpha: 0xff, hex: 0xeeb1ff)
    static public let purple90 = W3WCoreColor(alpha: 0xff, hex: 0xfad7ff)
    static public let purple95 = W3WCoreColor(alpha: 0xff, hex: 0xffebff)
    static public let purple99 = W3WCoreColor(alpha: 0xff, hex: 0xfffbff)
    static public let purpleAlpha80 = W3WCoreColor.core.purple50.with(alpha: 0.80)
    static public let purpleAlpha60 = W3WCoreColor.core.purple50.with(alpha: 0.60)
    static public let purpleAlpha40 = W3WCoreColor.core.purple50.with(alpha: 0.40)
    static public let purpleAlpha20 = W3WCoreColor.core.purple50.with(alpha: 0.20)
    static public let purpleLight = purple40
    static public let purpleDark = purple50

    // oranges
    static public let orange10 = W3WCoreColor(alpha: 0xff, hex: 0x3e0500)
    static public let orange20 = W3WCoreColor(alpha: 0xff, hex: 0x640d00)
    static public let orange30 = W3WCoreColor(alpha: 0xff, hex: 0xca4f36)
    static public let orange40 = W3WCoreColor(alpha: 0xff, hex: 0xf26c50)
    static public let orange50 = W3WCoreColor(alpha: 0xff, hex: 0xf2826a)
    static public let orange60 = W3WCoreColor(alpha: 0xff, hex: 0xfc927c)
    static public let orange70 = W3WCoreColor(alpha: 0xff, hex: 0xff9a85)
    static public let orange80 = W3WCoreColor(alpha: 0xff, hex: 0xffb4a4)
    static public let orange90 = W3WCoreColor(alpha: 0xff, hex: 0xffdad3)
    static public let orange95 = W3WCoreColor(alpha: 0xff, hex: 0xffede9)
    static public let orange99 = W3WCoreColor(alpha: 0xff, hex: 0xfffbff)
    static public let orangeAlpha80 = W3WCoreColor(alpha: 0xcc, hex: 0xf2826a)
    static public let orangeAlpha60 = W3WCoreColor(alpha: 0x99, hex: 0xf2826a)
    static public let orangeAlpha40 = W3WCoreColor(alpha: 0x66, hex: 0xf2826a)
    static public let orangeAlpha20 = W3WCoreColor(alpha: 0x33, hex: 0xf2826a)
    static public let orangeLight = W3WCoreColor(alpha: 0xff, hex: 0xff7332)
    static public let orangeDark = W3WCoreColor(alpha: 0xff, hex: 0xff7f43)

    // yellows
    static public let yellow10 = W3WCoreColor(alpha: 0xff, hex: 0x221b00)
    static public let yellow20 = W3WCoreColor(alpha: 0xff, hex: 0x2f2500)
    static public let yellow30 = W3WCoreColor(alpha: 0xff, hex: 0x4e3e01)
    static public let yellow40 = W3WCoreColor(alpha: 0xff, hex: 0xc7aa00)
    static public let yellow50 = W3WCoreColor(alpha: 0xff, hex: 0xf6d31f)
    static public let yellow60 = W3WCoreColor(alpha: 0xff, hex: 0xffe262)
    static public let yellow70 = W3WCoreColor(alpha: 0xff, hex: 0xffec8a)
    static public let yellow80 = W3WCoreColor(alpha: 0xff, hex: 0xfff09e)
    static public let yellow90 = W3WCoreColor(alpha: 0xff, hex: 0xfff4b2)
    static public let yellow95 = W3WCoreColor(alpha: 0xff, hex: 0xfff0bf)
    static public let yellow99 = W3WCoreColor(alpha: 0xff, hex: 0xfffbff)
    static public let yellowAlpha80 = W3WCoreColor(alpha: 0xcc, hex: 0xf6d31f)
    static public let yellowAlpha60 = W3WCoreColor(alpha: 0x99, hex: 0xf6d31f)
    static public let yellowAlpha40 = W3WCoreColor(alpha: 0x66, hex: 0xf6d31f)
    static public let yellowAlpha20 = W3WCoreColor(alpha: 0x33, hex: 0xf6d31f)
    static public let yellowLight = W3WCoreColor(alpha: 0xff, hex: 0xf8c03c)
    static public let yellowDark = W3WCoreColor(alpha: 0xff, hex: 0xcda700)

    // greens
    static public let green10 = W3WCoreColor(alpha: 0xff, hex: 0x002112)
    static public let green20 = W3WCoreColor(alpha: 0xff, hex: 0x003822)
    static public let green30 = W3WCoreColor(alpha: 0xff, hex: 0x006c45)
    static public let green40 = W3WCoreColor(alpha: 0xff, hex: 0x008857)
    static public let green50 = W3WCoreColor(alpha: 0xff, hex: 0x53c18a)
    static public let green60 = W3WCoreColor(alpha: 0xff, hex: 0x6ecb9c)
    static public let green70 = W3WCoreColor(alpha: 0xff, hex: 0x88d5ad)
    static public let green80 = W3WCoreColor(alpha: 0xff, hex: 0xa2dfbd)
    static public let green90 = W3WCoreColor(alpha: 0xff, hex: 0x8bf8bd)
    static public let green95 = W3WCoreColor(alpha: 0xff, hex: 0xc0ffd7)
    static public let green99 = W3WCoreColor(alpha: 0xff, hex: 0xf5fff5)
    static public let greenAlpha80 = W3WCoreColor.core.green50.with(alpha: 0.80)
    static public let greenAlpha60 = W3WCoreColor.core.green50.with(alpha: 0.60)
    static public let greenAlpha40 = W3WCoreColor.core.green50.with(alpha: 0.40)
    static public let greenAlpha20 = W3WCoreColor.core.green50.with(alpha: 0.20)
    static public let greenLight = green50
    static public let greenDark = green60

    // blues 🎶
    static public let blue10 = W3WCoreColor(alpha: 0xff, hex: 0x001d31)
    static public let blue20 = W3WCoreColor(alpha: 0xff, hex: 0x0a3049)
    static public let blue30 = W3WCoreColor(alpha: 0xff, hex: 0x005379)
    static public let blue40 = W3WCoreColor(alpha: 0xff, hex: 0x006397)
    static public let blue50 = W3WCoreColor(alpha: 0xff, hex: 0x187db9)
    static public let blue52 = W3WCoreColor(alpha: 0xff, hex: 0x1c86cc)
    static public let blue60 = W3WCoreColor(alpha: 0xff, hex: 0x4097d5)
    static public let blue62 = W3WCoreColor(hex: 0x14B5FF)
    static public let blue64 = W3WCoreColor(hex: 0x00AFFF)
    static public let blue70 = W3WCoreColor(alpha: 0xff, hex: 0x60b2f2)
    static public let blue72 = W3WCoreColor(alpha: 0xff, hex: 0x8dd4eb)
    static public let blue74 = W3WCoreColor(alpha: 0xff, hex: 0x98d5e5)
    static public let blue76 = W3WCoreColor(alpha: 0xff, hex: 0xb6dcf5)
    static public let blue80 = W3WCoreColor(alpha: 0xff, hex: 0xc2e1eb)
    static public let blue90 = W3WCoreColor(alpha: 0xff, hex: 0xdbeffa)
    static public let blue95 = W3WCoreColor(alpha: 0xff, hex: 0xe3f4fd)
    static public let blue99 = W3WCoreColor(alpha: 0xff, hex: 0xfcfcff)
    static public let blue50Alpha80 = W3WCoreColor(alpha: 0xcc, hex: 0x187db9)
    static public let blue50Alpha60 = W3WCoreColor(alpha: 0x99, hex: 0x187db9)
    static public let blue50Alpha40 = W3WCoreColor(alpha: 0x66, hex: 0x187db9)
    static public let blue50Alpha20 = W3WCoreColor(alpha: 0x33, hex: 0x187db9)
    static public let blue90Alpha60 = W3WCoreColor(alpha: 0x99, hex: 0xdbeffa)
    static public let skyBlueLight = W3WCoreColor(alpha: 0xff, hex: 0x14b5ff)
    static public let skyBlueDark = W3WCoreColor(alpha: 0xff, hex: 0x00afff)
    static public let blueLight = blue52
    static public let blueDark = blue60
    static public let powderBlueLight = blue76
    static public let powderBlueDark  = blue72

    // reds
    static public let red10 = W3WCoreColor(alpha: 0xff, hex: 0x410000)
    static public let red20 = W3WCoreColor(alpha: 0xff, hex: 0x690001)
    static public let red30 = W3WCoreColor(alpha: 0xff, hex: 0x930002)
    static public let red40 = W3WCoreColor(alpha: 0xff, hex: 0xc00004)
    static public let red50 = W3WCoreColor(alpha: 0xff, hex: 0xe11f26)
    static public let red60 = W3WCoreColor(alpha: 0xff, hex: 0xff5543)
    static public let red70 = W3WCoreColor(alpha: 0xff, hex: 0xff8a79)
    static public let red80 = W3WCoreColor(alpha: 0xff, hex: 0xffb4a9)
    static public let red90 = W3WCoreColor(alpha: 0xff, hex: 0xffcac2)
    static public let red95 = W3WCoreColor(alpha: 0xff, hex: 0xffedea)
    static public let red99 = W3WCoreColor(alpha: 0xff, hex: 0xfffbff)
    static public let redAlpha80 = W3WCoreColor(alpha: 0xcc, hex: 0xe11f26)
    static public let redAlpha60 = W3WCoreColor(alpha: 0x99, hex: 0xe11f26)
    static public let redAlpha40 = W3WCoreColor(alpha: 0x66, hex: 0xe11f26)
    static public let redAlpha20 = W3WCoreColor(alpha: 0x33, hex: 0xe11f26)
    
    // corals
    static public let coral20      = W3WCoreColor(hex: 0x640D00)
    static public let coral50      = W3WCoreColor(hex: 0xF2826A)
    static public let coral60      = W3WCoreColor(hex: 0xFC927C)
    static public let coral90      = W3WCoreColor(hex: 0xFFDDD6)
    static public let coralLight   = orange50
    static public let coralDark    = orange60
    static public let coralAlpha20 = coralLight.with(alpha: 0.20)
    static public let coralAlpha40 = coralLight.with(alpha: 0.40)

    // pinks
    static public let pinkLight = W3WCoreColor(alpha: 0xff, hex: 0xb90063)
    static public let pinkDark = W3WCoreColor(alpha: 0xff, hex: 0xe3187c)
    
    // greys
    static public let grey0 = W3WCoreColor(alpha: 0xff, hex: 0x000000)
    static public let grey4 = W3WCoreColor(alpha: 0xff, hex: 0x0c0e11)
    static public let grey6 = W3WCoreColor(alpha: 0xff, hex: 0x111416)
    static public let grey8 = W3WCoreColor(alpha: 0xff, hex: 0x181c20)
    static public let grey10 = W3WCoreColor(alpha: 0xff, hex: 0x1a1c1e)
    static public let grey12 = W3WCoreColor(alpha: 0xff, hex: 0x1e2022)
    static public let grey17 = W3WCoreColor(alpha: 0xff, hex: 0x282a2d)
    static public let grey20 = W3WCoreColor(alpha: 0xff, hex: 0x2e3133)
    static public let grey21 = W3WCoreColor(alpha: 0xff, hex: 0x2d3135)
    static public let grey22 = W3WCoreColor(alpha: 0xff, hex: 0x333537)
    static public let grey23 = W3WCoreColor(alpha: 0xff, hex: 0x38383a)
    static public let grey24 = W3WCoreColor(alpha: 0xff, hex: 0x37393c)
    static public let grey30 = W3WCoreColor(alpha: 0xff, hex: 0x454749)
    static public let grey32 = W3WCoreColor(alpha: 0xff, hex: 0x43474b)
    static public let grey40 = W3WCoreColor(alpha: 0xff, hex: 0x5d5e61)
    static public let grey42 = W3WCoreColor(alpha: 0xff, hex: 0x5b5f63)
    static public let grey50 = W3WCoreColor(alpha: 0xff, hex: 0x75777a)
    static public let grey52 = W3WCoreColor(alpha: 0xff, hex: 0x73777c)
    static public let grey54 = W3WCoreColor(alpha: 0xff, hex: 0x767680)
    static public let grey56 = W3WCoreColor(alpha: 0xff, hex: 0x747480)
    static public let grey60 = W3WCoreColor(alpha: 0xff, hex: 0x8f9193)
    static public let grey62 = W3WCoreColor(alpha: 0xff, hex: 0x8d9196)
    static public let grey70 = W3WCoreColor(alpha: 0xff, hex: 0xaaabae)
    static public let grey72 = W3WCoreColor(alpha: 0xff, hex: 0xa8abb0)
    static public let grey80 = W3WCoreColor(alpha: 0xff, hex: 0xc5c6c9)
    static public let grey82 = W3WCoreColor(alpha: 0xff, hex: 0xc3c7cc)
    static public let grey87 = W3WCoreColor(alpha: 0xff, hex: 0xd9dadd)
    static public let grey90 = W3WCoreColor(alpha: 0xff, hex: 0xe2e2e5)
    static public let grey91 = W3WCoreColor(alpha: 0xff, hex: 0xdfe3e8)
    static public let grey92 = W3WCoreColor(alpha: 0xff, hex: 0xe7e8eb)
    static public let grey93 = W3WCoreColor(alpha: 0xff, hex: 0xedeef0)
    static public let grey95 = W3WCoreColor(alpha: 0xff, hex: 0xf0f0f3)
    static public let grey96 = W3WCoreColor(alpha: 0xff, hex: 0xf3f3f6)
    static public let grey97 = W3WCoreColor(alpha: 0xff, hex: 0xeef1f6)
    static public let grey98 = W3WCoreColor(alpha: 0xff, hex: 0xf9f9fc)
    static public let grey99 = W3WCoreColor(alpha: 0xff, hex: 0xfcfcff)
    static public let grey100 = W3WCoreColor(alpha: 0xff, hex: 0xffffff)
    static public let grey0Alpha24   = W3WCoreColor.core.grey0.with(alpha: 0.24)
    static public let grey42Alpha65  = W3WCoreColor.core.grey42.with(alpha: 0.65)
    static public let grey54Alpha16  = W3WCoreColor.core.grey54.with(alpha: 0.16)
    static public let grey54Alpha32  = W3WCoreColor.core.grey54.with(alpha: 0.32)
    static public let grey100alpha16 = W3WCoreColor.core.grey100.with(alpha: 0.16)
    static public let grey100alpha24 = W3WCoreColor.core.grey100.with(alpha: 0.24)
  }
  
  
  public struct hig {
    // reds
    static public let red50         = W3WCoreColor(hex: 0xE11F26)
    
    // blues 🎶
    static public let blue80        = W3WCoreColor(hex: 0x0062CC)
    static public let blue60        = W3WCoreColor(hex: 0x004999)
    static public let blue90        = W3WCoreColor(hex: 0xdbeffa)
    static public let blue72        = W3WCoreColor(hex: 0x8DD4EB)
    static public let blue64        = W3WCoreColor(hex: 0x00AFFF)
    static public let blue62        = W3WCoreColor(hex: 0x14B5FF)
    static public let blue50        = W3WCoreColor(hex: 0x00428A)
    static public let blue40        = W3WCoreColor(hex: 0x003166)
    static public let blue30        = W3WCoreColor(hex: 0x005379)
    static public let blue20        = W3WCoreColor(hex: 0x001833)
    static public let blueAlpha80   = W3WCoreColor.hig.blueLightOld.with(alpha: 0.80)
    static public let blueAlpha60   = W3WCoreColor.hig.blueLightOld.with(alpha: 0.60)
    static public let blueAlpha40   = W3WCoreColor.hig.blueLightOld.with(alpha: 0.40)
    static public let blueAlpha24   = W3WCoreColor.hig.blueLightOld.with(alpha: 0.24)
    static public let blueAlpha20   = W3WCoreColor.hig.blueLightOld.with(alpha: 0.20)
    static public let blueAlpha15   = W3WCoreColor.hig.blueLightOld.with(alpha: 0.15)
    static public let blueLightOld  = W3WCoreColor(hex: 0x007AFF)
    static public let blueDarkOld     = W3WCoreColor(hex: 0x0A84FF)
    static public let powderBlueLight = core.blue76
    static public let powderBlueDark  = blue72
    static public let skyBlueLight   = core.skyBlueLight
    static public let skyBlueDark   = core.skyBlueDark
    static public let blueLight    = core.blue52
    static public let blueDark     = core.blue60

    // cyans
    static public let cyan80        = W3WCoreColor(hex: 0x5452cc)
    static public let cyan60        = W3WCoreColor(hex: 0x217399)
    static public let cyan40        = W3WCoreColor(hex: 0x164D66)
    static public let cyan20        = W3WCoreColor(hex: 0x0B2633)
    static public let cyanAlpha80   = W3WCoreColor.hig.cyanLight.with(alpha: 0.80)
    static public let cyanAlpha60   = W3WCoreColor.hig.cyanLight.with(alpha: 0.60)
    static public let cyanAlpha40   = W3WCoreColor.hig.cyanLight.with(alpha: 0.40)
    static public let cyanAlpha20   = W3WCoreColor.hig.cyanLight.with(alpha: 0.20)
    static public let cyanLight     = W3WCoreColor(hex: 0x5856d6)
    static public let cyanDark      = W3WCoreColor(hex: 0x5e5ce6)
    
    // greens
    static public let green80       = W3WCoreColor(hex: 0x35CC5B)
    static public let green60       = W3WCoreColor(hex: 0x289944)
    static public let green50       = W3WCoreColor(hex: 0x53C18A)
    static public let green40       = W3WCoreColor(hex: 0x1B662E)
    static public let green20       = W3WCoreColor(hex: 0x144D22)
    static public let greenAlpha80  = W3WCoreColor.hig.greenLightOld.with(alpha: 0.80)
    static public let greenAlpha60  = W3WCoreColor.hig.greenLightOld.with(alpha: 0.60)
    static public let greenAlpha40  = W3WCoreColor.hig.greenLightOld.with(alpha: 0.40)
    static public let greenAlpha20  = W3WCoreColor.hig.greenLightOld.with(alpha: 0.20)
    static public let greenLightOld = W3WCoreColor(hex: 0x34C759) // this is the old value
    static public let greenDarkOld  = W3WCoreColor(hex: 0x30D158) // this is the old value
    static public let greenLight   = green50 // this colour was changed 2025-01
    static public let greenDark    = core.green60 // this colour was changed 2025-01

    // oranges
    static public let orange80      = W3WCoreColor(hex: 0xCC372E)
    static public let orange60      = W3WCoreColor(hex: 0x992923)
    static public let orange50      = W3WCoreColor(hex: 0xF2826A)
    static public let orange40      = W3WCoreColor(hex: 0x661C17)
    static public let orange20      = W3WCoreColor(hex: 0x330E0C)
    static public let orange10      = W3WCoreColor(hex: 0x3E0500)
    static public let orangeAlpha80 = W3WCoreColor.hig.orangeDark.with(alpha: 0.80)
    static public let orangeAlpha60 = W3WCoreColor.hig.orangeDark.with(alpha: 0.60)
    static public let orangeAlpha40 = W3WCoreColor.hig.orangeDark.with(alpha: 0.40)
    static public let orangeAlpha20 = W3WCoreColor.hig.orangeDark.with(alpha: 0.20)
    static public let orangeLight    = W3WCoreColor.core.orangeLight // this colour was changed 2025-01
    static public let orangeLightOld = W3WCoreColor(hex: 0xFF3B30) // this is the old value
    static public let orangeDarkOld = W3WCoreColor(hex: 0xFF453A)  // this colour was changed 2025-01
    static public let orangeDark    = W3WCoreColor(alpha: 0xff, hex: 0xff7f43) // this is the old colour

    // purples
    static public let purple80      = W3WCoreColor(hex: 0x9E4BCC)
    static public let purple60      = W3WCoreColor(hex: 0x773999)
    static public let purple40      = W3WCoreColor(hex: 0x4F2666)
    static public let purple20      = W3WCoreColor(hex: 0x281333)
    static public let purpleAlpha80 = W3WCoreColor.hig.purpleLightOld.with(alpha: 0.80)
    static public let purpleAlpha60 = W3WCoreColor.hig.purpleLightOld.with(alpha: 0.60)
    static public let purpleAlpha40 = W3WCoreColor.hig.purpleLightOld.with(alpha: 0.40)
    static public let purpleAlpha20 = W3WCoreColor.hig.purpleLightOld.with(alpha: 0.20)
    static public let purpleLightOld = W3WCoreColor(hex: 0xAC52DE) // this is the old value
    static public let purpleLight    = W3WCoreColor(alpha: 0xff, hex: 0x8b4ca1) // this value was change 2025-01
    static public let purpleDarkOld  = W3WCoreColor(hex: 0xBF5AF2) // this is the old value
    static public let purpleDark   = W3WCoreColor.core.purple50 // this value was change 2025-01

    // yellows
    static public let yellow80       = W3WCoreColor(hex: 0xCCA300)
    static public let yellow60       = W3WCoreColor(hex: 0x997A00)
    static public let yellow50       = W3WCoreColor(hex: 0xF6D31F)
    static public let yellow40       = W3WCoreColor(hex: 0x665200)
    static public let yellow20       = W3WCoreColor(hex: 0x332900)
    static public let yellow10       = W3WCoreColor(hex: 0x221B00)
    static public let yellowAlpha80  = W3WCoreColor.hig.yellowLight.with(alpha: 0.80)
    static public let yellowAlpha60  = W3WCoreColor.hig.yellowLight.with(alpha: 0.60)
    static public let yellowAlpha40  = W3WCoreColor.hig.yellowLight.with(alpha: 0.40)
    static public let yellowAlpha20  = W3WCoreColor.hig.yellowLight.with(alpha: 0.20)
    static public let yellowLight    = W3WCoreColor(hex: 0xf8c03c) // this core colour was changed 2025-01
    static public let yellowLightOld = W3WCoreColor(hex: 0xFFCC00) // this is the old value
    static public let yellowDark     = W3WCoreColor(alpha: 0xff, hex: 0xcda700) // this core colour was changed 2025-01
    static public let yellowDarkOld  = W3WCoreColor(hex: 0xFFD60A) // this is the old value

    // greys
    static public let grey0         = W3WCoreColor(hex: 0x000000)
    static public let grey10        = W3WCoreColor(hex: 0x1C1C1E)
    static public let grey20        = W3WCoreColor(hex: 0x2C2C2E)
    static public let grey24        = W3WCoreColor(hex: 0x38383A)
    static public let grey30        = W3WCoreColor(hex: 0x3A3A3C)
    static public let grey32        = W3WCoreColor(hex: 0x3C3C43)
    static public let grey100       = W3WCoreColor(hex: 0xffffff)
    static public let grey32Alpha36 = W3WCoreColor.hig.grey32.with(alpha: 0.36)
    
    // corals
    static public let coral20     = W3WCoreColor(hex: 0x640D00)
    static public let coral50     = W3WCoreColor(hex: 0xF2826A)
    static public let coral60     = W3WCoreColor(hex: 0xFC927C)
    static public let coral90     = W3WCoreColor(hex: 0xFFDDD6)
    static public let coralLight  = hig.orange50
    static public let coralDark   = core.orange60
    
    // pinks
    static public let pinkLight    = W3WCoreColor.core.pinkLight
    static public let pinkDark     = W3WCoreColor.core.pinkDark
  }
  
  
  // basics
  static public let black         = W3WCoreColor(hex: 0x000000)
  static public let white         = W3WCoreColor(hex: 0xFFFFFF)
  static public let clear         = W3WCoreColor(hex: 0x000000, alpha: 0.00)
  
  // what3words brand colours
  static public let aqua          = W3WCoreColor(hex: 0x87e1d1)
  static public let blue          = W3WCoreColor(hex: 0x2e71b8)
  static public let charcoal      = W3WCoreColor(hex: 0x363636)
  static public let coral         = W3WCoreColor(hex: 0xf26c50)
  static public let darkBlue       = W3WCoreColor(hex: 0x0a3049)
  static public let darkBlueAlpha60 = W3WCoreColor.darkBlue.with(alpha: 0.6)
  static public let green          = W3WCoreColor.core.green50
  static public let lightBlue     = W3WCoreColor(hex: 0x98d5e5)
  static public let lightGrey     = W3WCoreColor(hex: 0xe0e0e0)
  static public let mediumGrey    = W3WCoreColor(hex: 0xa7a7a7)
  static public let mustard       = W3WCoreColor(hex: 0xc5b000)
  static public let orange        = W3WCoreColor(hex: 0xf4a344)
  static public let red           = W3WCoreColor.core.red50
  static public let yellow        = W3WCoreColor(hex: 0xf6d31f)
  static public let royalBlue     = W3WCoreColor(hex: 0x005379)
  static public let cranberry     = W3WCoreColor(hex: 0xcd3b72)
  static public let purple        = W3WCoreColor.core.purpleLight
  static public let powderBlue    = W3WCoreColor.core.blue90
  static public let brightGreen   = W3WCoreColor(hex: 0x65D698)
  static public let darkGreen     = W3WCoreColor(hex: 0x265239)
  static public let darkCyan      = W3WCoreColor(hex: 0x1D4752)
  static public let darkerCyan    = W3WCoreColor(hex: 0x2B6A7A)
  static public let darkBrown     = W3WCoreColor(hex: 0x52460A)
  static public let brown         = W3WCoreColor(hex: 0x7A690F)
  static public let darkerBrown   = W3WCoreColor(hex: 0x52170B)
  static public let dullRed       = W3WCoreColor(hex: 0xB24000)
  static public let darkDarkBlue  = W3WCoreColor(hex: 0x001626)
  static public let lightCyan     = W3WCoreColor(hex: 0xC2E1EB)
  static public let skyBlue       = W3WCoreColor.core.skyBlueDark
  
  
  

//  static public let hig_primary_light = hig.blueLightOld //W3WCoreColor(alpha: 0xff, hex: 0x007aff)
//  static public let hig_primary_dark  = hig.blueDarkOld  //W3WCoreColor(alpha: 0xff, hex: 0x0a84ff)
//  static public let core_primary_light = core.red50   //W3WCoreColor(alpha: 0xff, hex: 0xe11f26)
//  static public let core_primary_dark = core.red50    //W3WCoreColor(alpha: 0xff, hex: 0xe11f26)

//  static public let primary_light(hig) = Color(0xffffffff)
//  static public let primary_dark(hig) = Color(0xffffffff)
//  static public let primary_light(w3w) = Color(0xffffffff)
//  static public let primary_dark(w3w) = Color(0xffffffff)
//  static public let secondary_light(hig) = Color(0xff007aff)
//  static public let secondary_dark(hig) = Color(0xff0a84ff)
//  static public let secondary_light(w3w) = Color(0xff187db9)
//  static public let secondary_dark(w3w) = Color(0xff8dd4eb)
//  static public let tertiary_light(hig) = Color(0xff3a3a3c)
//  static public let tertiary_dark(hig) = Color(0xffffffff)
//  static public let tertiary_light(w3w) = Color(0xff0a3049)
//  static public let tertiary_dark(w3w) = Color(0xfff0f0f3)
//  static public let quaternary_light(hig) = Color(0xff747480)
//  static public let quaternary_dark(hig) = Color(0xff8e8e93)
//  static public let quaternary_light(w3w) = Color(0xff73777c)
//  static public let quaternary_dark(w3w) = Color(0xfffcfcff)
//  static public let primaryInverse_light(hig) = Color(0xffffffff)
//  static public let primaryInverse_dark(hig) = Color(0xff000000)
//  static public let primaryInverse_light(w3w) = Color(0xffffffff)
//  static public let primaryInverse_dark(w3w) = Color(0xff000000)
//  static public let primaryBlack(inverse)_light(hig) = Color(0xff000000)
//  static public let primaryBlack(inverse)_dark(hig) = Color(0xffffffff)
//  static public let primaryBlack(inverse)_light(w3w) = Color(0xff000000)
//  static public let primaryBlack(inverse)_dark(w3w) = Color(0xffffffff)
//  static public let primaryWhite_light(hig) = Color(0xffffffff)
//  static public let primaryWhite_dark(hig) = Color(0xffffffff)
//  static public let primaryWhite_light(w3w) = Color(0xffffffff)
//  static public let primaryWhite_dark(w3w) = Color(0xffffffff)
//  static public let tertiaryInverse_light(hig) = Color(0xffffffff)
//  static public let tertiaryInverse_dark(hig) = Color(0xff3a3a3c)
//  static public let tertiaryInverse_light(w3w) = Color(0xfff0f0f3)
//  static public let tertiaryInverse_dark(w3w) = Color(0xff0a3049)
//  static public let primary_light(hig) = Color(0xff007aff)
//  static public let primary_dark(hig) = Color(0xff0a84ff)
//  static public let primary_light(w3w) = Color(0xffe11f26)
//  static public let primary_dark(w3w) = Color(0xffe11f26)
//  static public let secondary_light(hig) = Color(0xff003166)
//  static public let secondary_dark(hig) = Color(0xff004999)
//  static public let secondary_light(w3w) = Color(0xff006397)
//  static public let secondary_dark(w3w) = Color(0xff187db9)
//  static public let tertiary_light(hig) = Color(0xff001833)
//  static public let tertiary_dark(hig) = Color(0xff00428a)
//  static public let tertiary_light(w3w) = Color(0xff0a3049)
//  static public let tertiary_dark(w3w) = Color(0xff005379)
//  static public let quaternary_light(hig) = Color(0x26007aff)
//  static public let quaternary_dark(hig) = Color(0x3d007aff)
//  static public let quaternary_light(w3w) = Color(0xffdbeffa)
//  static public let quaternary_dark(w3w) = Color(0xff005379)
//  static public let quinary_light(hig) = Color(0xffffffff)
//  static public let quinary_dark(hig) = Color(0xffffffff)
//  static public let quinary_light(w3w) = Color(0xff0a3049)
//  static public let quinary_dark(w3w) = Color(0xfffcfcff)
//  static public let senary_light(hig) = Color(0x29767680)
//  static public let senary_dark(hig) = Color(0x52767680)
//  static public let senary_light(w3w) = Color(0x29767680)
//  static public let senary_dark(w3w) = Color(0x52767680)
//  static public let opaque_light(hig) = Color(0xffc6c6c8)
//  static public let opaque_dark(hig) = Color(0xff38383a)
//  static public let opaque_light(w3w) = Color(0xffc6c6c8)
//  static public let opaque_dark(w3w) = Color(0xff38383a)
//  static public let primary_light(hig) = Color(0xffffffff)
//  static public let primary_dark(hig) = Color(0xff000000)
//  static public let primary_light(w3w) = Color(0xffffffff)
//  static public let primary_dark(w3w) = Color(0xff000000)
//  static public let secondary_light(hig) = Color(0xfff2f2f7)
//  static public let secondary_dark(hig) = Color(0xff1c1c1e)
//  static public let secondary_light(w3w) = Color(0xfff2f2f7)
//  static public let secondary_dark(w3w) = Color(0xff1c1c1e)
//  static public let tertiary_light(hig) = Color(0xffffffff)
//  static public let tertiary_dark(hig) = Color(0xff2c2c2e)
//  static public let tertiary_light(w3w) = Color(0xffffffff)
//  static public let tertiary_dark(w3w) = Color(0xff2c2c2e)
//  static public let primary_light(hig) = Color(0xffffffff)
//  static public let primary_dark(hig) = Color(0xff1c1c1e)
//  static public let primary_light(w3w) = Color(0xffffffff)
//  static public let primary_dark(w3w) = Color(0xff1c1c1e)
//  static public let secondary_light(hig) = Color(0xfff2f2f7)
//  static public let secondary_dark(hig) = Color(0xff2c2c2e)
//  static public let secondary_light(w3w) = Color(0xfff2f2f7)
//  static public let secondary_dark(w3w) = Color(0xff2c2c2e)
//  static public let tertiary_light(hig) = Color(0xffffffff)
//  static public let tertiary_dark(hig) = Color(0xff3a3a3c)
//  static public let tertiary_light(w3w) = Color(0xffffffff)
//  static public let tertiary_dark(w3w) = Color(0xff3a3a3c)
//  static public let primary_light(hig) = Color(0xfff2f2f7)
//  static public let primary_dark(hig) = Color(0xff1c1c1e)
//  static public let primary_light(w3w) = Color(0xfff2f2f7)
//  static public let primary_dark(w3w) = Color(0xff1c1c1e)
//  static public let secondary_light(hig) = Color(0xffffffff)
//  static public let secondary_dark(hig) = Color(0xff2c2c2e)
//  static public let secondary_light(w3w) = Color(0xffffffff)
//  static public let secondary_dark(w3w) = Color(0xff2c2c2e)
//  static public let tertiary_light(hig) = Color(0xfff2f2f7)
//  static public let tertiary_dark(hig) = Color(0xff3a3a3c)
//  static public let tertiary_light(w3w) = Color(0xfff2f2f7)
//  static public let tertiary_dark(w3w) = Color(0xff3a3a3c)
//  static public let primary_light(hig) = Color(0xfff2f2f7)
//  static public let primary_dark(hig) = Color(0xff000000)
//  static public let primary_light(w3w) = Color(0xfff2f2f7)
//  static public let primary_dark(w3w) = Color(0xff000000)
//  static public let secondary_light(hig) = Color(0xffffffff)
//  static public let secondary_dark(hig) = Color(0xff1c1c1e)
//  static public let secondary_light(w3w) = Color(0xffffffff)
//  static public let secondary_dark(w3w) = Color(0xff1c1c1e)
//  static public let tertiary_light(hig) = Color(0xfff2f2f7)
//  static public let tertiary_dark(hig) = Color(0xff2c2c2e)
//  static public let tertiary_light(w3w) = Color(0xfff2f2f7)
//  static public let tertiary_dark(w3w) = Color(0xff2c2c2e)
//  static public let nonOpaque_light(hig) = Color(0x5c3c3c43)
//  static public let nonOpaque_dark(hig) = Color(0xa6545458)
//  static public let nonOpaque_light(w3w) = Color(0x5c3c3c43)
//  static public let nonOpaque_dark(w3w) = Color(0xa6545458)
//  static public let base_light(hig) = Color(0x33ff453a)
//  static public let base_dark(hig) = Color(0x66ff453a)
//  static public let base_light(w3w) = Color(0x33f2826a)
//  static public let base_dark(w3w) = Color(0x66f2826a)
//  static public let elevated_light(hig) = Color(0xffff3b30)
//  static public let elevated_dark(hig) = Color(0xffff453a)
//  static public let elevated_light(w3w) = Color(0xfff2826a)
//  static public let elevated_dark(w3w) = Color(0xfffc927c)
//  static public let label_light(hig) = Color(0xff330e0c)
//  static public let label_dark(hig) = Color(0xff330e0c)
//  static public let label_light(w3w) = Color(0xff640d00)
//  static public let label_dark(w3w) = Color(0xffffddd6)
//  static public let labelDark_light(hig) = Color(0xff330e0c)
//  static public let labelDark_dark(hig) = Color(0xff330e0c)
//  static public let labelDark_light(w3w) = Color(0xff640d00)
//  static public let labelDark_dark(w3w) = Color(0xff640d00)
//  static public let base_light(hig) = Color(0x3334c759)
//  static public let base_dark(hig) = Color(0x9934c759)
//  static public let base_light(w3w) = Color(0x3353c18a)
//  static public let base_dark(w3w) = Color(0x6653c18a)
//  static public let elevated_light(hig) = Color(0xff34c759)
//  static public let elevated_dark(hig) = Color(0xff30d158)
//  static public let elevated_light(w3w) = Color(0xff53c18a)
//  static public let elevated_dark(w3w) = Color(0xff6ecb9c)
//  static public let label_light(hig) = Color(0xff144d22)
//  static public let label_dark(hig) = Color(0xff144d22)
//  static public let label_light(w3w) = Color(0xff003822)
//  static public let label_dark(w3w) = Color(0xffb1efca)
//  static public let labelDark_light(hig) = Color(0xff144d22)
//  static public let labelDark_dark(hig) = Color(0xff144d22)
//  static public let labelDark_light(w3w) = Color(0xff003822)
//  static public let labelDark_dark(w3w) = Color(0xff003822)
//  static public let base_light(hig) = Color(0x33ffcc00)
//  static public let base_dark(hig) = Color(0x66ffcc00)
//  static public let base_light(w3w) = Color(0x33f6d31f)
//  static public let base_dark(w3w) = Color(0x66f6d31f)
//  static public let elevated_light(hig) = Color(0xffffcc00)
//  static public let elevated_dark(hig) = Color(0xffffd60a)
//  static public let elevated_light(w3w) = Color(0xffffd36c)
//  static public let elevated_dark(w3w) = Color(0xfff8c03c)
//  static public let label_light(hig) = Color(0xff332900)
//  static public let label_dark(hig) = Color(0xff332900)
//  static public let label_light(w3w) = Color(0xff564500)
//  static public let label_dark(w3w) = Color(0xffffeeb9)
//  static public let labelDark_light(hig) = Color(0xff332900)
//  static public let labelDark_dark(hig) = Color(0xff332900)
//  static public let labelDark_light(w3w) = Color(0xff372700)
//  static public let labelDark_dark(w3w) = Color(0xff372700)
//  static public let satellite_light(hig) = Color(0x29ffffff)
//  static public let satellite_dark(hig) = Color(0x3dffffff)
//  static public let satellite_light(w3w) = Color(0x29ffffff)
//  static public let satellite_dark(w3w) = Color(0x3dffffff)
//  static public let cartography_light(hig) = Color(0x3d000000)
//  static public let cartography_dark(hig) = Color(0x3dffffff)
//  static public let cartography_light(w3w) = Color(0x29697f8d)
//  static public let cartography_dark(w3w) = Color(0x29ffffff)
  
  
}
