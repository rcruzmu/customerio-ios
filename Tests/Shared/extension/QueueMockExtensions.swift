@testable import CioTracking
import CioCommon
import Foundation

public extension QueueMock {
    var deviceTokensDeleted: [String] {
        addTaskReceivedInvocations.map {
            ($0.data.value as? DeletePushNotificationQueueTaskData)?.deviceToken
        }.mapNonNil()
    }
}
