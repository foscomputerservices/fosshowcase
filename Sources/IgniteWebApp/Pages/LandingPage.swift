// LandingPage.swift
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
import Ignite
import ViewModels

struct LandingPage: StaticLayout {
    var title: String {
        // REVIEWED dgh: Not being localized is considered an internal error
        // swiftlint:disable:next force_try
        try! viewModel.pageTitle.localizedString
    }

    let viewModel: LandingPageViewModel

    var body: some HTML {
        Text(viewModel.pageTitle)
            .font(.title1)
    }
}
