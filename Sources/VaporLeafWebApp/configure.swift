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

import FOSMVVM
import Foundation
import Leaf
import Vapor

// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    // register routes
    try routes(app)

    app.views.use(.leaf)
    app.http.server.configuration.port = 8082

    let viewsPath = Bundle.module
        .url(forResource: "LandingPageView", withExtension: "leaf", subdirectory: "Views")!
        .deletingLastPathComponent()
        .absoluteString
    app.leaf.configuration = .init(rootDirectory: viewsPath)
}
