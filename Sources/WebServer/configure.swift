// configure.swift
//
// Created by David Hunt on 9/10/24
// Copyright 2024 FOS Computer Services, LLC
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
import FOSMVVM
import Foundation
import Vapor

// configures your application
public func configure(_ app: Application) async throws {
    SystemVersion.setCurrentVersion(.currentApplicationVersion)
    SystemVersion.setMinimumSupportedVersion(.vInitial)

    try app.initYamlLocalization(
        bundle: Bundle.module,
        resourceDirectoryName: "Resources"
    )

    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    // register routes
    try routes(app)
}
