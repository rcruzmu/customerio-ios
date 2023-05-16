import CioCommon
import Foundation

/*
 Contains public aliases to expose public structures from the 'Common' module
 to the 'Tracking' module. The goal is that customers do not need to import
 the 'Common' module in their code. But, some data structures need to exist
 in 'Common' as they are used in the 'Common' code.
 */

public typealias Region = CioCommon.Region
public typealias CioLogLevel = CioCommon.CioLogLevel
public typealias CioSdkConfig = CioCommon.SdkConfig
public typealias CioNotificationServiceExtensionSdkConfig = CioCommon.NotificationServiceExtensionSdkConfig
public typealias Metric = CioCommon.Metric
