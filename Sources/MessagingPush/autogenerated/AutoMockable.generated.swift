// Generated using Sourcery 1.9.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// swiftlint:disable all

import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
#if canImport(UserNotifications)
import UserNotifications
#endif
import CioTracking
import Common

/**
 ######################################################
 Documentation
 ######################################################

 This automatically generated file you are viewing contains mock classes that you can use in your test suite.

 * How do you generate a new mock class?

 1. Mocks are generated from Swift protocols. So, you must make one.

 ```
 protocol FriendsRepository {
     func acceptFriendRequest<Attributes: Encodable>(attributes: Attributes, _ onComplete: @escaping () -> Void)
 }

 class AppFriendsRepository: FriendsRepository {
     ...
 }
 ```

 2. Have your new protocol extend `AutoMockable`:

 ```
 protocol FriendsRepository: AutoMockable {
     func acceptFriendRequest<Attributes: Encodable>(
         // sourcery:Type=Encodable
         attributes: Attributes,
         _ onComplete: @escaping () -> Void)
 }
 ```

 > Notice the use of `// sourcery:Type=Encodable` for the generic type parameter. Without this, the mock would
 fail to compile: `functionNameReceiveArguments = (Attributes)` because `Attributes` is unknown to this `var`.
 Instead, we give the parameter a different type to use for the mock. `Encodable` works in this case.
 It will require a cast in the test function code, however.

 3. Run the command `make generate` on your machine. The new mock should be added to this file.

 * How do you use the mocks in your test class?

 ```
 class ExampleViewModelTest: XCTestCase {
     var viewModel: ExampleViewModel!
     var exampleRepositoryMock: ExampleRepositoryMock!
     override func setUp() {
         exampleRepositoryMock = ExampleRepositoryMock()
         viewModel = AppExampleViewModel(exampleRepository: exampleRepositoryMock)
     }
 }
 ```

 Or, you may need to inject the mock in a different way using the DI.shared graph:

 ```
 class ExampleTest: XCTestCase {
     var exampleViewModelMock: ExampleViewModelMock!
     var example: Example!
     override func setUp() {
         exampleViewModelMock = ExampleViewModelMock()
         DI.shared.override(.exampleViewModel, value: exampleViewModelMock, forType: ExampleViewModel.self)
         example = Example()
     }
 }

 ```

 */

/**
 Class to easily create a mocked version of the `MessagingPushInstance` class.
 This class is equipped with functions and properties ready for you to mock!

 Note: This file is automatically generated. This means the mocks should always be up-to-date and has a consistent API.
 See the SDK documentation to learn the basics behind using the mock classes in the SDK.
 */
public class MessagingPushInstanceMock: MessagingPushInstance, Mock {
    /// If *any* interactions done on mock. `true` if any method or property getter/setter called.
    public var mockCalled: Bool = false //

    public init() {
        Mocks.shared.add(mock: self)
    }

    public func resetMock() {
        registerDeviceTokenCallsCount = 0
        registerDeviceTokenReceivedArguments = nil
        registerDeviceTokenReceivedInvocations = []

        mockCalled = false // do last as resetting properties above can make this true
        deleteDeviceTokenCallsCount = 0

        mockCalled = false // do last as resetting properties above can make this true
        trackMetricCallsCount = 0
        trackMetricReceivedArguments = nil
        trackMetricReceivedInvocations = []

        mockCalled = false // do last as resetting properties above can make this true
        #if canImport(UserNotifications)
        didReceiveNotificationRequestCallsCount = 0
        didReceiveNotificationRequestReceivedArguments = nil
        didReceiveNotificationRequestReceivedInvocations = []
        #endif

        mockCalled = false // do last as resetting properties above can make this true
        #if canImport(UserNotifications)
        serviceExtensionTimeWillExpireCallsCount = 0
        #endif

        mockCalled = false // do last as resetting properties above can make this true
        #if canImport(UserNotifications)
        userNotificationCenter_withCompletionCallsCount = 0
        userNotificationCenter_withCompletionReceivedArguments = nil
        userNotificationCenter_withCompletionReceivedInvocations = []
        #endif

        mockCalled = false // do last as resetting properties above can make this true
        #if canImport(UserNotifications)
        userNotificationCenterCallsCount = 0
        userNotificationCenterReceivedArguments = nil
        userNotificationCenterReceivedInvocations = []
        #endif

        mockCalled = false // do last as resetting properties above can make this true
    }

    // MARK: - registerDeviceToken

    /// Number of times the function was called.
    public private(set) var registerDeviceTokenCallsCount = 0
    /// `true` if the function was ever called.
    public var registerDeviceTokenCalled: Bool {
        registerDeviceTokenCallsCount > 0
    }

    /// The arguments from the *last* time the function was called.
    public private(set) var registerDeviceTokenReceivedArguments: String?
    /// Arguments from *all* of the times that the function was called.
    public private(set) var registerDeviceTokenReceivedInvocations: [String] = []
    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     */
    public var registerDeviceTokenClosure: ((String) -> Void)?

    /// Mocked function for `registerDeviceToken(_ deviceToken: String)`. Your opportunity to return a mocked value and check result of mock in test code.
    public func registerDeviceToken(_ deviceToken: String) {
        mockCalled = true
        registerDeviceTokenCallsCount += 1
        registerDeviceTokenReceivedArguments = deviceToken
        registerDeviceTokenReceivedInvocations.append(deviceToken)
        registerDeviceTokenClosure?(deviceToken)
    }

    // MARK: - deleteDeviceToken

    /// Number of times the function was called.
    public private(set) var deleteDeviceTokenCallsCount = 0
    /// `true` if the function was ever called.
    public var deleteDeviceTokenCalled: Bool {
        deleteDeviceTokenCallsCount > 0
    }

    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     */
    public var deleteDeviceTokenClosure: (() -> Void)?

    /// Mocked function for `deleteDeviceToken()`. Your opportunity to return a mocked value and check result of mock in test code.
    public func deleteDeviceToken() {
        mockCalled = true
        deleteDeviceTokenCallsCount += 1
        deleteDeviceTokenClosure?()
    }

    // MARK: - trackMetric

    /// Number of times the function was called.
    public private(set) var trackMetricCallsCount = 0
    /// `true` if the function was ever called.
    public var trackMetricCalled: Bool {
        trackMetricCallsCount > 0
    }

    /// The arguments from the *last* time the function was called.
    public private(set) var trackMetricReceivedArguments: (deliveryID: String, event: Metric, deviceToken: String)?
    /// Arguments from *all* of the times that the function was called.
    public private(set) var trackMetricReceivedInvocations: [(deliveryID: String, event: Metric, deviceToken: String)] = []
    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     */
    public var trackMetricClosure: ((String, Metric, String) -> Void)?

    /// Mocked function for `trackMetric(deliveryID: String, event: Metric, deviceToken: String)`. Your opportunity to return a mocked value and check result of mock in test code.
    public func trackMetric(deliveryID: String, event: Metric, deviceToken: String) {
        mockCalled = true
        trackMetricCallsCount += 1
        trackMetricReceivedArguments = (deliveryID: deliveryID, event: event, deviceToken: deviceToken)
        trackMetricReceivedInvocations.append((deliveryID: deliveryID, event: event, deviceToken: deviceToken))
        trackMetricClosure?(deliveryID, event, deviceToken)
    }

    // MARK: - didReceive

    #if canImport(UserNotifications)
    /// Number of times the function was called.
    public private(set) var didReceiveNotificationRequestCallsCount = 0
    /// `true` if the function was ever called.
    public var didReceiveNotificationRequestCalled: Bool {
        didReceiveNotificationRequestCallsCount > 0
    }

    /// The arguments from the *last* time the function was called.
    public private(set) var didReceiveNotificationRequestReceivedArguments: (request: UNNotificationRequest, contentHandler: (UNNotificationContent) -> Void)?
    /// Arguments from *all* of the times that the function was called.
    public private(set) var didReceiveNotificationRequestReceivedInvocations: [(request: UNNotificationRequest, contentHandler: (UNNotificationContent) -> Void)] = []
    /// Value to return from the mocked function.
    public var didReceiveNotificationRequestReturnValue: Bool!
    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     The closure has first priority to return a value for the mocked function. If the closure returns `nil`,
     then the mock will attempt to return the value for `didReceiveNotificationRequestReturnValue`
     */
    public var didReceiveNotificationRequestClosure: ((UNNotificationRequest, @escaping (UNNotificationContent) -> Void) -> Bool)?

    /// Mocked function for `didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void)`. Your opportunity to return a mocked value and check result of mock in test code.
    @discardableResult
    public func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void) -> Bool {
        mockCalled = true
        didReceiveNotificationRequestCallsCount += 1
        didReceiveNotificationRequestReceivedArguments = (request: request, contentHandler: contentHandler)
        didReceiveNotificationRequestReceivedInvocations.append((request: request, contentHandler: contentHandler))
        return didReceiveNotificationRequestClosure.map { $0(request, contentHandler) } ?? didReceiveNotificationRequestReturnValue
    }
    #endif

    // MARK: - serviceExtensionTimeWillExpire

    #if canImport(UserNotifications)
    /// Number of times the function was called.
    public private(set) var serviceExtensionTimeWillExpireCallsCount = 0
    /// `true` if the function was ever called.
    public var serviceExtensionTimeWillExpireCalled: Bool {
        serviceExtensionTimeWillExpireCallsCount > 0
    }

    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     */
    public var serviceExtensionTimeWillExpireClosure: (() -> Void)?

    /// Mocked function for `serviceExtensionTimeWillExpire()`. Your opportunity to return a mocked value and check result of mock in test code.
    public func serviceExtensionTimeWillExpire() {
        mockCalled = true
        serviceExtensionTimeWillExpireCallsCount += 1
        serviceExtensionTimeWillExpireClosure?()
    }
    #endif

    // MARK: - userNotificationCenter

    #if canImport(UserNotifications)
    /// Number of times the function was called.
    public private(set) var userNotificationCenter_withCompletionCallsCount = 0
    /// `true` if the function was ever called.
    public var userNotificationCenter_withCompletionCalled: Bool {
        userNotificationCenter_withCompletionCallsCount > 0
    }

    /// The arguments from the *last* time the function was called.
    public private(set) var userNotificationCenter_withCompletionReceivedArguments: (center: UNUserNotificationCenter, response: UNNotificationResponse, completionHandler: () -> Void)?
    /// Arguments from *all* of the times that the function was called.
    public private(set) var userNotificationCenter_withCompletionReceivedInvocations: [(center: UNUserNotificationCenter, response: UNNotificationResponse, completionHandler: () -> Void)] = []
    /// Value to return from the mocked function.
    public var userNotificationCenter_withCompletionReturnValue: Bool!
    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     The closure has first priority to return a value for the mocked function. If the closure returns `nil`,
     then the mock will attempt to return the value for `userNotificationCenter_withCompletionReturnValue`
     */
    public var userNotificationCenter_withCompletionClosure: ((UNUserNotificationCenter, UNNotificationResponse, @escaping () -> Void) -> Bool)?

    /// Mocked function for `userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void)`. Your opportunity to return a mocked value and check result of mock in test code.
    public func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) -> Bool {
        mockCalled = true
        userNotificationCenter_withCompletionCallsCount += 1
        userNotificationCenter_withCompletionReceivedArguments = (center: center, response: response, completionHandler: completionHandler)
        userNotificationCenter_withCompletionReceivedInvocations.append((center: center, response: response, completionHandler: completionHandler))
        return userNotificationCenter_withCompletionClosure.map { $0(center, response, completionHandler) } ?? userNotificationCenter_withCompletionReturnValue
    }
    #endif

    // MARK: - userNotificationCenter

    #if canImport(UserNotifications)
    /// Number of times the function was called.
    public private(set) var userNotificationCenterCallsCount = 0
    /// `true` if the function was ever called.
    public var userNotificationCenterCalled: Bool {
        userNotificationCenterCallsCount > 0
    }

    /// The arguments from the *last* time the function was called.
    public private(set) var userNotificationCenterReceivedArguments: (center: UNUserNotificationCenter, response: UNNotificationResponse)?
    /// Arguments from *all* of the times that the function was called.
    public private(set) var userNotificationCenterReceivedInvocations: [(center: UNUserNotificationCenter, response: UNNotificationResponse)] = []
    /// Value to return from the mocked function.
    public var userNotificationCenterReturnValue: CustomerIOParsedPushPayload?
    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     The closure has first priority to return a value for the mocked function. If the closure returns `nil`,
     then the mock will attempt to return the value for `userNotificationCenterReturnValue`
     */
    public var userNotificationCenterClosure: ((UNUserNotificationCenter, UNNotificationResponse) -> CustomerIOParsedPushPayload?)?

    /// Mocked function for `userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse)`. Your opportunity to return a mocked value and check result of mock in test code.
    public func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse) -> CustomerIOParsedPushPayload? {
        mockCalled = true
        userNotificationCenterCallsCount += 1
        userNotificationCenterReceivedArguments = (center: center, response: response)
        userNotificationCenterReceivedInvocations.append((center: center, response: response))
        return userNotificationCenterClosure.map { $0(center, response) } ?? userNotificationCenterReturnValue
    }
    #endif
}
