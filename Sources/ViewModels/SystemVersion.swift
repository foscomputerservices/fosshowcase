// SystemVersion.swift
//
// Created by David Hunt on 1/2/25
// Copyright 2025 FOS Computer Services, LLC
//
// Licensed under the Apache License, Version 2.0 (the  License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import FOSFoundation
import Foundation

public extension SystemVersion {
    // My application's current version
    static var currentApplicationVersion: Self { .v1_0 }

    // REVIEWED dgh
    // swiftlint:disable:next force_try
    static var v1_0: Self { .init(major: 1, minor: 0, patch: (try? Bundle.main.appleOSVersion.patch) ?? 0) }
}