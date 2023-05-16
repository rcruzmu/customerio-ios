// Generated using Sourcery 2.0.2 — https://github.com/krzysztofzablocki/Sourcery
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
import CioCommon
import Gist

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
 Class to easily create a mocked version of the `InAppEventListener` class.
 This class is equipped with functions and properties ready for you to mock!

 Note: This file is automatically generated. This means the mocks should always be up-to-date and has a consistent API.
 See the SDK documentation to learn the basics behind using the mock classes in the SDK.
 */
public class InAppEventListenerMock: InAppEventListener, Mock {
    /// If *any* interactions done on mock. `true` if any method or property getter/setter called.
    public var mockCalled: Bool = false //

    public init() {
        Mocks.shared.add(mock: self)
    }

    public func resetMock() {
        messageShownCallsCount = 0
        messageShownReceivedArguments = nil
        messageShownReceivedInvocations = []

        mockCalled = false // do last as resetting properties above can make this true
        messageDismissedCallsCount = 0
        messageDismissedReceivedArguments = nil
        messageDismissedReceivedInvocations = []

        mockCalled = false // do last as resetting properties above can make this true
        errorWithMessageCallsCount = 0
        errorWithMessageReceivedArguments = nil
        errorWithMessageReceivedInvocations = []

        mockCalled = false // do last as resetting properties above can make this true
        messageActionTakenCallsCount = 0
        messageActionTakenReceivedArguments = nil
        messageActionTakenReceivedInvocations = []

        mockCalled = false // do last as resetting properties above can make this true
    }

    // MARK: - messageShown

    /// Number of times the function was called.
    public private(set) var messageShownCallsCount = 0
    /// `true` if the function was ever called.
    public var messageShownCalled: Bool {
        messageShownCallsCount > 0
    }

    /// The arguments from the *last* time the function was called.
    public private(set) var messageShownReceivedArguments: InAppMessage?
    /// Arguments from *all* of the times that the function was called.
    public private(set) var messageShownReceivedInvocations: [InAppMessage] = []
    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     */
    public var messageShownClosure: ((InAppMessage) -> Void)?

    /// Mocked function for `messageShown(message: InAppMessage)`. Your opportunity to return a mocked value and check result of mock in test code.
    public func messageShown(message: InAppMessage) {
        mockCalled = true
        messageShownCallsCount += 1
        messageShownReceivedArguments = message
        messageShownReceivedInvocations.append(message)
        messageShownClosure?(message)
    }

    // MARK: - messageDismissed

    /// Number of times the function was called.
    public private(set) var messageDismissedCallsCount = 0
    /// `true` if the function was ever called.
    public var messageDismissedCalled: Bool {
        messageDismissedCallsCount > 0
    }

    /// The arguments from the *last* time the function was called.
    public private(set) var messageDismissedReceivedArguments: InAppMessage?
    /// Arguments from *all* of the times that the function was called.
    public private(set) var messageDismissedReceivedInvocations: [InAppMessage] = []
    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     */
    public var messageDismissedClosure: ((InAppMessage) -> Void)?

    /// Mocked function for `messageDismissed(message: InAppMessage)`. Your opportunity to return a mocked value and check result of mock in test code.
    public func messageDismissed(message: InAppMessage) {
        mockCalled = true
        messageDismissedCallsCount += 1
        messageDismissedReceivedArguments = message
        messageDismissedReceivedInvocations.append(message)
        messageDismissedClosure?(message)
    }

    // MARK: - errorWithMessage

    /// Number of times the function was called.
    public private(set) var errorWithMessageCallsCount = 0
    /// `true` if the function was ever called.
    public var errorWithMessageCalled: Bool {
        errorWithMessageCallsCount > 0
    }

    /// The arguments from the *last* time the function was called.
    public private(set) var errorWithMessageReceivedArguments: InAppMessage?
    /// Arguments from *all* of the times that the function was called.
    public private(set) var errorWithMessageReceivedInvocations: [InAppMessage] = []
    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     */
    public var errorWithMessageClosure: ((InAppMessage) -> Void)?

    /// Mocked function for `errorWithMessage(message: InAppMessage)`. Your opportunity to return a mocked value and check result of mock in test code.
    public func errorWithMessage(message: InAppMessage) {
        mockCalled = true
        errorWithMessageCallsCount += 1
        errorWithMessageReceivedArguments = message
        errorWithMessageReceivedInvocations.append(message)
        errorWithMessageClosure?(message)
    }

    // MARK: - messageActionTaken

    /// Number of times the function was called.
    public private(set) var messageActionTakenCallsCount = 0
    /// `true` if the function was ever called.
    public var messageActionTakenCalled: Bool {
        messageActionTakenCallsCount > 0
    }

    /// The arguments from the *last* time the function was called.
    public private(set) var messageActionTakenReceivedArguments: (message: InAppMessage, actionValue: String, actionName: String)?
    /// Arguments from *all* of the times that the function was called.
    public private(set) var messageActionTakenReceivedInvocations: [(message: InAppMessage, actionValue: String, actionName: String)] = []
    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     */
    public var messageActionTakenClosure: ((InAppMessage, String, String) -> Void)?

    /// Mocked function for `messageActionTaken(message: InAppMessage, actionValue: String, actionName: String)`. Your opportunity to return a mocked value and check result of mock in test code.
    public func messageActionTaken(message: InAppMessage, actionValue: String, actionName: String) {
        mockCalled = true
        messageActionTakenCallsCount += 1
        messageActionTakenReceivedArguments = (message: message, actionValue: actionValue, actionName: actionName)
        messageActionTakenReceivedInvocations.append((message: message, actionValue: actionValue, actionName: actionName))
        messageActionTakenClosure?(message, actionValue, actionName)
    }
}

/**
 Class to easily create a mocked version of the `InAppProvider` class.
 This class is equipped with functions and properties ready for you to mock!

 Note: This file is automatically generated. This means the mocks should always be up-to-date and has a consistent API.
 See the SDK documentation to learn the basics behind using the mock classes in the SDK.
 */
internal class InAppProviderMock: InAppProvider, Mock {
    /// If *any* interactions done on mock. `true` if any method or property getter/setter called.
    internal var mockCalled: Bool = false //

    internal init() {
        Mocks.shared.add(mock: self)
    }

    public func resetMock() {
        initializeCallsCount = 0
        initializeReceivedArguments = nil
        initializeReceivedInvocations = []

        mockCalled = false // do last as resetting properties above can make this true
        setProfileIdentifierCallsCount = 0
        setProfileIdentifierReceivedArguments = nil
        setProfileIdentifierReceivedInvocations = []

        mockCalled = false // do last as resetting properties above can make this true
        clearIdentifyCallsCount = 0

        mockCalled = false // do last as resetting properties above can make this true
        setRouteCallsCount = 0
        setRouteReceivedArguments = nil
        setRouteReceivedInvocations = []

        mockCalled = false // do last as resetting properties above can make this true
    }

    // MARK: - initialize

    /// Number of times the function was called.
    internal private(set) var initializeCallsCount = 0
    /// `true` if the function was ever called.
    internal var initializeCalled: Bool {
        initializeCallsCount > 0
    }

    /// The arguments from the *last* time the function was called.
    internal private(set) var initializeReceivedArguments: (siteId: String, region: Region, delegate: GistDelegate)?
    /// Arguments from *all* of the times that the function was called.
    internal private(set) var initializeReceivedInvocations: [(siteId: String, region: Region, delegate: GistDelegate)] = []
    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     */
    internal var initializeClosure: ((String, Region, GistDelegate) -> Void)?

    /// Mocked function for `initialize(siteId: String, region: Region, delegate: GistDelegate)`. Your opportunity to return a mocked value and check result of mock in test code.
    internal func initialize(siteId: String, region: Region, delegate: GistDelegate) {
        mockCalled = true
        initializeCallsCount += 1
        initializeReceivedArguments = (siteId: siteId, region: region, delegate: delegate)
        initializeReceivedInvocations.append((siteId: siteId, region: region, delegate: delegate))
        initializeClosure?(siteId, region, delegate)
    }

    // MARK: - setProfileIdentifier

    /// Number of times the function was called.
    internal private(set) var setProfileIdentifierCallsCount = 0
    /// `true` if the function was ever called.
    internal var setProfileIdentifierCalled: Bool {
        setProfileIdentifierCallsCount > 0
    }

    /// The arguments from the *last* time the function was called.
    internal private(set) var setProfileIdentifierReceivedArguments: String?
    /// Arguments from *all* of the times that the function was called.
    internal private(set) var setProfileIdentifierReceivedInvocations: [String] = []
    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     */
    internal var setProfileIdentifierClosure: ((String) -> Void)?

    /// Mocked function for `setProfileIdentifier(_ id: String)`. Your opportunity to return a mocked value and check result of mock in test code.
    internal func setProfileIdentifier(_ id: String) {
        mockCalled = true
        setProfileIdentifierCallsCount += 1
        setProfileIdentifierReceivedArguments = id
        setProfileIdentifierReceivedInvocations.append(id)
        setProfileIdentifierClosure?(id)
    }

    // MARK: - clearIdentify

    /// Number of times the function was called.
    internal private(set) var clearIdentifyCallsCount = 0
    /// `true` if the function was ever called.
    internal var clearIdentifyCalled: Bool {
        clearIdentifyCallsCount > 0
    }

    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     */
    internal var clearIdentifyClosure: (() -> Void)?

    /// Mocked function for `clearIdentify()`. Your opportunity to return a mocked value and check result of mock in test code.
    internal func clearIdentify() {
        mockCalled = true
        clearIdentifyCallsCount += 1
        clearIdentifyClosure?()
    }

    // MARK: - setRoute

    /// Number of times the function was called.
    internal private(set) var setRouteCallsCount = 0
    /// `true` if the function was ever called.
    internal var setRouteCalled: Bool {
        setRouteCallsCount > 0
    }

    /// The arguments from the *last* time the function was called.
    internal private(set) var setRouteReceivedArguments: String?
    /// Arguments from *all* of the times that the function was called.
    internal private(set) var setRouteReceivedInvocations: [String] = []
    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     */
    internal var setRouteClosure: ((String) -> Void)?

    /// Mocked function for `setRoute(_ route: String)`. Your opportunity to return a mocked value and check result of mock in test code.
    internal func setRoute(_ route: String) {
        mockCalled = true
        setRouteCallsCount += 1
        setRouteReceivedArguments = route
        setRouteReceivedInvocations.append(route)
        setRouteClosure?(route)
    }
}

/**
 Class to easily create a mocked version of the `MessagingInAppInstance` class.
 This class is equipped with functions and properties ready for you to mock!

 Note: This file is automatically generated. This means the mocks should always be up-to-date and has a consistent API.
 See the SDK documentation to learn the basics behind using the mock classes in the SDK.
 */
public class MessagingInAppInstanceMock: MessagingInAppInstance, Mock {
    /// If *any* interactions done on mock. `true` if any method or property getter/setter called.
    public var mockCalled: Bool = false //

    public init() {
        Mocks.shared.add(mock: self)
    }

    public func resetMock() {
        initializeCallsCount = 0

        mockCalled = false // do last as resetting properties above can make this true
        initializeEventListenerCallsCount = 0
        initializeEventListenerReceivedArguments = nil
        initializeEventListenerReceivedInvocations = []

        mockCalled = false // do last as resetting properties above can make this true
        initializeOrganizationIdCallsCount = 0
        initializeOrganizationIdReceivedArguments = nil
        initializeOrganizationIdReceivedInvocations = []

        mockCalled = false // do last as resetting properties above can make this true
    }

    // MARK: - initialize

    /// Number of times the function was called.
    public private(set) var initializeCallsCount = 0
    /// `true` if the function was ever called.
    public var initializeCalled: Bool {
        initializeCallsCount > 0
    }

    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     */
    public var initializeClosure: (() -> Void)?

    /// Mocked function for `initialize()`. Your opportunity to return a mocked value and check result of mock in test code.
    public func initialize() {
        mockCalled = true
        initializeCallsCount += 1
        initializeClosure?()
    }

    // MARK: - initialize

    /// Number of times the function was called.
    public private(set) var initializeEventListenerCallsCount = 0
    /// `true` if the function was ever called.
    public var initializeEventListenerCalled: Bool {
        initializeEventListenerCallsCount > 0
    }

    /// The arguments from the *last* time the function was called.
    public private(set) var initializeEventListenerReceivedArguments: InAppEventListener?
    /// Arguments from *all* of the times that the function was called.
    public private(set) var initializeEventListenerReceivedInvocations: [InAppEventListener] = []
    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     */
    public var initializeEventListenerClosure: ((InAppEventListener) -> Void)?

    /// Mocked function for `initialize(eventListener: InAppEventListener)`. Your opportunity to return a mocked value and check result of mock in test code.
    public func initialize(eventListener: InAppEventListener) {
        mockCalled = true
        initializeEventListenerCallsCount += 1
        initializeEventListenerReceivedArguments = eventListener
        initializeEventListenerReceivedInvocations.append(eventListener)
        initializeEventListenerClosure?(eventListener)
    }

    // MARK: - initialize

    /// Number of times the function was called.
    public private(set) var initializeOrganizationIdCallsCount = 0
    /// `true` if the function was ever called.
    public var initializeOrganizationIdCalled: Bool {
        initializeOrganizationIdCallsCount > 0
    }

    /// The arguments from the *last* time the function was called.
    public private(set) var initializeOrganizationIdReceivedArguments: String?
    /// Arguments from *all* of the times that the function was called.
    public private(set) var initializeOrganizationIdReceivedInvocations: [String] = []
    /**
     Set closure to get called when function gets called. Great way to test logic or return a value for the function.
     */
    public var initializeOrganizationIdClosure: ((String) -> Void)?

    /// Mocked function for `initialize(organizationId: String)`. Your opportunity to return a mocked value and check result of mock in test code.
    @available(*, deprecated, message: "Parameter organizationId no longer being used. Remove the parameter from your function call to migrate to new function.")
    public func initialize(organizationId: String) {
        mockCalled = true
        initializeOrganizationIdCallsCount += 1
        initializeOrganizationIdReceivedArguments = organizationId
        initializeOrganizationIdReceivedInvocations.append(organizationId)
        initializeOrganizationIdClosure?(organizationId)
    }
}

// swiftlint:enable all
