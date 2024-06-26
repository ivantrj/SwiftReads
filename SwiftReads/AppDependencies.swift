//
//  AppDependencies.swift
//  SwiftReads
//
//  Created by Ivan Trajanovski.
//

import SwiftData

/// All app dependencies should be defined in this file.
///
///
class AppDependencies {
    
    // MARK: Datasources
    lazy var userDefaultsDatasource: UserDefaultsDataSource = UserDefaultsDataSource()
    lazy var swiftDataDatasource: SwiftDataDatasource = SwiftDataDatasource()

    // MARK: Repositories
    lazy var userRepository: UserRepositoryProtocol = UserRepository(
        userDefaultsDatasource: userDefaultsDatasource
    )

    lazy var bookRepository: BookRepositoryProtocol = BookRepository(
        swiftDataDatasource: swiftDataDatasource
    )

    // MARK: Onboarding
    lazy var onboardingDependencies = OnboardingDependencies(
        userRepository: userRepository
    )

    // MARK: Dashboard
    lazy var dashboardDependencies = DashboardDependencies(
        bookRepository: bookRepository
    )
}
