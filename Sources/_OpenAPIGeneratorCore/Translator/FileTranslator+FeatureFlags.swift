//===----------------------------------------------------------------------===//
//
// This source file is part of the SwiftOpenAPIGenerator open source project
//
// Copyright (c) 2023 Apple Inc. and the SwiftOpenAPIGenerator project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of SwiftOpenAPIGenerator project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//
import OpenAPIKit30

extension FileTranslator {

    /// Returns a Boolean value indicating whether an undocumented case should
    /// be generated for enums and oneOfs.
    var shouldGenerateUndocumentedCaseForEnumsAndOneOfs: Bool {
        if config.featureFlags.contains(.closedEnumsAndOneOfs) {
            return false
        }
        // The 0.1.x default.
        return true
    }
}
