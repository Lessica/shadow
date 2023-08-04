#import "hooks.h"

%group shadowhook_DeviceCheck
// %hook DCDevice
// - (BOOL)isSupported {
//     // maybe returning unsupported can skip some app attest token generations
// 	   return NO;
// }
// %end

%hook UIDevice
+ (BOOL)isJailbroken {
    return NO;
}

- (BOOL)isJailBreak {
    return NO;
}

- (BOOL)isJailBroken {
    return NO;
}
%end

// %hook SFAntiPiracy
// + (int)isJailbroken {
// 	   // Probably should not hook with a hard coded value.
// 	   // This value may be changed by developers using this library.
// 	   // Best to defeat the checks rather than skip them.
// 	   return 4783242;
// }
// %end

%hook JailbreakDetectionVC
- (BOOL)isJailbroken {
    return NO;
}
%end

%hook DTTJailbreakDetection
+ (BOOL)isJailbroken {
    return NO;
}
%end

%hook ANSMetadata
- (BOOL)computeIsJailbroken {
    return NO;
}

- (BOOL)isJailbroken {
    return NO;
}
%end

%hook AppsFlyerUtils
+ (BOOL)isJailBreakon {
    return NO;
}

+ (bool)isJailbrokenWithSkipAdvancedJailbreakValidation:(bool)a {
    return false;
}
%end

%hook jailBreak
+ (bool)isJailBreak {
    return false;
}
%end

%hook GBDeviceInfo
- (BOOL)isJailbroken {
    return NO;
}
%end

%hook CMARAppRestrictionsDelegate
- (bool)isDeviceNonCompliant {
    return false;
}
%end

%hook ADYSecurityChecks
+ (bool)isDeviceJailbroken {
    return false;
}
%end

%hook UBReportMetadataDevice
- (void *)is_rooted {
    return NULL;
}
%end

%hook UtilitySystem
+ (bool)isJailbreak {
    return false;
}
%end

%hook GemaltoConfiguration
+ (bool)isJailbreak {
    return false;
}
%end

%hook CPWRDeviceInfo
- (bool)isJailbroken {
    return false;
}
%end

%hook CPWRSessionInfo
- (bool)isJailbroken {
    return false;
}
%end

%hook KSSystemInfo
+ (bool)isJailbroken {
    return false;
}
%end

%hook EMDSKPPConfiguration
- (bool)jailBroken {
    return false;
}
%end

%hook EnrollParameters
- (void *)jailbroken {
    return NULL;
}
%end

%hook EMDskppConfigurationBuilder
- (bool)jailbreakStatus {
    return false;
}
%end

%hook FCRSystemMetadata
- (bool)isJailbroken {
    return false;
}
%end

%hook CLSAnalyticsMetadataController
+ (BOOL)hostJailbroken { return NO; }
%end

%hook Utility
- (BOOL)isJailBreak { return NO; }
%end

%hook DeviceInfoManager
- (BOOL)isJailBreak { return NO; }
%end

%hook STLivenessDetector
- (BOOL)isJailbroken { return NO; }
%end

%hook BLYDevice
+ (BOOL)isJailBreak { return NO; }
- (BOOL)isJailbroken { return NO; }
- (unsigned long)jailbrokenStatus { return 0; }
%end

%hook MobClick
+ (BOOL)isJailbroken { return NO; }
%end

%hook UMUtils
+ (BOOL)isDeviceJailBreak { return NO; }
%end

%hook IFlySystemInfo
+ (BOOL)isJailbroken { return NO; }
%end

// %hook NSDictionary
// - (id)objectForKey:(id)aKey {
//     if ([aKey isKindOfClass:NSString.class] && [@"DISABLE_JAILBREAK_DETECTION" isEqualToString:aKey]) {
//         return @(YES);
//     }
//     return %orig;
// }
// %end

%hook KeyOSPlayerInternal
- (BOOL)isJailbroken { return NO; }
%end

%hook AIMetaDataCollector
+ (id)getDeviceJailbrokenState {
    return [NSNumber numberWithBool:NO];
}
%end

%hook PiracyProtection
+ (BOOL)isJailbroken { return NO; }
%end

%hook FMFeatureUtils
- (BOOL)isFastMetricsEnabled { return YES; }
%end

%hook v_VDMap
- (bool)isJailbrokenDetected {
    return false;
}

- (bool)isJailBrokenDetectedByVOS {
    return false;
}

- (bool)isDFPHookedDetecedByVOS {
    return false;
}

- (bool)isCodeInjectionDetectedByVOS {
    return false;
}

- (bool)isDebuggerCheckDetectedByVOS {
    return false;
}

- (bool)isAppSignerCheckDetectedByVOS {
    return false;
}

- (bool)v_checkAModified {
    return false;
}

- (bool)isRuntimeTamperingDetected {
    return false;
}
%end

%hook SDMUtils
- (BOOL)isJailBroken {
    return NO;
}
%end

%hook OneSignalJailbreakDetection
+ (BOOL)isJailbroken {
    return NO;
}
%end

%hook DigiPassHandler
- (BOOL)rootedDeviceTestResult {
    return NO;
}
%end

%hook AWMyDeviceGeneralInfo
- (bool)isCompliant {
    return true;
}
%end

%hook MCPDemoAppDelegate
- (bool)isJailbroken { return false; }
%end

%hook AAAPBootStartPoint
+ (void)load { }
%end

%hook GULSwizzler
+ (void)swizzleClass:(Class)aClass
            selector:(SEL)selector
     isClassSelector:(BOOL)isClassSelector
           withBlock:(id)block {}
%end

%hook _TtC5Chase11AuthManager
- (bool)isJMC { return false; }
%end

%hook DTXSessionInfo
- (bool)isJailbroken {
    return false;
}
%end

%hook DTXDeviceInfo
- (bool)isJailbroken {
    return false;
}
%end

%hook JailbreakDetection
- (bool)jailbroken {
    return false;
}
%end

%hook jailBrokenJudge
- (bool)isJailBreak {
    return false;
}

- (bool)isCydiaJailBreak {
    return false;
}

- (bool)isApplicationsJailBreak {
    return false;
}

- (bool)ischeckCydiaJailBreak {
    return false;
}

- (bool)isPathJailBreak {
    return false;
}

- (bool)boolIsjailbreak {
    return false;
}
%end

%hook FBAdBotDetector
- (bool)isJailBrokenDevice {
    return false;
}
%end

%hook TNGDeviceTool
+ (bool)isJailBreak {
    return false;
}

+ (bool)isJailBreak_file {
    return false;
}

+ (bool)isJailBreak_cydia {
    return false;
}

+ (bool)isJailBreak_appList {
    return false;
}

+ (bool)isJailBreak_env {
    return false;
}
%end

%hook DTDeviceInfo
+ (bool)isJailbreak {
    return false;
}
%end

%hook SecVIDeviceUtil
+ (bool)isJailbreak {
    return false;
}   
%end

%hook RVPBridgeExtension4Jailbroken
- (bool)isJailbroken {
    return false;
}
%end

%hook ZDetection
+ (bool)isZDetectionAvailable {
    return false;
}

+ (bool)isDebugged {
    return false;
}

+ (bool)isRootedOrJailbroken {
    return false;
}
%end

%hook ThreatChecks
+ (void)checkJailbreak { }
+ (bool)checkIfHooked:(id)arg2 method_name:(id)arg3 { return false; }
+ (void)doThreatChecks { }
+ (void)doInitChecks { }
+ (void)doPortCheck:(id)arg2 { }
%end

%hook JailbreakDetector
+ (bool)isJailbrokenWithReasons:(id)arg2 { return false; }
+ (void)check_system_tampering { }
+ (void)check_system_tampering_inner { }
+ (void)check_app_tampering { }
+ (void)reportSystemTamperingReason:(id)arg2 { }
+ (void)reportAppTamperingReason:(id)arg2 { }
+ (void)reportFileSystemModificationReason:(id)arg2 { }
+ (void)reportElevationOfPrivilegesReason:(id)arg2 { }
+ (void)reportJailbreakReason:(id)arg2 { }
%end

// %hook NSUserDefaults
// - (BOOL)boolForKey:(NSString *)aKey {
//     if ([aKey isKindOfClass:[NSString class]] && [@"ZimperiumShouldDoThreatChecks" isEqualToString:aKey]) {
//         return NO;
//     }
//     return %orig;
// }
// %end

%hook TZSKPaymentParamsTool
+ (BOOL)detectCurrentDeviceIsJailbroken {
    return NO;
}
%end

%hook FFMClassOneFive
- (NSMutableDictionary *)cofiSymbolOneNine {
    return [@{@(0): @(7), @(1577865600): @(44)} mutableCopy];
}
%end
%end

void shadowhook_DeviceCheck(HKSubstitutor* hooks) {
    %init(shadowhook_DeviceCheck);
}
